require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://itmscoaching.herokuapp.com/buttons"
button = driver.find_element(xpath: '//button[.="Primary"]')
button_text = button.text
button_tagname = button.tag_name
puts "BUTTON TEXT: #{button_text}"
puts "BUTTON TAG: #{button_tagname}"
driver.quit