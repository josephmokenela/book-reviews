Rails.application.routes.draw do

  resources :books do
  	resources :notes, only: [:create, :destroy]
  end

  resources :sessions, only: [:new, :create, :destroy]

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"

  root to: 'books#index'
end
