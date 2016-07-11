@Support
Feature: Support

	Scenario: Check network coverage with a valid postcode
		Given I am on the support page
		When I select Network & coverage
		And I enter a valid postcode
		Then I see the outage message

	Scenario: Check network coverage with an invalid postcode
		Given I am on the support page
		When I select Network & coverage
		And I enter a invalid postcode
		Then I see the error message