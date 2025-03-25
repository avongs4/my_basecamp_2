Rails.application.routes.draw do
  root "welcome#index"  # Set the default homepage

  # get "welcome/index"
  devise_for :users
  
  root "projects#index"
  
  resources :users, only: [:index, :new, :create, :edit, :update]
  resources :projects

  # Remove manual auth routes if using Devise, or keep them if you have a custom SessionsController.
end
