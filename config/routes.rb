Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.htm
  # resources with object "item", adn avaliable actions - "index" and "create" and "destroy"
  namespace :api do
    namespace :v1 do
      resources :items, only: [:index, :create, :destroy]
    end
  end
end
