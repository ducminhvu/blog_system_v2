Rails.application.routes.draw do
  get 'comments/show'

  get 'comments/create'

  root               "static_pages#home"
  get "help"      => "static_pages#help"
  get "about"     => "static_pages#about"
  get "contact"   => "static_pages#contact"
  get "signup"    => "users#new"
  get "login"     => "sessions#new"
  post "login"    => "sessions#create"
  delete "logout" => "sessions#destroy"

  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :users
  resources :entries, only: [:create, :destroy, :show]
  resources :comments, only: [:create]
  resources :relationships,       only: [:create, :destroy]
end
