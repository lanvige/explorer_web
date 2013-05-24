Explorer::Application.routes.draw do
  resources :clazzes


  resources :clazzes #:path => 'clazz'


  resources :roles


  resources :notices


  authenticated :user do
    root :to => 'home#index'
  end
  
  devise_for :users, :path => '', :path_names => {:sign_up => 'signup', :sign_in => 'login', :sign_out => 'logout'}

  resources :users, :only => [:show, :index]
  # constraints(Subdomain) do
  #   match '/' => 'profiles#show'
  # end
  root :to => "home#index"
end
