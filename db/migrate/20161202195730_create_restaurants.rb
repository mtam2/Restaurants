class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :phone
      t.string :address
      t.string :menu

      t.timestamps null: false
    end
  end
end
