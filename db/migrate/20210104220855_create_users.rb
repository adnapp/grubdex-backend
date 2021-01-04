class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :home_city
      t.string :bio

      t.timestamps
    end
  end
end
