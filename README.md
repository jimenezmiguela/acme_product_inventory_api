# acme_product_inventory_api
Basic app for keeping track of an inventory

## Instructions for setting up and running the app locally

1. Go to [GitHub page](https://github.com/jimenezmiguela/acme_product_inventory_api) obtain link at green 'Code' button.
2. In terminal, enter ``` git clone https://github.com/jimenezmiguela/.git ``` and ``` cd acme_product_inventory_api ```.
3. Enter ``` bundle install ```.
4. Enter ``` bin/rails s ``` to run server.
5. Enter ``` http://localhost:3000 ``` at browser to see app.
6. Enter ``` http://localhost:3000/swagger/index.html ``` to see Swagger API documentation.

## App summary
Full-stack app with both client and server code in a more monolithic fashion (using Rails for both front-end and API):
    1. Keeps track of at least one product.
    2. Manages the quantities of the product(s). There is a way to increase and decrease the number of items of the product(s) in the inventory.
    3. Sends an email if the quantity of a product hits zero.
    4. Full-stack app with both client and server code.
    5. Working with a Postgres database.
    6. Rails 7.1 API.
    7. Allows the user to determine what kinds of products the inventory tracks.
    8. Swagger testing/linting:
      a. Local swagger api:
      b. Render: https://acme-product-inventory-api.onrender.com/swagger/index.html
      c. Local Front end rails tests: Run rails test
    5. Bootstrap GUI.
    6. Hosted in a cloud environment. (https://acme-product-inventory-api.onrender.com)
