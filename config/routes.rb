Rails.application.routes.draw do
  resources :posts do
    member do
      get :like
    end
    member do
     get :follow
    end
  end
  get "login" => "sessions#new", :as =>"login"
  get "logout" => "sessions#destroy", :as => "logout"
  get "signup" => "users#new", :as => "signup"
  resources :sessions
  resources :users

  root :to => "home#index"
end
