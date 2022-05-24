Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :stars do
    resources :reviews, only: [ :new, :create, :destroy]
    resources :reservations, only: [ :new, :create, :update, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
