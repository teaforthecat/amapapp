Given(/^I am new to the site$/) do
  visit root_path
end

When(/^I register with a valid email address and password$/) do
  visit new_user_registration_path
  fill_in :user_email, with: "valid@test.com"
  fill_in :user_password, with: "8digits8"
  fill_in :user_password_confirmation, with: "8digits8"
  submit "form.new_user"
end

Then(/^I should be logged in$/) do
  find_link('Logout').visible?
end


Given(/^I have registered but do not have a dcm account$/) do
  step "I register with a valid email address and password"
end

And(/^I click "(.*?)"$/) do |label|
  click_on(label)
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content(text)
end
