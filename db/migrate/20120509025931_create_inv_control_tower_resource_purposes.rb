class CreateInvControlTowerResourcePurposes < ActiveRecord::Migration
  def change
    create_table :invControlTowerResourcePurposes, :id => false, :primary_key => :purpose do |t|
      t.integer :purpose, :null => false
      t.string :purposeText, :null => true, :limit => 100
      t.primary_key :purpose
    end
  end
end
