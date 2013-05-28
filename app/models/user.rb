# coding: utf-8

class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # https://github.com/matteomelani/Auth-Token-Service-Prototype/
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable, :token_authenticatable

  ## Database authenticatable
  field :name,               :type => String
  field :email,              :type => String, :default => ""
  field :avatar,             :type => String
  field :encrypted_password, :type => String, :default => ""
  field :phone_number,       :type => String, :default => ""
  field :realname,           :type => String, :default => ""
  field :bio
  slug  :phone_number

  # validates_presence_of :name
  # validates_format_of :name, with: /^[a-z0-9_]+$/, message: 'must be lowercase alphanumerics only'
  # validates_length_of :name, maximum: 32, message: 'exceeds maximum of 32 characters'
  # validates_exclusion_of :name, in: ['www', 'mail', 'ftp'], message: 'is not available'
  # validates_presence_of :email

  validates_presence_of :phone_number
  validates_presence_of :encrypted_password
  
  # status
  field :activited
  field :activited_at,       :type => Time

  ## Recoverable
  field :reset_password_token,   :type => String
  field :reset_password_sent_at, :type => Time

  ## Rememberable
  field :remember_created_at, :type => Time

  ## Trackable
  field :sign_in_count,      :type => Integer, :default => 0
  field :current_sign_in_at, :type => Time
  field :last_sign_in_at,    :type => Time
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip,    :type => String

  ## Confirmable
  # field :confirmation_token,   :type => String
  # field :confirmed_at,         :type => Time
  # field :confirmation_sent_at, :type => Time
  # field :unconfirmed_email,    :type => String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, :type => Integer, :default => 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    :type => String # Only if unlock strategy is :email or :both
  # field :locked_at,       :type => Time

  # Token authenticatable
  field :authentication_token, :type => String

  # run 'rake db:mongoid:create_indexes' to create indexes
  # index({ email: 1 }, { unique: true, background: true })
  
  attr_accessible :phone_number, :realname, :password, :password_confirmation, :remember_me, :created_at, :updated_at

  def email_required?
    false
  end

  def email_changed?
    false
  end
  
end
