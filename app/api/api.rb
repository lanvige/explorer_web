require 'grape'
# require 'api_v1'
# require 'resources\user'

module Explorer
  class API < Grape::API
    # error_format :json
    format :json
    default_format :json

    version 'v1', :using => :path

    get :hello do
      { text: 'Hello from V0' }
    end

    namespace :info do
      desc "Provides information about the API"
      get do
        { api:"Grape Demo API", version: version }
      end
    end


    # mount Explorer::APIV1
  end
end