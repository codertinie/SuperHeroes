Rails.application.routes.draw do
  resources :hero_powers, only: :create
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
