class CreateLocationSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :location_slots do |t|
      t.references :book, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
