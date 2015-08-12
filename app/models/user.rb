#class User < ActiveRecord::Base
 # validates_presence_of :username, :email
 # validates_uniqueness_of :username
 # has_many :prayer_requests
 # has_many :prayers
  #has_secure_password
  #validates: password, presence: true, length: {minimum: 6 }
#end

# from hartl book starting at 6.3 
class User < ActiveRecord::Base
  validates_uniqueness_of :username
  has_many :prayer_requests
  has_many :prayers
  before_save { self.email = email.downcase }
  validates :username, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
