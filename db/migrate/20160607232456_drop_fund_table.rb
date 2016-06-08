class DropFundTable < ActiveRecord::Migration
  def change
  	drop_table :funds
  end
end
