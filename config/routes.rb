Rails.application.routes.draw do
  get 'chatview/index'

  devise_for :users
  get 'home/index'
  root 'home#index'
end
