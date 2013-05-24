class Clazz
  include Mongoid::Document
  field :id, type: String
  field :name, type: String
  field :description, type: String
end
