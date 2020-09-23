require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.get 'http://itmscoaching.com'
puts driver.current_url
puts driver.title