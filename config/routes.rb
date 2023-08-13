Rails.application.routes.draw do
  get 'welcome/new'
  get 'welcome/create'
  devise_for :admins
  # devise_for :users
  devise_for :users ,controllers: {}
  resources :products
  resources :dashboard2
  resources :welcome do
    collection do
      get :login
      get :signup
    end
  end

  # namespace :admin do

  # root ''
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

end
