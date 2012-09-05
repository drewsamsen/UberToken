Feature: Creating users
	As a user
	In order to users to assign to projects
	I want to create them easily

	Background:
		Given I am on the homepage
		When I follow "New User"

	Scenario: Creating a project
		And I fill in "Name" with "Bob Jones"
		And I press "Create User"
		Then I should see "User has been created"