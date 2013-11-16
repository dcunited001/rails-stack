class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #TODO: :confirmable
         :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :username
  validates_presence_of :username
  validates :username, length: { in: 4..20 }

  #TODO: login with email or username
  #TODO: add remember_me
end
