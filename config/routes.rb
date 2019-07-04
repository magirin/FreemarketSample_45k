Rails.application.routes.draw do
  root 'products#index'
  resources :products, only: [:show, :index, :create]
  resources :users, only: [:edit] do
    member do
      get 'identification'
      get 'profile'
      get 'logout'
    end
  end
end
