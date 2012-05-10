class CreateTrnTranslationLanguages < ActiveRecord::Migration
  def change
    create_table :trnTranslationLanguages, :id => false, :primary_key => :numericLanguageID do |t|
      t.integer :numericLanguageID, :null => false
      t.string :languageID, :null => true, :limit => 50
      t.string :languageName, :null => true, :limit => 200
      t.primary_key :numericLanguageID
    end
  end
end
