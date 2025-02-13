# acme_product_inventory_api
Basic app for keeping track of an inventory

## Instructions for setting up and running the app locally

1. Go to [GitHub page](https://github.com/jimenezmiguela/acme_product_inventory_api) obtain link at green 'Code' button and see repo.
2. In terminal, enter ``` git clone https://github.com/jimenezmiguela/.git ``` and ``` cd acme_product_inventory_api ```.
3. Enter ``` bundle install ```.
4. If you are asked to migrate database: enter ``` bin/rails db:migrate ```.
4. Enter ``` bin/rails s ``` to run server.
5. Enter ``` http://localhost:3000 ``` at browser to see app.

## Testing

Local:
1. Local Swagger API documentation: Enter ``` http://localhost:3000/swagger/index.html ``` at browser.
2. Local Rspec testing: enter ``` bundle exec rspec ```.
3. Local Front end rails tests: enter  ``` rails test ```.

Cloud:
4. Render Swagger API documentation: Enter ``` https://acme-product-inventory-api.onrender.com/swagger/index.html ``` at browser.

## App summary
Full-stack app with both client and server code in a more monolithic fashion (using Rails for both front-end and API):

1. Keeps track of at least one product.
2. Manages the quantities of the product(s). There is a way to increase and decrease the number of items of the product(s) in the inventory.
3. Sends an email if the quantity of a product hits zero.
4. Full-stack app with both client and server code.
5. Working with a Postgres database (Local and Cloud).
6. Rails 7.1 API.
7. Allows the user to determine what kinds of products the inventory tracks.
10. Bootstrap GUI.
11. Hosted in a cloud environment. (https://acme-product-inventory-api.onrender.com)
