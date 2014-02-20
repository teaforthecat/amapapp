Given(/^I have an account with a dcm account code: "(.*?)"$/) do |code|
  # account = create_stubbed( :dcm_account, code: code )
  # DCM::Account.stub(:find).and_return( account )
end
#TODO: maybe work these out for real, accessing dcm api an recording it with vcr
Given(/^I have a dcm account with a topic "(.*?)"$/) do |name|
  # topic = create_stubbed( :dcm_topic, name: name )
  # DCM::Topic.stub(:find).and_return( topic )
end

When(/^I create a new notification$/) do
  visit new_notification_path
  find('form.new_notification').should be_visible
end

When(/^I select "(.*?)" from "(.*?)"$/) do |option, label|
  select option, from: label
end

Then(/^I should be able to schedule the notification$/) do
  find_button('Schedule').should be_visible
end

Then(/^I should be able to send the notification$/) do
  find_button('Send').should be_visible
end

Given(/^one e911 list named "(.*?)" has been uploaded$/) do |name|
  steps %{
    When I upload a file named "#{name}" that contains:
    | action | record_id | salutation | first_name | middle_name | last_name | suffix | address         | city    | state | zip | country |
    | new    |           |            | charles    | in          | charge    |        | 777 chicago ave | chicago |       |     |         |
    Then I should see "#{name}" in the list of e911 lists
}
end

Given(/^I am logged in as an admin$/) do
  login_user :admin
end


When(/^I click on "(.*?)"$/) do |label|
  find('.map').click
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |label, value|
  fill_in label, with: value
end

When(/^on the map, I fill in "(.*?)" with "(.*?)"$/) do |label, value|
  within_frame "leaflet-map" do
    fill_in( label, with: value)
    # placeholder is used by GeoSearch leaflet plugin
    # aka: .leaflet-control-geosearch-qry
    find("[placeholder='#{label}']").native.send_key(:Enter)
    sleep(2) #get new map data
  end
end

Then(/^I should see "Chicago" on the map$/) do
  within_frame "leaflet-map" do
    lat = page.evaluate_script("map.getBounds().getCenter().lat")
    lng = page.evaluate_script("map.getBounds().getCenter().lng")
    lat.should eq( 41.87556237192816)
    lng.should eq(-87.62489318847656)
  end
end

Then(/^I should be able to enter a these elements:$/) do |table|
  # I don't really want to test the interactive bits
  # it is too tricky
end
