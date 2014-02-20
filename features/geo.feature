Feature: Geospatial Map
As an admin
In order to speed up the creation of a notification
I want to draw a square on a map and store it to use later

A square has technical advantages over circles and polygons in that
it is easier to use as a geo filter.

@javascript
Scenario: Create a map
Given I am logged in as an admin
When I go to create a map
And I name it "Chicago"
And I draw a square on the map
And I save it
Then I should see "Chicago" in the list of geo maps


@javascript
Scenario: Edit a map
Given I am logged in as an admin
When I go to edit a map
And I draw a square on the map
