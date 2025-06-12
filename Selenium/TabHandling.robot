*** Settings ***
Library     SeleniumLibrary
Library    XML


*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/windows

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case chooses one from radio button and checkboxes in Internet - rahulshettyacademy.com
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #Window Tab Handling
        Click Element    //a[normalize-space()='Click Here']
        Sleep    2s
        Switch Window       title:New Window
        Element Text Should Be    xpath://h3[normalize-space()='New Window']    New Window
        Switch Window       title:The Internet
        Element Text Should Be    xpath://h3[normalize-space()='Opening a new window']    Opening a new window
        Sleep    2s




        Close Browser