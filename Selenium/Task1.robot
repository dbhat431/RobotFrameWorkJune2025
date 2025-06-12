*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}          https://www.tutorialspoint.com/selenium/practice/login.php

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to sucessfuly login with valid credentials
        Open Browser    ${url}  ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='email']   timeout=5
        Input Text    xpath://input[@id='email']   db@gmail.com
        Input Text    xpath://input[@id='password']   db123
        Click Element    xpath://input[@value='Login']
        Close Browser