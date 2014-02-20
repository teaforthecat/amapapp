# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :geo do
    search_value "Saint Paul, Mn"
    map_bounds ""
    geojson { JSON.parse(open('spec/fixtures/geo.json').read) }
    account
  end
end
