Rails.application.routes.draw do
  resources :products
  resources :dashboard2
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "dashboard2#index"



end
