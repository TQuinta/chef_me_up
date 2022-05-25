class AddMealPictureToChefProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :chef_profiles, :meal_picture_url, :string
  end
end
