*** Settings ***
Suite Setup     Launch Browser
Suite Teardown      Close Browser
Resource    ../Resources/Resource.robot

*** Test Cases ***
Testcase1
        Log To Console    Execute testcase1

Testcase2
        Log To Console    Execute testcase2

Testcase3
        Log To Console   Execute testcase3

