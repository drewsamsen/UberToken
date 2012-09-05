Feature: Editing Projects
	As a user
	In order to update project information
	I want to be able to do that through an interface

	Background:
		Given there is a project called "Do good things"
		And I am on the homepage
		When I follow "Do good things"
		And I follow "Edit"

	Scenario: Updating a project
		And I fill in "Name" with "Do great things"
		And I press "Update Project"
		Then I should see "Project has been updated"
		And I should be on the project page for "Do great things"
		And I should not see "Do good things"

	Scenario: Updating a project with an invalid name
		And I fill in "Name" with ""
		And I press "Update Project"
		Then I should see "Project has not been updated."