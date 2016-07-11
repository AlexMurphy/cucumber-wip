class Pages::Threesupportpage < SitePrism::Page

  def click_networkandcoverage_link
		click_link('Network & coverage.')
  	   uri = URI.parse(current_url)
   "#{uri.path}?#{uri.query}".should == "/support/network_and_coverage/network_support?"
  end

end
