class AddMoreDetailsToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :relationship_with_next_of_kin, :string
  end
end
