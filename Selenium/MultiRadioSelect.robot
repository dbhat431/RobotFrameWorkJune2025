*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case chooses one from radio button and checkboxes in Internet - rahulshettyacademy.com
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #get the common attribute among the radio buttons
        ${elements}=        Get WebElements    xpath://input[@class='radioButton']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}
            Sleep    2s
        END
        ${elementss}=        Get WebElements    xpath://input[@type='checkbox']
        FOR    ${element}    IN    @{elementss}
            Click Element    ${element}
            Sleep    2s
        END     
        Close Browser
