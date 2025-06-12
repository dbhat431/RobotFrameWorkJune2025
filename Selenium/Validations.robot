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

#         Element Should Be Visible    locator
#         Element Text Should Be    locator    expected
#         Element Attribute Should Be    source    name    expected
#         Element Should Be Disabled    locator
#         Element Should Be Focused    locator
#         Element Should Exist    source
#         Element Should Not Be Visible    locator




        Close Browser