Feature: Creating projects
	As a user
	In order to have projects to assign users
	I want to create them easily

	Background:
		Given I am on the homepage
		When I follow "Create a workspace"

	Scenario: Creating a project
		And I fill in "Name" with "Coordinate Things"
		And I press "Create Project"
		Then I should see "Project has been created"

	Scenario: Creating a project without a name fails
		And I press "Create Project"
		Then I should see "Name can't be blank"