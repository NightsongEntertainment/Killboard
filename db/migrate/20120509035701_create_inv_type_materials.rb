class CreateInvTypeMaterials < ActiveRecord::Migration
  def change
    create_table :invTypeMaterials, :id => false do |t|
      t.integer :typeID, :null => false
      t.integer :materialTypeID, :null => false
      t.integer :quantity, :null => false
    end
  end
end
