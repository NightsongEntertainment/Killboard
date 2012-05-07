class CreateCrpNpcDivisions < ActiveRecord::Migration
  def change
    create_table :crpNPCDivisions, :id => false, :primary_key => :divisionID do |t|
      t.integer :divisionID, :null => false
      t.string :divisionName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 1000
      t.string :leaderType, :null => true, :limit => 100
      t.primary_key :divisionID
    end
  end
end
