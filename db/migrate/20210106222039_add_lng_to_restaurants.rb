class AddLngToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :lng, :string
  end
end
