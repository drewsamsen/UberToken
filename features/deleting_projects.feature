Feature: Deleting Projects
	As a user
	In order to clear unneeded projects
	I want to be able to easily delete them

	Background:
		Given there is a project called "Do good things"
		And I am on the homepage
		When I follow "Do good things"
		And I follow "Delete"
		Then I should see "Project has been deleted."
		And I should not see "Do good things"