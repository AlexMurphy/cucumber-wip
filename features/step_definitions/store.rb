Given(/^I am on the store page$/) do
  @Threewebsite = Threewebsite.new
	@Threewebsite.three_home_page.load
	@Threewebsite.three_home_page.displayed?
	@Threewebsite.three_home_page.click_store_link
	@Threewebsite.three_home_page.assert_store_url
end

When(/^I select sim$/) do
  @Threewebsite.three_store_page.click_sims_link
end

When(/^I select mobile sim$/) do
  @Threewebsite.three_sim_only_details_page.click_mobile_phones_link
end

When(/^I select a 2GB plan with a micro sim$/) do
	@Threewebsite.three_plans_for_phones_page.click_2gb_plan_link
end

Then(/^my selection is displayed in the basket$/) do
	@Threewebsite.three_basket_page.assert_content_of_basket
end
