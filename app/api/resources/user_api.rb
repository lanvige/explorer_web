
# require 'grape'

module Explorer
  class UserAPI < Grape::API

    namespace :users do
      desc "Provides information about the API"
      get do
        @users = User.limit(20)
        present @users
      end
    end
    
  end
end