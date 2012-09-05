Feature: Viewing users
	As a user
	In order to view and modify users
	I want to be able to see a list of users

	Scenario: Listing all users
		Given there is a user called "John Smith"
		And I am on the homepage
		When I follow "All Users"
		Then I should be on the users page
		And I should see "John Smith"
		Given I follow "John Smith"
		Then I should be on the user page for "John Smith"