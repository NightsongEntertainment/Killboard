class CreateCrtCertificates < ActiveRecord::Migration
  def change
    create_table :crtCertificates, :id => false, :primary_key => :certificateID do |t|
      t.integer :certificateID, :null => false
      t.integer :categoryID, :null => true
      t.integer :classID, :null => true
      t.integer :grade, :null => true
      t.integer :corpID, :null => true
      t.integer :iconID, :null => true
      t.string :description, :null => true, :limit => 500
      t.primary_key :certificateID
    end
  end
end
