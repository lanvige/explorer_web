# require 'grape'

module Explorer
  class API < Grape::API
    prefix "v1"
    format :json

    get :hello do
      { text: 'Hello from V1' }
    end
  end
end