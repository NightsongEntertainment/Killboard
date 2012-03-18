class CreateCertificateClasses < ActiveRecord::Migration
  def change
    create_table :certificate_classes do |t|
      t.string :name, :null => true, :limit => 256
      t.string :description, :null => true, :limit => 500

      t.timestamps
    end
  end
end
