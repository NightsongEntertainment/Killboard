class CreateCrpNpcCorporationResearchFields < ActiveRecord::Migration
  def change
    create_table :crpNPCCorporationResearchFields, :id => false do |t|
      t.integer :skillID, :null => false
      t.integer :corporationID, :null => false
    end
  end
end
