 require 'selenium-webdriver'

Given('the login page is opened successfully') do
  @driver = Selenium::WebDriver.for :firefox
  @driver.get('http://the-internet.herokuapp.com/login')
  @driver.manage.window.maximize
end

When('user input username {string} and password {string}') do |string, string2|
  @driver.find_element(css: '#username').send_keys(string)
  @driver.find_element(css: '#password').send_keys(string2)
  @driver.find_element(css: '.radius:nth-child(3)').click
end

Then('the message {string} should be displayed') do |string|
  @driver.find_element(css: '#flash').text.include?(string)
  @driver.close
end