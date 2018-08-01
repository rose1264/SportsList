Rails.application.routes.draw do
  resources :users, except: [:index, :show, :edit]
  resources :sessions, only: [:new, :create, :destroy]
  resources :products, only: [:index, :new, :create, :destroy, :show]
  resources :deals, only: [:new, :create, :show, :edit, :update]
  resources :likes, only: [:new, :create]
  resources :categories, only: [:index]

  root to:'sessions#new'
  get '/profile', to: 'users#show', as: 'profile'
  get '/profile/edit', to: 'users#edit', as: 'edit_profile'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
end
