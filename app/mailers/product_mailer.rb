class ProductMailer < ApplicationMailer
  default from: ENV['EMAIL_USERNAME']

  def low_inventory_email(product)
    @product = product
    mail(to: ['EMAIL_USERNAME2'], subject: "Hello. This is ACME Inventory. #{product.name} is out of stock")
  end
end
