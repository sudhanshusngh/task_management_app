Rails.application.routes.draw do
  resources :images
  #resources :sessions, except: :new
  get 'users/index'
  #post 'users/sign_out' to:
  get 'users/create'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  resources :tasks do
    resources :works
  end
  namespace :task do
    resources :works
  end
  #devise_for :users
  root to: "tasks#index"

  post '/auth/:provider/callback', to: 'sessions#create' 

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
