# spec/factories/products.rb
FactoryBot.define do
  factory :product do
    name { "Sample Product" }
    quantity { 10 }
  end
end
