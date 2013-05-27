# coding: utf-8

class Courseware
  include Mongoid::Document

  field :name, type: String
  field :description, type: String
  field :course, type: Course
  field :icon, type: String
end
