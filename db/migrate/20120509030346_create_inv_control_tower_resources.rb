class CreateInvControlTowerResources < ActiveRecord::Migration
  def change
    create_table :invControlTowerResources, :id => false do |t|
      t.integer :controlTowerTypeID, :null => false
      t.integer :resourceTypeID, :null => false
      t.integer :purpose, :null => true
      t.integer :quantity, :null => true
      t.float :minSecurityLevel, :null => true
      t.integer :factionID, :null => true
    end
  end
end
