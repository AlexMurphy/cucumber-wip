class Pages::Threeresultspage < SitePrism::Page

  def assert_iphone_search_results
		contents = page.text
    if contents.include? "6 is available on Three. Order it online today. You can even get it delivered to store – another reason to choose"
      puts "valid message present"
    else
      fail("Message not present") 
    end
  end

end