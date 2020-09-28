require 'selenium-webdriver'

Given('the login page is opened successfull') do
    @driver = Selenium::WebDriver.for :firefox
    @driver.get('http://the-internet.herokuapp.com/login')
    @driver.manage.window.maximize
  end

  When('user input the username is {string} and password is {string}') do |string, string2|
    @driver.find_element(css: '#username').send_keys(string)
    @driver.find_element(css: '#password').send_keys(string2)
    @driver.find_element(css: '.radius:nth-child(3)').click
  end

  Then('user can login to the system') do
    @driver.find_element(css: '#flash').text.include?("You logged into a secure area!")
    @driver.close
  end

  When('user input username and password are wrong') do
    @driver.find_element(css: '#username').send_keys('')
    @driver.find_element(css: '#password').send_keys('')
    @driver.find_element(css: '.radius:nth-child(3)').click
  end

  Then('user cannot login to the system with username and password are wrong') do
    @driver.find_element(css: '#flash').text.include?("Your username is invalid!")
    @driver.close
  end

  When('user input username is {string} and password is wrong') do |string|
    @driver.find_element(css: '#username').send_keys(string)
    @driver.find_element(css: '#password').send_keys('')
    @driver.find_element(css: '.radius:nth-child(3)').click
  end
  
  Then('user cannot login to the system with username and password is wrong') do
    @driver.find_element(css: '#flash').text.include?("Your password is invalid!")
    @driver.close
  end