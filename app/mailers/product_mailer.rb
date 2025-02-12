class ProductMailer < ApplicationMailer
  default from: 'jimenezmiguela7@gmail.com'

  def low_inventory_email(product)
    @product = product
    mail(to: 'jimenezmiguela@yahoo.com', subject: "Hello. This is ACME Inventory. #{product.name} is out of stock")
  end
end
