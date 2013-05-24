class Course
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :teacher, type: String
  field :icon, type: String
end
