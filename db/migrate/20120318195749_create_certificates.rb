class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.integer :category_id, :null => true
      t.integer :class_id, :null => true
      t.integer :grade, :null => true
      t.integer :corp_id, :null => true
      t.integer :icon_id, :null => true
      t.string :description, :null => true, :limit => 500

      t.timestamps
    end
  end
end
