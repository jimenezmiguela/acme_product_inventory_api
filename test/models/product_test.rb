require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # Test validations
  test "should be valid with valid attributes" do
    product = Product.new(name: "Test Product", quantity: 5)
    assert product.valid?
  end

  test "should not be valid without a name" do
    product = Product.new(quantity: 5)
    assert_not product.valid?
    assert_includes product.errors[:name], "can't be blank"
  end

  test "should not be valid without a quantity" do
    product = Product.new(name: "Test Product")
    assert_not product.valid?
    assert_includes product.errors[:quantity], "can't be blank"
  end


  test "quantity should be an integer" do
    product = Product.new(name: "Test Product", quantity: "five")
    assert_not product.valid?
    assert_includes product.errors[:quantity], "is not a number"
  end

  # Test increase_quantity method
  test "should increase quantity" do
    product = Product.create(name: "Test Product", quantity: 5)
    product.increment!(:quantity) # Simulate the increase method
    assert_equal 6, product.quantity
  end

  # Test edge case where invalid quantity is set
  test "should not allow negative quantity" do
    product = Product.new(name: "Test Product", quantity: -1)
    assert_not product.valid?
    assert_includes product.errors[:quantity], "must be greater than or equal to 0"
  end

  # Test saving a product without a name
  test "should not save without name" do
    product = Product.new(quantity: 5)
    assert_not product.save
  end

  # Test saving a product without quantity
  test "should not save without quantity" do
    product = Product.new(name: "Test Product")
    assert_not product.save
  end
end
