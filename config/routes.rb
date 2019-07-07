Rails.application.routes.draw do
  get 'jp/index'


  root 'products#new'
  resources :products, only: [:show, :index,:new ,:create]
  resources :users, only: [:edit] do
    member do
      get 'identification'
      get 'profile'
      get 'logout'
    end
  end
end
