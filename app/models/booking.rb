class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef_profile
  validates :date, presence: true, uniqueness: { scope: :user_id, unless: :status_not_booked? }

  def status_not_booked?
    status != "booked"
  end
end
