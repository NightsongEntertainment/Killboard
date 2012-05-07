class CreateDgmTypeAttributes < ActiveRecord::Migration
  def change
    create_table :dgmTypeAttributes, :id => false do |t|
      t.integer :typeID, :null => false
      t.integer :attributeID, :null => false
      t.integer :valueInt, :null => true
      t.float :valueFloat, :null => true
    end
  end
end
