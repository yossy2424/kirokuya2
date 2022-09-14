Rails.application.routes.draw do
  devise_for :users
  root to: 'records#index'
  resources :records
  resources :calenders, only: [:index]do
  root to: 'calenders#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
end