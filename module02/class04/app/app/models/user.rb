class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  Pusher.app_id = '84827'
  Pusher.key = 'a79eba807d6c1ad89547'
  Pusher.secret = 'de82306e1ff3cf84db08'


end
