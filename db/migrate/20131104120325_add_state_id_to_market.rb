class AddStateIdToMarket < ActiveRecord::Migration
  def change
    add_column :markets, :state_id, :integer
  end
end
