Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  root "messages#index"
  resources :users, only: [:edit, :update]
=======
  root 'groups#index'
  resources :users, only: [:index, :edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
    namespace :api do
      resources :messages, only: :index, defaults: { format: 'json'}
    end
  end
>>>>>>> b92a31d... Message function
end
