class ManagersUsersTable < ActiveRecord::Migration
  def change
  	create_join_table :users, :managers
  end
end
