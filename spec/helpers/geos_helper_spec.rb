require 'spec_helper'

describe GeosHelper do

  it 'can convert json object into an array' do
    coords = [["0", {"0"=>["175.2755784988403", "-37.78085708381037"], "1"=>["175.2755784988403", "-37.77824530850988"], "2"=>["175.28643608093262", "-37.77824530850988"], "3"=>["175.28643608093262", "-37.78085708381037"], "4"=>["175.2755784988403", "-37.78085708381037"]}]]
    result = geo_coords_to_array(coords)
    result.should be_kind_of(Array)
    result.first.should be_kind_of(Array)
    result.first.first.should be_kind_of(Array)
    result.first.first.first.should be_kind_of(String)
  end
end
