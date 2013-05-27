module Explorer
  class API::User < Grape::API
    resource :users do
      get do
        present User.all
      end

      get :hello do
      	{ text: 'Hello from V1' }
      end
    end
  end
end