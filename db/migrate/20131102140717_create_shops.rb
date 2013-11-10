class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :shop_owner
      t.string :shop_line
      t.string :shop_number
      t.string :full_address
      t.string :shop_contact
      t.text :shop_description

      t.timestamps
    end
  end
end
