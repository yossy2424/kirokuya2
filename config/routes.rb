Rails.application.routes.draw do
  devise_for :users
  root to: 'toppages#index'
  resources :toppages, only: [:index]
  resources :records, only: [:index, :new, :create] do
  resources :calenders, only: [:index]
  resources :graphs, only: [:index]
end
end