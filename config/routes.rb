Rails.application.routes.draw do
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"
  delete "logout", to: "sessions#destroy"
  resources :confirmations, only: [:create, :edit, :new], param: :confirmation_token
  resources :passwords, only: [:create, :edit, :new, :update], param: :password_reset_token
end
