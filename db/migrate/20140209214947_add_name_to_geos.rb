class AddNameToGeos < ActiveRecord::Migration
  def change
    add_column :geos, :name, :string
  end
end
