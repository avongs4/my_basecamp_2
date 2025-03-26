Rails.application.routes.draw do
  root "welcome#index"  # Set homepage to welcome page

  devise_for :users  # Devise authentication routes

  resources :projects  # Standard CRUD routes for projects
  resources :users, only: [:index, :edit, :update] # Manage users (optional)

  # Additional custom routes (if needed)
end
