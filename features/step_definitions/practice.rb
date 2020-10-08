Given('find menu sale and creat request') do  
    $driver.get ("http://123.25.30.61:6689/Login.aspx")
    $driver.manage.window.full_screen
end

When('input {string} and pass {string}') do |string, string2|
  $driver.find_element(:id, 'txtUserID').send_keys(string)
  $driver.find_element(:id, 'txtUserPass').send_keys(string2)
  $driver.find_element(:id, 'lnkLogin').click
  $driver.manage.window.full_screen
  $driver.find_element(:css, '.main-navigation-menu > li:nth-child(2) .title').click
  $driver.find_element(:link_text, 'Create New Request').click
end

Then('screen {string} is display') do |string|
    expect($driver.find_element(:link_text, 'Create New Request').text).to include(string)
end