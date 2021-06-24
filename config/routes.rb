Rails.application.routes.draw do
  resources :users, only: [:show] do
    resources :items, only: [:index, :show, :create]
  end

  resources :items, only: [:index]
end

# Prefix Verb URI Pattern                            Controller#Action

# user_items GET  /users/:user_id/items(.:format)     items#index
#           POST  /users/:user_id/items(.:format)     items#create
#  user_item GET  /users/:user_id/items/:id(.:format) items#show
#       user GET  /users/:id(.:format)                users#show
#      items GET  /items(.:format)                    items#index