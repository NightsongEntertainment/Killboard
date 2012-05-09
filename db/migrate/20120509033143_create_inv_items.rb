class CreateInvItems < ActiveRecord::Migration
  def change
    create_table :invItems, :id => false, :primary_key => :itemID do |t|
      t.integer :itemID, :null => false
      t.integer :typeID, :null => false
      t.integer :ownerID, :null => false
      t.integer :locationID, :null => false
      t.integer :flagID, :null => false
      t.integer :quantity, :null => false
      t.primary_key :itemID
    end
  end
end
