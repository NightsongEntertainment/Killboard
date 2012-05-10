class CreateMapCelestialStatistics < ActiveRecord::Migration
  def change
    create_table :mapCelestialStatistics, :id => false, :primary_key => :celestialID do |t|
      t.integer :celestialID, :null => false
      t.float :temperature, :null => true
      t.string :spectralClass, :null => true, :limit => 10
      t.float :luminosity, :null => true
      t.float :age, :null => true
      t.float :life, :null => true
      t.float :orbitRadius, :null => true
      t.float :eccentricity, :null => true
      t.float :massDust, :null => true
      t.float :massGas, :null => true
      t.boolean :fragmented, :null => true
      t.float :density, :null => true
      t.float :surfaceGravity, :null => true
      t.float :escapeVelocity, :null => true
      t.float :orbitPeriod, :null => true
      t.float :rotationRate, :null => true
      t.boolean :locked, :null => true
      t.float :pressure, :null => true
      t.float :radius, :null => true
      t.float :mass, :null => true
      t.primary_key :celestialID
    end
  end
end
