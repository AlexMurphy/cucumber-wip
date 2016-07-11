class Pages::Threehomepage < SitePrism::Page

  set_url "http://www.three.co.uk"
  set_url_matcher /three.co.uk/

  def click_store_link
    click_link 'Store'
  end

  def click_support_link
  	click_link 'Support'
	end

  def search_for_iphone_contract
    page.find(:xpath,"/html/body/header/div[3]/ul/li[1]").click
    fill_in 'search-query', :with => 'iPhone Contract'
    click_button('Search')   
  end

  def assert_store_url
  	   uri = URI.parse(current_url)
   "#{uri.path}?#{uri.query}".should == "/store?"
 	end

  def assert_support_url
  	   uri = URI.parse(current_url)
   "#{uri.path}?#{uri.query}".should == "/Support?"
 	end

end
