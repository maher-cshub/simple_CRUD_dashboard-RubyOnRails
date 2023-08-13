Rails.application.routes.draw do
  get 'welcome/new'
  get 'welcome/create'
  devise_for :admins, controllers: {registrations:'user/registrations', sessions: "user/sessions"}
  # devise_for :users
  devise_for :users, controllers: {registrations:'user/registrations', sessions: "user/sessions"}
  resources :products
  resources :dashboard2

  namespace :admin do
    resources :dashboard2
    resources :products
    root to: "dashboard2#index"
  end



  ## resources :welcome do
  ##collection do
  ## get :login
  ##  get :signup
  ##end
  ##end

  # namespace :admin do

  # root ''
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

end
