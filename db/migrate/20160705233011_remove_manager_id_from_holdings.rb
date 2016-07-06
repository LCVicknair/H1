class RemoveManagerIdFromHoldings < ActiveRecord::Migration
  def change
  	remove_column :holdings, :manager_id
  end
end
