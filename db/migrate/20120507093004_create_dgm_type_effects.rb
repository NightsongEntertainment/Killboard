class CreateDgmTypeEffects < ActiveRecord::Migration
  def change
    create_table :dgmTypeEffects, :id => false do |t|
      t.integer :typeID, :null => false
      t.integer :effectID, :null => false
      t.boolean :isDefault, :null => true
    end
  end
end
