class CreateTrnTranslationColumns < ActiveRecord::Migration
  def change
    create_table :trnTranslationColumns, :id => false, :primary_key => :tcID do |t|
      t.integer :tcGroupID, :null => true
      t.integer :tcID, :null => false
      t.string :tableName, :null => false, :limit => 256
      t.string :columnName, :null => false, :limit => 128
      t.string :masterID, :null => true, :limit => 128
      t.primary_key :tcID
    end
  end
end
