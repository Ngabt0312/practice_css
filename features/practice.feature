Feature: login page and find menu sale
   I want to find menu sale
   So I have many scenario
    
Scenario: create request new menu sale
    Given create request new successfully
    When input acc "hungnq" and pass "123456" 
    Then screen "Home" is display

