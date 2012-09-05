Feature: Editing Users
	As a user
	In order to update user information
	I want to be able to do that through an interface

	Background:
		Given there is a user called "John Smith"
		And I am on the homepage
		When I follow "All Users"
		And I follow "John Smith"
		And I follow "Edit User"

	Scenario: Updating a user
		And I fill in "Name" with "Johnny Smith"
		And I press "Update User"
		Then I should see "User has been updated"
		And I should be on the user page for "Johnny Smith"
		And I should see "Johnny Smith"
		And I should not see "John Smith"

	Scenario: Updating a user with an invalid name
		And I fill in "Name" with ""
		And I press "Update User"
		Then I should see "User has not been updated."