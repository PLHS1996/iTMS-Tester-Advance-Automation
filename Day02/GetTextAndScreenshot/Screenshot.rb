require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

begin
  driver.get 'https://itmscoaching.com/'
  driver.save_screenshot('./itmscoaching.png')
end 