class FixManagerHoldingHoldings < ActiveRecord::Migration
  def change
  	add_column :holdings, :manager_id, :integer
  end
end
