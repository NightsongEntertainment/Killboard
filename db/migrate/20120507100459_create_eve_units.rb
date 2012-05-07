class CreateEveUnits < ActiveRecord::Migration
  def change
    create_table :eveUnits, :id => false, :primary_key => :unitID do |t|
      t.integer :unitID, :null => false
      t.string :unitName, :null => true, :limit => 100
      t.string :displayName, :null => true, :limit => 50
      t.string :description, :null => true, :limit => 1000
      t.primary_key :unitID
    end
  end
end
