Rails.application.routes.draw do
  devise_for :users
  resources :comments

root to: 'posts#index'

  resources :posts do
    resources :comments, only: [:create]
  end
end