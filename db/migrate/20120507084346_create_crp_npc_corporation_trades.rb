class CreateCrpNpcCorporationTrades < ActiveRecord::Migration
  def change
    create_table :crpNPCCorporationTrades, :id => false do |t|
      t.integer :corporationID, :null => false
      t.integer :typeID, :null => false
    end
  end
end
