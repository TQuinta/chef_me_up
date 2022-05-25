class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings, through: :chef_profiles
  has_many :chef_profiles
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
