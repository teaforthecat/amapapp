require 'csv'
Given(/^I am logged in as an account admin$/) do
  login_user(:account_admin)
end

When(/^I upload a file named "(.*?)" that contains:$/) do |filename, table|
  visit new_e911_path
  file_path = generate_csv( filename, table )
  attach_file :e911_subscriber_list, file_path
  fill_in :e911_name, with: filename
  submit "form.new_e911"
end

Then(/^I should see "(.*?)" in the list of e911 lists$/) do |name|
  visit e911s_path
  page.should have_content(name)
end
