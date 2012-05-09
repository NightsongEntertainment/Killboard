class CreateInvCategories < ActiveRecord::Migration
  def change
    create_table :invCategories, :id => false, :primary_key => :categoryID do |t|
      t.integer :categoryID, :null => false
      t.string :categoryName, :null => true, :limit => 100
      t.string :description, :null => true, :limit => 3000
      t.integer :iconID, :null => true
      t.boolean :published, :null => true
      t.primary_key :categoryID
    end
  end
end
