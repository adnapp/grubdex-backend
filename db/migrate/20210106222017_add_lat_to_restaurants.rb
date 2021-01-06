class AddLatToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :lat, :string
  end
end
