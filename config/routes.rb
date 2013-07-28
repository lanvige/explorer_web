
Explorer::Application.routes.draw do
  use_doorkeeper

  require 'api'

  # devise system
  # https://github.com/plataformatec/devise/wiki/How-To:-Change-the-default-sign_in-and-sign_out-routes
  devise_for :users,
             :path => '', 
             #:skip => [:registrations, :sessions],
             # :class_name => 'User'
             :controllers => {:registrations => :registrations,
                              :password      => :passwords,
                              :sessions      => :sessions,
                              :invitation    => :invitation }

  devise_scope :user do
    get    '/signup', :to => 'registrations#new', :as => :signup
    get    '/login',  :to => 'sessions#new',      :as => :login
    # post   '/login',  :to => 'sessions#create',   :as => :login
    delete '/logout', :to => 'sessions#destroy',  :as => :logout
  end

  resources :users, :only => [:show, :index, :new, :create]
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
