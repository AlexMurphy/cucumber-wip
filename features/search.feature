@Search
Feature: Search

	Scenario: Check network coverage with a valid postcode
		Given I am on the homepage page
		When I run a search for an iPhone contract
		Then I see an iPhone contract in the results page