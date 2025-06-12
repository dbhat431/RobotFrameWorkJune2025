*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/javascript_alerts

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Capture Page Screenshot     C:/Users/paldh/Downloads/robo1.png
        Sleep    2s
        Capture Element Screenshot    xpath://button[@onclick='jsAlert()']      C:/Users/paldh/Downloads/robo2.png
        Close Browser