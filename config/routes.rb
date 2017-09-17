Rails.application.routes.draw do
  devise_for :users

  resource :account,   only: [:show, :update]
  resource :wizards,   only: [:show, :update]

  resources :deals,    only: [:index]
  resources :requests, only: [:index, :new]
  resources :products, only: [:show] do
    get :deal, on: :member
  end

  # Root to explore page
  root to: 'home#index'
end
