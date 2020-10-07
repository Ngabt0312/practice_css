require "selenium-webdriver"
Given('find menu sale and creat request') do
    $driver.get ("http://123.25.30.61:6689/Dashboard.aspx")
    $driver.manage.window.fullsize
  end

  When('input {string} and pass {string} then click menu {string}') do |string, string2, string3|
    $driver.find_element(:css, "#txtUserID").send_keys (string)
    $driver.find_element(:css, "#txtUserPass").send_keys (string2)
    $driver.find_element(:css, ".clip-phone-2").send_keys (string3).click

  Then('screen {string} is display') do |string|
    expect($driver.find_element(:css, '.clip-file-plus').text).to include(string)
    $driver.close
  end