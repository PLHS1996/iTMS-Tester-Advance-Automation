require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://www.seleniumeasy.com/test/javascript-alert-box-demo.html"

alert_button = driver.find_element(xpath: "//button[contains(text(),'Click for Prompt Box')]")
alert_button.click
driver.switch_to.alert.send_keys("selenium")
sleep 2

driver.switch_to.alert.accept