class AddGeojsonToGeo < ActiveRecord::Migration
  def change
    add_column :geos, :geojson, :text
  end
end
