# acme_product_inventory_api
Basic app for keeping track of an inventory

## Instructions for setting up and running the app locally

1. Go to [GitHub page](https://github.com/jimenezmiguela/acme_product_inventory_api) obtain link at green 'Code' button and see repo.
2. In terminal, enter ``` git clone https://github.com/jimenezmiguela/.git ``` and ``` cd acme_product_inventory_api ```.
3. Enter ``` bundle install ```.
4. Create ``` .env ``` file at app root and save credentials received.
5. Create ``` master.key ``` file at config/master.key (save as above).
6. Enter ``` bin/rails s ``` to run server.
7. View at local URL: [Local acme_product_inventory_api](http://localhost:3000).

## Testing

### Local Swagger API testing:
1. Go to local Swagger API documentation URL: [Local Swagger API](http://localhost:3000/swagger/index.html).
2. Make sure ```http://localhost:3000 - Local development server``` is selected from ```Servers```.
3. Go to ```GET /api/products
Retrieves all products```
4. Click on ```Try it out```
5. Click on ```Execute```

### Rspec testing
Local Rspec testing: enter ``` bundle exec rspec ```.

### Local testing
Local Front end rails tests: enter  ``` rails test ```.

### Cloud (Render) Swagger API testing:
1. (Cloud) Render Swagger API documentation: [Cloud Swagger API](https://acme-product-inventory-api.onrender.com/swagger/index.html).
2. Make sure ```https://acme-product-inventory-api.onrender.com - Production server (Render)``` is selected from ```Servers```.
3. Go to ```GET /api/products
Retrieves all products```
4. Click on ```Try it out```
5. Click on ```Execute```

## App summary
Full-stack app with both client and server code in a single application (using Rails for both front-end and API):

1. Keeps track of at least one product.
2. Manages the quantities of the product(s). There is a way to increase and decrease the number of items of the product(s) in the inventory.
3. Sends an email if the quantity of a product hits zero.
4. Full-stack app with both client and server code.
5. Working with a Postgres database (local and cloud).
6. Rails 7.1 API.
7. Allows the user to determine what kinds of products the inventory tracks.
8. Bootstrap GUI Rails views front-end
9. Hosted in a cloud environment: [Cloud acme_product_inventory_api](https://acme-product-inventory-api.onrender.com).
