Rails.application.routes.draw do
  get 'jp/index'

  devise_for :users
  root 'jp#index'
  resources :products, only: [:show, :index,:new ,:create]
  resources :users, only: [:edit] do
    member do
      get 'identification'
      get 'profile'
      get 'logout'
    end
  end
end
