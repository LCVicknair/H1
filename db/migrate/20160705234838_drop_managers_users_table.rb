class DropManagersUsersTable < ActiveRecord::Migration
  def change
  	drop_table :managers_users
  end
end
