# coding: utf-8

class Role
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, :type => String, :default => ""
  field :description, :type => String, :default => ""
end
