Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/swagger'
  mount Rswag::Api::Engine => '/swagger'

  # API routes (JSON responses)
  namespace :api do
    resources :products, only: %i[index show create update destroy] do
      member do
        patch :increase_quantity
        patch :decrease_quantity
      end
    end
  end

  # Non-API routes for views (HTML responses)
  resources :products do
    member do
      post 'update_quantity'
    end
  end

  # Root route for the page showing products with ability to CRUD
  root to: 'products#index'

  get '/favicon.ico', to: proc { [204, {}, ['']] }
end
