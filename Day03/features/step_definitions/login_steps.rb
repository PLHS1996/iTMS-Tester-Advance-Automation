# require 'selenium-webdriver'

Given('Go to the login page') do
  require 'selenium-webdriver'
  @driver = Selenium::WebDriver.for :firefox
  @driver.get('http://the-internet.herokuapp.com/login')
  @driver.manage.window.maximize
end

When('Enter username: {string} and password: {string}') do |string, string2|
  @driver.find_element(css: '#username').send_keys(string)
  @driver.find_element(css: '#password').send_keys(string2)
end

When('Press login') do
  @driver.find_element(css: '.radius:nth-child(3)').click
end

Then('{string} result should be listed') do |string|
  @driver.find_element(css: '#flash').text.include?(string)
  @driver.close
end