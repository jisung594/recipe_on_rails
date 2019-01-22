Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :posts
  resources :categories
  resources :sessions, only: [:new,:create,:destroy]
  # , as: 'login'

  # get 'sessions/new', to: 'sessions#new'

end
