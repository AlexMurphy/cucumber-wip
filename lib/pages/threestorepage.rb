class Pages::Threestorepage < SitePrism::Page

  def click_sims_link
		click_link('SIM Only deals.')
  	   uri = URI.parse(current_url)
   "#{uri.path}?#{uri.query}".should == "/Store/SIM?"
  end

end
