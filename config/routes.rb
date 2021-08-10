Rails.application.routes.draw do
  resources :tasks do
    resources :works
  end
  namespace :task do
    resources :works
  end
  devise_for :users
  root to: "tasks#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
