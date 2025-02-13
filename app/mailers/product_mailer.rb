class ProductMailer < ApplicationMailer
  default from: ENV['EMAIL_USERNAME']  # Uses the email address stored in the environment variable

  def low_inventory_email(product)
    @product = product
    # Use ENV to dynamically reference the third email address
    mail(to: [ENV['EMAIL_USERNAME'], ENV['SECOND_EMAIL_USERNAME'], ENV['THIRD_EMAIL_USERNAME'], ENV['FOURTH_EMAIL_USERNAME']], subject: "Hello. This is ACME Inventory. #{product.name} is out of stock")
  end
end
