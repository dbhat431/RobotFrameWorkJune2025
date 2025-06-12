*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/key_presses

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case chooses one from radio button and checkboxes in Internet - rahulshettyacademy.com
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #Keyboard events
        Press Key    xpath://input[@id='target']    SPACE
        Sleep    2s
        Press Key    xpath://input[@id='target']    CNTRL
        Sleep    2s
        Press Key    xpath://input[@id='target']    SHIFT
        Close Browser