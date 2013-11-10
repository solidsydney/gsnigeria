class AddInfoToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :name, :string
    add_column :admin_users, :address, :string
    add_column :admin_users, :phone_number, :string
    add_column :admin_users, :sex, :string
    add_column :admin_users, :date_of_birth, :string
    add_column :admin_users, :marital_status, :string
    add_column :admin_users, :nationality, :string
    add_column :admin_users, :state_of_origin, :string
    add_column :admin_users, :local_government_area, :string
    add_column :admin_users, :level_of_education, :string
    add_column :admin_users, :marketing_experience, :boolean
    add_column :admin_users, :account_name, :string
    add_column :admin_users, :account_number, :integer
    add_column :admin_users, :computer_leterate, :boolean
    add_column :admin_users, :objective, :text
    add_column :admin_users, :next_of_kin_name, :string
    add_column :admin_users, :next_of_kin_address, :string
    add_column :admin_users, :next_of_kin_phone_number, :integer
  end
end
