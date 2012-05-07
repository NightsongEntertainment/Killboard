class CreateCrtCategories < ActiveRecord::Migration
  def change
    create_table :crtCategories, :id => false, :primary_key => :categoryID do |t|
      t.integer :categoryID, :null => false
      t.string :description, :null => true, :limit => 500
      t.string :categoryName, :null => true, :limit => 256
      t.primary_key :categoryID
    end
  end
end
