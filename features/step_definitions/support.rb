Given(/^I am on the support page$/) do
  @Threewebsite = Threewebsite.new
	@Threewebsite.three_home_page.load
	@Threewebsite.three_home_page.displayed?
	@Threewebsite.three_home_page.click_support_link
	@Threewebsite.three_home_page.assert_support_url
end

When(/^I select Network & coverage$/) do
	@Threewebsite.three_support_page.click_networkandcoverage_link
end

When(/^I enter a valid postcode$/) do
  @Threewebsite.three_network_page.enter_valid_postcode
end

When(/^I enter a invalid postcode$/) do
	@Threewebsite.three_network_page.enter_invalid_postcode
end

Then(/^I see the outage message$/) do
	@Threewebsite.three_network_page.assert_outage_message
end

Then(/^I see the error message$/) do
	@Threewebsite.three_network_page.assert_error_message
end                                                                        