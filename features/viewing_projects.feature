Feature: Viewing projects
	As a user
	In order to assign users to a project
	I want to be able to see a list of projects

	Scenario: Listing all projects
		Given there is a project called "Do great things"
		And I am on the homepage
		When I follow "Do great things"
		Then I should be on the project page for "Do great things"