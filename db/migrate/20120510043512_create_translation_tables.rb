class CreateTranslationTables < ActiveRecord::Migration
  def change
    create_table :translationTables, :id => false do |t|
      t.string :sourceTable, :null => false, :limit => 200
      t.string :destinationTable, :null => true, :limit => 200
      t.string :translatedKey, :null => false, :limit => 200
      t.integer :tcGroupID, :null => true
      t.integer :tcID, :null => true
    end
  end
end
