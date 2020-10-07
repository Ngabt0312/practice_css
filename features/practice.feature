Feature: login page and find menu sale
   I want to find menu sale
   So I have many scenario
    
Scenario: login page and click menu "Sales & Marketing Request" 
    Given find menu sale and creat request
    When input "hunnq" and pass "123456" then click menu "Sales & Marketing Request"
    Then screen "Create New Request" is display
