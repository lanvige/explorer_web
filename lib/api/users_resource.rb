require 'grape'

module Explorer
  class API < Grape::API
    
    resource :users do
      # Get all the Users
      #   /users/
      get do
        @users = User.limit(20)
        present @users, :with => APIEntities::User
      end
      
      # # Get topic detail
      # # Example
      # #   /users/1
      # get ":id" do
      #   @user = User.find(params[:id])
      #   present @user, :with => APIEntities::User
      # end
    end
  end
end