# coding: utf-8

class Notice
  include Mongoid::Document
  include Mongoid::Token
  include Mongoid::Timestamps

  field :content, :type => String, :default => ""
  field :user_id, :type => String, :default => ""

  token :contains => :fixed_numeric, :length => 9
  #token :field_name => :sharing_token, :length => 12
end
