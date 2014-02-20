module GeosHelper
  module_function

  # [["0", {"0"=>["175.2755784988403", "-37.78085708381037"], "1"=>["175.2755784988403", "-37.77824530850988"], "2"=>["175.28643608093262", "-37.77824530850988"], "3"=>["175.28643608093262", "-37.78085708381037"], "4"=>["175.2755784988403", "-37.78085708381037"]}]]
  # => [[["175.2755784988403", "-37.78085708381037"],...
  def geo_coords_to_array coordinates
    data_hash = coordinates.first.second
    values = data_hash.reduce([]){|a,i| a << i[1] }
    [values] #one more array because that is what works with geojson
  end
end
