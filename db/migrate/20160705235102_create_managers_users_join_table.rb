class CreateManagersUsersJoinTable < ActiveRecord::Migration
  def change
  	create_join_table :managers, :users
  end
end
