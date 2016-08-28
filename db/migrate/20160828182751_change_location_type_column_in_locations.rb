class ChangeLocationTypeColumnInLocations < ActiveRecord::Migration[5.0]
  def up
    change_column :locations, :location_type, 'integer USING CAST(location_type AS integer)'
  end

  def down
    change_column :locations, :location_type, 'string USING CAST(location_type AS string)'
  end
end
