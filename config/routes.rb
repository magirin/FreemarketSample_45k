Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  get 'jp/index'
  root 'jp#index'
  root 'products#index'
  resources :products, only: [:show, :index, :create, :new]
  resources :users, only: [:edit] do
    member do
      get 'identification'
      get 'profile'
      get 'logout'
    end
  end
end
