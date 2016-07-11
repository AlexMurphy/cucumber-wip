@Store
Feature: Store

	Scenario: Buy a Sim 
		Given I am on the store page
		When I select sim
		And I select mobile sim
		And I select a 2GB plan with a micro sim
		Then my selection is displayed in the basket