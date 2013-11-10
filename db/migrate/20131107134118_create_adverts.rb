class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :name
      t.string :description
      t.string :external_link
      t.string :title

      t.timestamps
    end
  end
end
