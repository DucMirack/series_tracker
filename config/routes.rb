Rails.application.routes.draw do
  devise_for :users
  root to: 'series#index'
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :episodes do
  	get :is_seen
  end
  resources :series
end
