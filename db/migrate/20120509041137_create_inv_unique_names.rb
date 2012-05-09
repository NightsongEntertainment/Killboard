class CreateInvUniqueNames < ActiveRecord::Migration
  def change
    create_table :invUniqueNames, :id => false, :primary_key => :itemID do |t|
      t.integer :itemID, :null => false
      t.string :itemName, :null => false, :limit => 200
      t.integer :groupID, :null => true
    end
  end
end
