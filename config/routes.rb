Rails.application.routes.draw do
  devise_for :users
  root to: 'records#index'
  resources :records, only: [:index, :new, :create] do
  resources :calenders, only: [:index]
  resources :graphs, only: [:index]
end
end