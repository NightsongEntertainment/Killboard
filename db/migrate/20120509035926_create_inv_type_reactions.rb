class CreateInvTypeReactions < ActiveRecord::Migration
  def change
    create_table :invTypeReactions, :id => false do |t|
      t.integer :reactionTypeID, :null => false
      t.boolean :input, :null => false
      t.integer :typeID, :null => false
      t.integer :quantity, :null => true
    end
  end
end
