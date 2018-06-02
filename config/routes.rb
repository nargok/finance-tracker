Rails.application.routes.draw do
  devise_for :users, :controller => {:registrations => 'users/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#my_portfolio'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  resources 'user_stocks', only: [:create, :destroy]
  get 'my_friends', to: 'users#my_friends'
  resources :users, only: [:show]
  resources :friendships
  get 'search_friends', to: 'user#search'
end
