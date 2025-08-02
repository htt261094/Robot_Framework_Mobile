*** Settings ***
Library    AppiumLibrary
Variables    ../../../Resources/PageObject/Locators/SignUpScreenLocators.py
Variables    ../../../Resources/PageObject/TestData/TestData.py


*** Keywords ***
User select login option
    Click Element   ${iOS_Signup_Login_btn}

User input phone number
    Input Text    ${iOS_PhoneNo_txtbox}    ${Phone_Number}

User input password
    Input Text    ${iOS_Password_txtbox}    ${Password}

User tap on login button
    Click Element    ${iOS_Login_btn}