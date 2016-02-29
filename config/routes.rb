Rails.application.routes.draw do

  resources :books do
  	resources :notes, only: [:create, :destroy]
  end

  resources :sessions, only: [:new, :create, :destroy]

  root to: 'books#index'
end
