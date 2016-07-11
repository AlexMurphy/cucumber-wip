class Pages::Threesimonlydetailspage < SitePrism::Page

  def click_mobile_phones_link
		sleep(10)
		page.find("#imp_norm")[:class].include?("Minimise")
		page.find(:xpath, "/html/body/div[2]/div[2]/img").click
		click_link('Mobile phones.')
  	   uri = URI.parse(current_url)
   "#{uri.path}?#{uri.query}".should == "/Store/SIM/Plans_for_phones?"
  end

end
