Feature: Creating projects
	As a user
	In order to have projects to assign users
	I want to create them easily

	Scenario: Creating a project
		Given I am on the homepage
		When I follow "New Project"
		And I fill in "Name" with "Coordinate Things"
		And I press "Create Project"
		Then I should see "Project has been created"