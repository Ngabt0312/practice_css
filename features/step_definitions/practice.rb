$purpose = 'test'
$qty = '1'
$cost = '200000'

Given('create request new successfully') do
    $driver.get ("http://123.25.30.61:6689/Login.aspx")
    $driver.manage.window.full_screen
end

When('input acc {string} and pass {string}') do |string, string2|
  def submit_form (driver)
    $driver.find_element(:id, 'txtUserID').send_keys(string)
    $driver.find_element(:id, 'txtUserPass').send_keys string2, :enter
    $driver.find_element(:css, '.clip-phone-2').click
    $driver.find_element(:css, '.clip-file-plus').click
    $driver.manage.window.full_screen
    $driver.find_element(:id, 'ctl00_MainContent_SalesMarketingRequest1_araPurpose').send_keys($purpose)
    #$driver.find_element(:css, '.select2-selection__rendered').click
    options = driver.find_element(:id, 'ctl00_MainContent_SalesMarketingRequest1_lvApplyCostCenter_ctrl0_grdRequestItem_ctl02_hdfItemId')
    select_object = Selenium::WebDriver::Support::Select.new(options)
    select_object.select_by(:value, "2651090005_0.00_0_0_0__0")
    $driver.find_element(:id, 'ctl00_MainContent_SalesMarketingRequest1_lvApplyCostCenter_ctrl0_grdRequestItem_ctl02_txtQuantity').send_keys($qty)
    $driver.find_element(:id, 'ctl00_MainContent_SalesMarketingRequest1_lvApplyCostCenter_ctrl0_grdRequestItem_ctl02_txtUnitCost').send_keys($cost)
    $driver.find_element(:id, 'ctl00_MainContent_SalesMarketingRequest1_divSubmitClick').click
    $driver.find_element(:css, '.ui-state-focus > .ui-button-text').click
    $driver.find_element(:css, '.ui-button-text:nth-child(1)').click
  end
end

Then('screen {string} is display') do |string|
    expect($driver.find_element(:link_text, 'Home').text).to include(string)
end