class CreateCrpNpcCorporations < ActiveRecord::Migration
  def change
    create_table :crpNPCCorporations, :id => false, :primary_key => :corporationID do |t|
      t.integer :corporationID, :null => false
      t.integer :size, :null => true
      t.integer :extent, :null => true
      t.integer :solarSystemID, :null => true
      t.integer :investorID1, :null => true
      t.integer :investorShares1, :null => true
      t.integer :investorID2, :null => true
      t.integer :investorShares2, :null => true
      t.integer :investorID3, :null => true
      t.integer :investorShares3, :null => true
      t.integer :investorID4, :null => true
      t.integer :investorShares4, :null => true
      t.integer :friendID, :null => true
      t.integer :enemyID, :null => true
      t.integer :publicShares, :null => true
      t.integer :initialPrice, :null => true
      t.float :minSecurity, :null => true
      t.boolean :scattered, :null => true
      t.integer :fringe, :null => true
      t.integer :corridor, :null => true
      t.integer :hub, :null => true
      t.integer :border, :null => true
      t.integer :factionID, :null => true
      t.float :sizeFactor, :null => true
      t.integer :stationCount, :null => true
      t.integer :stationSystemCount, :null => true
      t.string :description, :null => true, :limit => 4000
      t.integer :iconID, :null => true
      t.primary_key :corporationID
    end
  end
end
