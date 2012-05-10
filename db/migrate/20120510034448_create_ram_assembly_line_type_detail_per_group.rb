class CreateRamAssemblyLineTypeDetailPerGroup < ActiveRecord::Migration
  def change
    create_table :ramAssemblyLineTypeDetailPerGroup, :id => false do |t|
      t.integer :assemblyLineTypeID, :null => false
      t.integer :groupID, :null => false
      t.float :timeMultiplier, :null => true
      t.float :materialMultiplier, :null => true
    end
  end
end
