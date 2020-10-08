require "selenium-webdriver"
require "json"
$driver = Selenium::WebDriver.for :chrome
at_exit do
    $driver.close
end