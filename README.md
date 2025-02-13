# acme_product_inventory_api
Basic app for keeping track of an inventory

Full-stack app with both client and server code in a more monolithic fashion (using Rails for both front-end and API):
    1. Keeps track of at least one product.
    2. Manages the quantities of the product(s). There is a way to increase and decrease the number of items of the product(s) in the inventory.
    3. Sends an email if the quantity of a product hits zero.
    4. Full-stack app with both client and server code.
    5. Working with a Postgres database.
    6. Rails 7.1 API.
    7. Allows the user to determine what kinds of products the inventory tracks.
    8. Swagger testing/linting:
      a. Local swagger api: http://localhost:3000/swagger/index.html
      b. Render: https://acme-product-inventory-api.onrender.com/swagger/index.html
      c. Local Front end rails tests: Run rails test
    5. Bootstrap GUI.
    6. Hosted in a cloud environment. (https://acme-product-inventory-api.onrender.com)
