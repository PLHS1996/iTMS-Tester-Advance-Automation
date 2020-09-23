require "selenium-webdriver"
driver = Selenium::WebDriver.for:chrome
driver.navigation.to "https://www.youtube.com/"
#add text box
autocomplete = driver.find_element(name: "search_query")
autocomplete.send_keys("autotest")
driver.manage.timeouts.implicit_wait = 1
autocomplete_result = driver.find_element(aria-activedescendant: "sbse0")
autocomplete_result.click
browser.quit