class CreateChefProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :chef_profiles do |t|
      t.string :title
      t.string :description
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
