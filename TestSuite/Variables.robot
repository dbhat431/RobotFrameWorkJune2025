*** Settings ***
Library     SeleniumLibrary
Variables       ./../variables.py

*** Variables ***
${name}     Dhrithi
${city}     Mangalore
@{list1}        green       red     blue
&{dict}     username=Admin      password=admin123


*** Test Cases ***
Define variables
        Log    ${name}
        Log    ${city}
        Log    ${list1}
        Log    ${list1[0]}
        FOR    ${element}    IN    @{LIST1}
            Log    ${element}
        END
        Log     ${dict}[username]
        Log     ${dict}[password]

Set variables at Testcase level
        Set Test Variable    ${address}     kapikadroad
        Log    ${address}


Set variables at global level
        Log     ${username}
        Log     ${password}