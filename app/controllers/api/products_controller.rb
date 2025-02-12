module Api
  class ProductsController < Api::ApplicationController
    before_action :set_product, only: %i[show update destroy increase_quantity decrease_quantity]

    def index
      @products = Product.all
      render json: @products, status: :ok
    end

    def show
      render json: @product, status: :ok
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        render json: @product, status: :created
      else
        render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def update
      if @product.update(product_params)
        if @product.quantity == 0
          ProductMailer.low_inventory_email(@product).deliver_later
        end
        render json: @product, status: :ok
      else
        render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      @product.destroy
      head :no_content
    end

    def increase_quantity
      @product.increment!(:quantity)
      render json: { quantity: @product.quantity }, status: :ok
    end

    def decrease_quantity
      @product.decrement!(:quantity)
      render json: { quantity: @product.quantity }, status: :ok
    end

    private

    def set_product
      @product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Product not found' }, status: :not_found
    end

    def product_params
      params.require(:product).permit(:name, :description, :quantity)
    end
  end
end
