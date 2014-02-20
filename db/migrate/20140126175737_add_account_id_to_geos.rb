class AddAccountIdToGeos < ActiveRecord::Migration
  def change
    add_reference :geos, :account, index: true
  end
end
