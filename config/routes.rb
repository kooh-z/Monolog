Rails.application.routes.draw do
  get 'pages/home'

  devise_for :users
  get 'home/index'
  root 'home#index'
  resources :posts, defaults: { format: 'json' }, only: %i(index show create)
end
