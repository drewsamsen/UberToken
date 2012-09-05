Feature: Deleting Users
	As a user
	In order to clear unneeded users
	I want to be able to easily delete them

	Background:
		Given there is a user called "John Smith"
		And I am on the homepage
		When I follow "All Users"
		And I follow "John Smith"
		And I follow "Delete"
		Then I should see "User has been deleted."
		And I should be on the users page
		And I should not see "John Smith"