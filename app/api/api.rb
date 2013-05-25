require 'grape'

module Explorer
  class API < Grape::API
    # prefix "api"
    # rescue_from :all, :backtrace => false
    version 'v1', :using => :path
    format :json
    default_format :json
    # content_type :txt, "text/plain"
    # default_error_formatter :txt

    # helpers APIHelpers
  	# mount GrapeDemoAPI
    # mount API_v2

    get :hello do
      { text: 'Hello from V1' }
    end
  end
end