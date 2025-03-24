Rails.application.routes.draw do
  root "users#new"  # This makes the signup page load first
  resources :users, only: [:index, :new, :create]
end
