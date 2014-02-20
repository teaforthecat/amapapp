class AddSseChannelToGeo < ActiveRecord::Migration
  def change
    add_column :geos, :sse_channel, :string
  end
end
