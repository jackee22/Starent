Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/my_stars', to: 'stars#mystars', as: :my_stars
  resources :stars do
    resources :reviews, only: [ :new, :create, :destroy]
    resources :reservations, only: [ :new, :create, :update]
  end

  resources :reviews, only: [:index]
  resources :reservations, only: [:index, :edit, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
