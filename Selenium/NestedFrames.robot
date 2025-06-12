*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/nested_frames

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case chooses one from radio button and checkboxes in Internet - rahulshettyacademy.com
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        #Frames
        Select Frame   xpath://frame[@name='frame-bottom']
        Current Frame Should Contain    BOTTOM
        Unselect Frame
        Select Frame    xpath://frame[@name='frame-top']
        Select Frame    xpath://frame[@name='frame-left']
        Current Frame Should Contain    LEFT
        Unselect Frame
        Select Frame    xpath://frame[@name='frame-right']
        Current Frame Should Contain    RIGHT
        Unselect Frame
        Select Frame    xpath://frame[@name='frame-middle']
        Current Frame Should Contain    MIDDLE
        Unselect Frame
        Close Browser