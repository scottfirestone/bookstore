class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :location_type
      t.integer :location_number

      t.timestamps
    end
  end
end
