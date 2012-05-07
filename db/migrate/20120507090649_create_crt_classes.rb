class CreateCrtClasses < ActiveRecord::Migration
  def change
    create_table :crtClasses, :id => false, :primary_key => :classID do |t|
      t.integer :classID, :null => false
      t.string :description, :null => true, :limit => 500
      t.string :className, :null => true, :limit => 256
      t.primary_key :classID
    end
  end
end
