# coding: utf-8

class Notice
  include Mongoid::Document
  include Mongoid::Timestamps

  field :content, :type => String, :default => ""
  field :user_id, :type => String, :default => ""
end
