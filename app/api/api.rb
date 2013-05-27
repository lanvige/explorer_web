require 'grape'
# require 'user_api'
# require 'notice_api'
# require 'resources\user'
Dir[File.dirname(__FILE__) + '/resources/*.rb'].each do |file|
  require File.basename(file, File.extname(file))
end


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


    mount Explorer::UserAPI => '/'
    mount Explorer::NoticeAPI => '/'
  end
end

# require all the resources and entities under api folder.

# Dir[File.dirname(__FILE__) + '/api/entities/*.rb'].each {|file| require file }