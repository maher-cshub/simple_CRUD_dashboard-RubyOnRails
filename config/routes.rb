Rails.application.routes.draw do

  devise_for :admins, controllers: {registrations:'admin/devise/registrations', sessions: "admin/devise/sessions"}
  # devise_for :users
  devise_for :users, controllers: {registrations:'user/devise/registrations', sessions: "user/devise/sessions"}

  namespace :admin do
    resources :dashboard2
    root to: "dashboard2#index"
  end

  namespace :user do
    resources :products
    root to: "products#index"
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
