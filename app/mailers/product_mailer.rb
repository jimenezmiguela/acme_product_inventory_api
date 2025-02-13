class ProductMailer < ApplicationMailer
  default from: ENV['EMAIL_USERNAME']

  def low_inventory_email(product)
    @product = product
    mail(to: ['SECOND_EMAIL_USERNAME'], subject: "Hello. This is ACME Inventory. #{product.name} is out of stock")
  end
end
