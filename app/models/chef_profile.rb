class ChefProfile < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  include PgSearch::Model

  pg_search_scope :search_by_title_and_description_and_category,
  against: [ :title, :description, :category ],
  using: {
    tsearch: { prefix: true }
  }
end
