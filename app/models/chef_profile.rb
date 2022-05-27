class ChefProfile < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  include PgSearch::Model

  pg_search_scope :search_by_title_and_description_and_category,
  against: [ :title, :description, :category ],
  using: {
    tsearch: { prefix: true }
  }

  def message
    if self.category == "ChefMyHome"
      "Our chef will provide you with all you need, cooking you breakfast, lunch, and dinner at your house"
    elsif self.category == "ChefToGo"
      "Home cooked pre-prepared meals for those on the go!"
    else
      "Events, parties, or just because you want to. Our chefs will provide you with your perfect experience"
    end
  end
end
