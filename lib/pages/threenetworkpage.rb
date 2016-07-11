class Pages::Threenetworkpage < SitePrism::Page

  element :postcodeSearch, "input[name='postcode']"

  def enter_valid_postcode
    fill_in 'postcode', :with => 'EC2M 7AD'
		click_button('postcode-action')
  end

  def enter_invalid_postcode
    fill_in 'postcode', :with => 'sdkhfkjsfsdfnd'
		click_button('postcode-action')
  end

  def assert_outage_message
		contents = page.text
    if contents.include? "We're really sorry. There's a long-term outage in this area."
      puts "valid message present"
    else
      fail("Message not present") 
    end
  end

  def assert_error_message
    contents = page.text
    if contents.include? "Oops. Something's gone wrong. Can you please try again?"
      puts "valid message present"
    else
      fail("Message not present") 
    end
  end

end