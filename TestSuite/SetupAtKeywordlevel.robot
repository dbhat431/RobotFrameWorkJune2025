*** Test Cases ***
Login
        Login
AddToCart
        AddToCart

*** Keywords ***
Login
        [Setup]     Launch browser
        [Teardown]      Close Browser
        Log To Console    Logging to application
        Log To Console   user enters the username
        Log To Console    user enters the password
        Log To Console   user clicks on the login button
        Log To Console    user is navigated to home page
AddToCart
        [Setup]     Launch browser
        [Teardown]      Close Browser
        Log To Console    Adding products to cart
        Log To Console    user enters the username
        Log To Console   user enters the password
        Log To Console    user clicks on the login button
        Log To Console    user is navigated to home page
        Log To Console    user adds the product to cart
        Log To Console    User validates that the product is added to cart

Launch Browser
        Log To Console     loginwithapplication
Close Browser
        Log To Console     Closing the browser