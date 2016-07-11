class Pages::Threebasketpage < SitePrism::Page

  def assert_content_of_basket
		contents = page.text
    if contents.include? "SIM 2GB Data, 200 Minutes - 12 Months."
      puts "valid message present"
    else
      fail("Message not present") 
    end
  end

end