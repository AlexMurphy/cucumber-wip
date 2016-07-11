Given(/^I am on the homepage page$/) do
  @Threewebsite = Threewebsite.new
	@Threewebsite.three_home_page.load
	@Threewebsite.three_home_page.displayed?
end                                                                          
                                                                             
When(/^I run a search for an iPhone contract$/) do                           
	@Threewebsite.three_home_page.search_for_iphone_contract
end                                                                          
                                                                             
Then(/^I see an iPhone contract in the results page$/) do                    
  @Threewebsite.three_results_page.assert_iphone_search_results
end                                                                                                                                               