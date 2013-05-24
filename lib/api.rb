require 'grape'

module Explorer
  class API < Grape::API
    # prefix "api"
    version 'v1', :using => :path
    format :json
    # default_formatter :json
    # error_formatter :json
  end
end

# require all the resources and entities under api folder.
Dir[File.dirname(__FILE__) + '/api/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/api/entities/*.rb'].each {|file| require file }