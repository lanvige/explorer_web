
Explorer::Application.routes.draw do
  require 'api'

  # devise system
  devise_for :users,
             :path => '', 
             # :class_name => 'User'
             :controllers => {:registrations => :registrations,
                              :password      => :passwords,
                              :sessions      => :sessions,
                              :invitation    => :invitation }

  devise_scope :user do
    get '/signup', :to => 'registrations#new', :as => :signup
    get '/login',  :to => 'sessions#new',      :as => :login
    get '/logout', :to => 'sessions#destroy',  :as => :logout
  end

  resources :users, :only => [:show, :index]
  resources :token_authentications, :only => [:create, :destroy]

  # common resources
  resources :roles
  resources :notices
  resources :clazzes
  resources :courses
  resources :coursewares

  # root
  root :to => "home#index"

  # api
  mount Explorer::API => "/"
end
