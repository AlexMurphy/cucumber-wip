class Pages::Threeplansforphonespage < SitePrism::Page

  def click_2gb_plan_link
		page.find(:xpath, "/html/body/div[2]/div[1]/img").click
		page.find(:xpath,"/html/body/div[1]/div[2]/ul/li[4]/div/div/span[6]/a[2]").click
		if page.has_xpath?("/html/body/div[1]/div[4]/dl/dd[1]/div/section/ul/li[2]/div/a")
			page.find(:xpath,"/html/body/div[1]/div[4]/dl/dd[1]/div/section/ul/li[2]/div/a").click
		end
		rescue 
			if page.has_xpath?("/html/body/div/form/fieldset/ul/li[2]/a")
				page.find(:xpath,"/html/body/div/form/fieldset/ul/li[2]/a").click
			end
			rescue
				if page.has_xpath?("/html/body/div[1]/form/fieldset/ul/li[2]/a")
					page.find(:xpath,"/html/body/div[1]/form/fieldset/ul/li[2]/a").click
				end
		end
  end