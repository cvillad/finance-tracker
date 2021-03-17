Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  root to: "pages#index"
  devise_for :users
  get "my_portfolio", to: "users#my_portfolio"
  get "friends", to: "users#friends"
  get "search_stock", to: "stocks#search"
end
