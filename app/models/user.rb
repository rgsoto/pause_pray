class User < ActiveRecord::Base
  validates_presence_of :username, :email
  validates_uniqueness_of :username
  has_secure_password
  has_many :prayer_requests
end
