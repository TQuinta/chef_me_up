class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings, through: :chef_profiles
  has_many :chef_profiles
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :chef_profile
  has_one_attached :avatar

  def has_chef_profile?
    self.chef_profile
  end
end
