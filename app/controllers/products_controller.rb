class ProductsController < ActionController::Base
  layout "application"

  before_action :set_product, only: %i[show edit update destroy increase_quantity decrease_quantity]

  def index
    @products = Product.all
  end

  def show

  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "Product '#{@product.name}' created successfully."
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @product.update(product_params)
      if @product.quantity == 0
        ProductMailer.low_inventory_email(@product).deliver_later
        flash[:notice] = "Product updated successfully. Sending an email. The quantity of '#{@product.name}' hit zero."
      else
        flash[:notice] = "Product '#{@product.name}' updated successfully."
      end
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: "Product '#{@product.name}' deleted successfully."
  end

  def increase_quantity
    @product.increment!(:quantity)
    render json: { quantity: @product.quantity }
  end

  def decrease_quantity
    @product.decrement!(:quantity)
    render json: { quantity: @product.quantity }
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :quantity)
  end
end
