require 'swagger_helper'

RSpec.describe 'Products API', type: :request do
  # You may need to create test data (using FactoryBot or fixtures)
  before do
    Product.create(name: 'Test Product 1', quantity: 10)
    Product.create(name: 'Test Product 2', quantity: 20)
  end

  path '/api/products' do
    get 'Retrieves all products' do
      tags 'Products'
      produces 'application/json'

      response '200', 'successful' do
        run_test! do |response|
          # Ensure the response body contains products and has a 200 status
          expect(response.status).to eq(200)
          expect(response.body).to include('Test Product 1')
          expect(response.body).to include('Test Product 2')
        end
      end
    end
  end
end
#
