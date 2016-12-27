Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  devise_for :users
  get 'pages/index'
  root 'pages#index'
  get 'pages/show'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships,       only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
