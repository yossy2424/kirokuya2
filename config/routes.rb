Rails.application.routes.draw do
  devise_for :users
  resources :toppages, only: [:index]
  root to: 'records#index'
  resources :records, only: [:index, :new, :create] do
    resources :comments, only: [:create]
    resources :calenders, only: [:index]
    resources :graphs, only: [:index]
  end
end