class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :cik
      t.string :name

      t.timestamps null: false
    end
  end
end
