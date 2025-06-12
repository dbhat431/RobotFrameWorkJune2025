*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://www.amazon.in/

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case chooses one from radio button and checkboxes in Internet - rahulshettyacademy.com
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #right click
        Open Context Menu    xpath://a[normalize-space()='Mobiles']
        Sleep    2s
        #double click
        Double Click Element    xpath://a[normalize-space()='Sell']
        Sleep    2s
        Close Browser