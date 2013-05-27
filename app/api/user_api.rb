
# require 'grape'

module Explorer
  class UserAPI < Grape::API

    namespace :users do
      desc "Provides information about the API"
      get do
        { api:"Users Demo API", version: version }
      end
    end
    
  end
end