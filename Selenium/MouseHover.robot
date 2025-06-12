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
        #Mouse Hover
        Mouse Over    xpath://span[normalize-space()='Prime']
        Sleep    2s
        Click Element       xpath://img[@id='multiasins-img-link']
        Sleep    2s
        Element Should Be Visible    xpath://a[@id='a-autoid-0-announce']
        Close Browser