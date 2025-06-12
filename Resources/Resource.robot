*** Keywords ***
loginwithapplication
    Log To Console     user enters the username
    Log To Console     user enters the password
    Log To Console     user clicks on the login button
    Log To Console     user is navigated to home page

Launch Browser
        Log To Console     loginwithapplication
Close Browser
        Log To Console     Closing the browser

Open db conncetion
        Log To Console   Open the db conncetion

Close the db conncetion
        Log To Console   Close the db conncetion
