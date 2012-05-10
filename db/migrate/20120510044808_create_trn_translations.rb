class CreateTrnTranslations < ActiveRecord::Migration
  def change
    create_table :trnTranslations, :id => false do |t|
      t.integer :tcID, :null => false
      t.integer :keyID, :null => false
      t.string :languageID, :null => false, :limit => 50
      t.string :text, :null => false, :limit => 9999
    end
  end
end
