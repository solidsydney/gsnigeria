class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :location
      t.integer :state_id
      t.text :description

      t.timestamps
    end
  end
end
