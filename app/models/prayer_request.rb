class PrayerRequest < ActiveRecord::Base
  validates_presence_of :user
  belongs_to :user
  has_many :prayers 
end