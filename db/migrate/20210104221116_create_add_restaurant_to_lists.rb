class CreateAddRestaurantToLists < ActiveRecord::Migration[6.0]
  def change
    create_table :add_restaurant_to_lists do |t|
      t.belongs_to :list, null: false, foreign_key: true
      t.belongs_to :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
