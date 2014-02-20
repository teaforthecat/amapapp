When(/^I go to create a map$/) do
  visit new_geo_path
  find('form.new_geo').should be_visible
end

When(/^I go to edit a map$/) do
  @geo = create(:geo)
  visit edit_geo_path(@geo)
  # page.save_screenshot('spec/support/screenshots/edit-a-map.png')
end

When(/^I name it "(.*?)"$/) do |name|
  fill_in "Name", with: name
end

When(/^I draw a square on the map$/) do
  page.evaluate_script("map.trigger('draw:created')")
end

When(/^I save it$/) do
  click "Save"
end

Then(/^I should see "(.*?)" in the list of geo maps$/) do |name|
  page.should have_content(name)
end
