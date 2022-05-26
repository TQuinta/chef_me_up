class ChefProfile < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  include PgSearch::Model

  pg_search_scope :search_by_title_and_description_and_category,
  against: [ :title, :description, :category ],
  using: {
    tsearch: { prefix: true }
  }

  def available?(from, to)
    bookings.where('date <= ? AND duration >= ?', to, from).none?
  end
end
