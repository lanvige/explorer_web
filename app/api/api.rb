require 'grape'
require 'resources/user'

module Explorer
  class API < Grape::API
    # rescue_from :all, :backtrace => false
    version 'v1', :using => :path
    format :json
    default_format :json
    # content_type :txt, "text/plain"
    # default_error_formatter :txt

    # helpers APIHelpers
  	# mount GrapeDemoAPI
    # mount API_v2

    mount Explorer::API::User => '/'

    get :hello do
      { text: 'Hello from V1' }
    end
  end
end