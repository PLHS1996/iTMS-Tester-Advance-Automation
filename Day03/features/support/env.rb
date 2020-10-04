require 'selenium-webdriver'
$driver = Selenium::WebDriver.for :firefox
at_exit do
    $driver.close
end