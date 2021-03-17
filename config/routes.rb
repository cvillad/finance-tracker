Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]
  root to: "pages#index"
  devise_for :users
  resources :users, only: [:show]
  get "my_portfolio", to: "users#my_portfolio"
  get "my_friends", to: "users#my_friends"
  get "search_friend", to: "users#search"
  get "search_stock", to: "stocks#search"
end
