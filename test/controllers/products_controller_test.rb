require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one) # Assuming you have a fixture or factory named 'one'
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count', 1) do
      post products_url, params: { product: { name: 'Test Product', quantity: 10 } }
    end
    assert_redirected_to products_path
  end

  test "should not create product with invalid attributes" do
    assert_no_difference('Product.count') do
      post products_url, params: { product: { name: '', quantity: nil } }
    end
    assert_response :success
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { name: 'Updated Product', quantity: 20 } }
    assert_redirected_to products_path
  end

  test "should not update product with invalid attributes" do
    patch product_url(@product), params: { product: { name: '', quantity: nil } }
    assert_response :success
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end
    assert_redirected_to products_path
  end
end
