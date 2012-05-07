class CreateCrpNpcCorporationDivisions < ActiveRecord::Migration
  def change
    create_table :crpNPCCorporationDivisions, :id => false do |t|
      t.integer :corporationID, :null => false
      t.integer :divisionID, :null => false
      t.integer :size, :null => true
    end
  end
end
