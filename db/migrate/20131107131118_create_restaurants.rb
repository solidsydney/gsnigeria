class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :owner
      t.string :location
      t.string :address
      t.string :food_type
      t.string :drink_type
      t.text :description

      t.timestamps
    end
  end
end
