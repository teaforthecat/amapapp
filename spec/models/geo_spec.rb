require 'spec_helper'

describe Geo do
  it "should store geojson coordinates" do
    geo = build_stubbed(:geo)
    expect(geo.geojson).to be_kind_of(Hash)
    geo.geojson["geometry"]["coordinates"].should be_kind_of(Array)
    geo.should be_valid
  end

end
