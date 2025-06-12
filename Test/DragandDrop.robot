*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/drag_and_drop

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case chooses one from radio button and checkboxes in Internet - rahulshettyacademy.com
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #drag and drop
        Sleep    2s
        Drag And Drop    xpath://div[@id='column-a']    xpath://div[@id='column-b']
        Sleep    2s
        Close Browser