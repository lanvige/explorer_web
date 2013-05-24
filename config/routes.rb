Explorer::Application.routes.draw do

  root :to => "home#index"
  # authenticated :user do
  #   root :to => 'home#index'
  # end
  
  mount Explorer::API => "/"

  devise_for :users, :path => '', :path_names => {:sign_up => 'signup', :sign_in => 'login', :sign_out => 'logout'}
  resources :users, :only => [:show, :index]
  resources :roles

  resources :notices
  resources :clazzes
  resources :courses
  resources :coursewares
  
  # constraints(Subdomain) do
  #   match '/' => 'profiles#show'
  # end

  

end
