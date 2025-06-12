*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://www.tutorialspoint.com/selenium/practice/register.php

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfully Login to the internet.registerpage
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible       //input[@id='firstname']      timeout=5
        Input Text    //input[@id='firstname']    Dhrithi
        Input Text    //input[@id='lastname']     Bhat
        Input Text    //input[@id='username']    dhrithii13
        Input Text    //input[@id='password']    dhrithi123
        Click Element    //input[@value='Register']
        Close Browser

