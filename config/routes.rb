Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  mount Avo::Engine, at: '/products'
  root to: 'avo/products#index'
end
