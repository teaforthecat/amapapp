class CreateGeos < ActiveRecord::Migration
  def change
    create_table :geos do |t|
      t.string :type
      t.string :shape
      t.string :search_value
      t.string :map_bounds
      t.text :coordinates

      t.timestamps
    end
  end
end
