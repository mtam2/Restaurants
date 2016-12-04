class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :restaurant, index: true, foreign_key: true
      t.integer :rating
      t.date :date

      t.timestamps null: false
    end
  end
end
