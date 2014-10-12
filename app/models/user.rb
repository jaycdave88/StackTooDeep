class User < ActiveRecord::Base

	has_many :questions
	
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_presence_of :password_digest



end