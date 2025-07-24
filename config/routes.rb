Rails.application.routes.draw do
  devise_for :users
  root 'animals#index'

  resources :animals do
    resources :messages, only: [:create]
  end
  resources :rooms, only: [:show] do
    resources :messages, only: [:create]
  end
end