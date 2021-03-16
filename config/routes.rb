Rails.application.routes.draw do
  root to: "pages#index"
  devise_for :users
  get "my_portfolio", to: "users#my_portfolio"
  get "search_stock", to: "stocks#search"
end
