Rails.application.routes.draw do
  devise_for :users
  
  root "projects#index"
  
  resources :users, only: [:index, :new, :create, :edit, :update]
  resources :projects

  # Remove manual auth routes if using Devise, or keep them if you have a custom SessionsController.
end
