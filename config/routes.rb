
Explorer::Application.routes.draw do
  require 'api'

  # devise system
  devise_for :users, :path => '', :path_names => {:sign_up => 'signup', :sign_in => 'login', :sign_out => 'logout'}
  resources :users, :only => [:show, :index]

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
