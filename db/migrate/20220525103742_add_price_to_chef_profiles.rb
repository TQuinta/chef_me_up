class AddPriceToChefProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :chef_profiles, :price, :float
  end
end
