require 'selenium-webdriver'


Given('the login page is opened successfull') do
    @driver = Selenium::WebDriver.for :firefox
    @username = 'tomsmith'
    @password = 'SuperSecretPassword!'
    @driver.get('http://the-internet.herokuapp.com/login')
    @driver.manage.window.maximize
  end

  When('user input the username and password valid') do
    @driver.find_element(css: '#username').send_keys(@username)
    @driver.find_element(css: '#password').send_keys(@password)
    @driver.find_element(css: '.radius:nth-child(3)').click
  end
  
  Then('user can login to the system') do
    @driver.find_element(css: '#flash').text.include?("You logged into a secure area!")
    @driver.close
  end

  When('user input the username and password invalid') do
    @driver.find_element(css: '#username').send_keys('')
    @driver.find_element(css: '#password').send_keys('')
    @driver.find_element(css: '.radius:nth-child(3)').click
  end

  Then('user cannot login to the system') do
    @driver.find_element(css: '#flash').text.include?("Your username is invalid!")
    @driver.close
  end