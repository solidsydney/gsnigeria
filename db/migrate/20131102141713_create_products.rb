class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_model
      t.text :description
      t.string :condition
      t.integer :price
      t.integer :wholesale_discount

      t.timestamps
    end
  end
end
