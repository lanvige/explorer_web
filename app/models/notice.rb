class Notice
  include Mongoid::Document
  include Mongoid::Timestamps

  field :id, type: String, :default => ""

  field :content, type: String, :default => ""
  field :sender_id, type: String
end
