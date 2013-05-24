class Role
  include Mongoid::Document
  include Mongoid::Timestamps

  field :id, type: String
  field :name, type: String
  field :description, type: String
  
end
