Rails.application.routes.draw do
  resources :products, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :categories, only: [:index, :show, :new, :create]
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
