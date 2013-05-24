require 'grape'

module Explorer
  module APIEntities
    class User < Grape::Entity
      expose :_id, :name, :email
    end
  end
end