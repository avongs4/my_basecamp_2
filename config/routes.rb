
Rails.application.routes.draw do
  devise_for :users
  root "users#new"  # Keep sign-up as homepage
  
  resources :users, only: [:index, :new, :create]

  # Add authentication routes
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
