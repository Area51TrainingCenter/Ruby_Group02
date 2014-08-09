class User < ActiveRecord::Base
  has_many :tweets
  has_many :user_photos
  has_many :photos, through: :user_photos
  validates :email, :first_name, presence: true
  def name
    "#{first_name} #{last_name}"
  end

end