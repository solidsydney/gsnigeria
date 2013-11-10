class AddMartketIdToShop < ActiveRecord::Migration
  def change
    add_column :shops, :market_id, :integer
  end
end
