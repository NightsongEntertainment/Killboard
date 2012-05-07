class CreateDgmAttributeCategories < ActiveRecord::Migration
  def change
    create_table :dgmAttributeCategories, :id => false, :primary_key => :categoryID do |t|
      t.integer :categoryID, :null => false
      t.string :categoryName, :null => true, :limit => 50
      t.string :categoryDescription, :null => true, :limit => 200
      t.primary_key :categoryID
    end
  end
end
