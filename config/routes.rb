
Explorer::Application.routes.draw do
  require 'api'

  resources :roles
  resources :notices
  resources :clazzes
  resources :courses
  resources :coursewares

  
  
  devise_for :users, :path => '', :path_names => {:sign_up => 'signup', :sign_in => 'login', :sign_out => 'logout'}
  # resources :users, :only => [:show, :index]

  root :to => "home#index"
  # authenticated :user do
  #   root :to => 'home#index'
  # end

  mount Explorer::API => "/"
end
