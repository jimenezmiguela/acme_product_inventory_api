require 'rails_helper'

RSpec.describe Product, type: :model do
  it "creates a product" do
    product = FactoryBot.create(:product)
    expect(product).to be_persisted
  end

  it "is invalid without a name" do
    product = FactoryBot.build(:product, name: nil)
    expect(product).not_to be_valid
  end

  it "is invalid if quantity is not an integer" do
    product = FactoryBot.build(:product, quantity: 'string')
    expect(product).not_to be_valid
  end
end
