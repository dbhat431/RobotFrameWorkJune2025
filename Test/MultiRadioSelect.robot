*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case chooses one from radio button and checkboxes in Internet - rahulshettyacademy.com
        ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        Call Method    ${chrome options}    add_argument    --headless
        Call Method    ${chrome options}    add_argument    --no-sandbox
        Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
        Create WebDriver    Chrome    options=${chrome options}
        Go To     https://rahulshettyacademy.com/AutomationPractice/
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
