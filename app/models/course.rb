class Course
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, :type => String, :default => ""
  field :description, :type => String, :default => ""
  field :teacher, :type => String, :default => ""
  field :icon, :type => String, :default => ""
end
