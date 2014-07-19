class User < ActiveRecord::Base
  has_many :tweets
  has_many :user_photos
  has_many :photos, through: :user_photos
end