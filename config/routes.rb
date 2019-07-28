Rails.application.routes.draw do
  get 'purchase/index'

  get 'purchase/done'

  get 'card/new'

  get 'card/show'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  get 'jp/index'
  root 'jp#index'
  resources :products, only: [:show, :index, :create, :new] do
    resources :product_images, only: [:create, :new]
  end
  devise_scope :user do
    root 'users/registrations#new'
  end

  resources :users, only: [:edit] do
    member do
      get 'identification'
      get 'profile'
      get 'logout'
    end
  end

  resources :sold_products do
    member do
      get 'buy'
    end
    collection do
      post 'pay/:id' => 'sold_products#pay', as: 'pay'
    end
  end

  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end

  resources :purchase, only: [:index] do
    collection do
      get 'index', to: 'purchase#index'
      post 'pay', to: 'purchase#pay'
      get 'done', to: 'purchase#done'
    end
  end

end
