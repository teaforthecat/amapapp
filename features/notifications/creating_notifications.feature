Feature: Admin Creates a Notification
As an admin
In order to inform people of an emergency
I want to create a notification that uses many channels

This is a high level description of creating a Notification

Abilities when creating a Notification:
- Select a topic from DCM
- Select an e911 list
- Select by geography
- Select by subscriber meta data filters
- Select by standard DCM filters

Customize notification text for Email, SMS, Phone, Facebook, Twitter and RSS

Preview the message for each channel

Send the notification

View metrics of recipients

Background:
Given I am logged in as an admin

Scenario: Selecting a topic list from DCM
Given I have an account with a dcm account code: "HAL"
And I have a dcm account with a topic "Ice Cream"
When I create a new notification
And I select "Ice Cream" from "DCM Topics"
And I should be able to send the notification


Scenario: Selecting an e911 list
And one e911 list named "chicago" has been uploaded
When I create a new notification
And I select "chicago" from "e911 Subscriber List"
Then I should be able to send the notification

@javascript
Scenario: Selecting by geography
When I create a new notification
And I click on "Map"
And on the map, I fill in "City:" with "Chicago"
Then I should see "Chicago" on the map
And I should be able to enter a these elements:
| rectangle | polygon | polyline | marker |
