Feature: Login
As a total stranger
I want to be able to register as a user
In order to be contacted by someone from the sales team


A user can be created by self-registration without any assistance.
It will have no permissions though and the user won't be able to do anything.
An administrator will need to:
1) add the user to an account
2) give the user one or more roles

Scenario: initial registration
Given I am new to the site
When I register with a valid email address and password
Then I should be logged in

@wip @confirm
Scenario: Login without a DCM Account
Given I have registered but do not have a dcm account
And I click "Request a DCM Account"
Then I should see "Your Request has been sent"
