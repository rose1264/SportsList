Rails.application.routes.draw do
  resources :users, except: [:index, :show, :edit]
  get '/profile', to: 'users#show', as: 'profile'
  get '/profile/edit', to: 'users#edit', as: 'edit_profile'
  resources :sessions, only: [:new, :create, :destroy]
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  resources :products, only: [:new, :create, :destroy, :show]
  resources :deals, only: [:new, :create, :show]
end
