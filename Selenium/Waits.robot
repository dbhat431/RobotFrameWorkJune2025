*** Settings ***
Library     SeleniumLibrary
Library    XML


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/nested_frames

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case chooses one from radio button and checkboxes in Internet - rahulshettyacademy.com
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #Waits
#        Wait Until Element Is Visible    locator
#        Wait Until Page Does Not Contain Element    locator
#        Wait Until Keyword Succeeds    retry    retry_interval    name
#        Wait Until Element Contains    locator    text
#        Wait Until Element Is Enabled    locator
#        Wait Until Page Contains Element   locator
#        Wait Until Element Does Not Contain    locator    text
#        Wait Until Element Is Not Visible    locator

        Close Browser