require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://www.seleniumeasy.com/test/javascript-alert-box-demo.html"

alert_button = driver.find_element(xpath: "//button[@class='btn btn-default btn-lg'][contains(text(),'Click me!')]")
alert_button.click
sleep 2

driver.switch_to.alert.accept