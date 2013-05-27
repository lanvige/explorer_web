
# require 'grape'

module Explorer
  class Notice < Grape::API

    namespace :notices do
      desc "Provides information about the API"
      get do
        { api:"Notices Demo API", version: version }
      end
    end
    
  end
end