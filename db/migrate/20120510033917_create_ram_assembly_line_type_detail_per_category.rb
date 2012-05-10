class CreateRamAssemblyLineTypeDetailPerCategory < ActiveRecord::Migration
  def change
    create_table :ramAssemblyLineTypeDetailPerCategory, :id => false do |t|
      t.integer :assemblyLineTypeID, :null => false
      t.integer :categoryID, :null => false
      t.float :timeMultiplier, :null => true
      t.float :materialMultiplier, :null => true
    end
  end
end
