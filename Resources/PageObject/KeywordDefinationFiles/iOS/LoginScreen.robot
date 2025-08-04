*** Settings ***
Library    AppiumLibrary
Library    Collections
Variables    ../../../../Resources/PageObject/Locators/iOS/SignUpScreenLocators.py
Variables    ../../../../Resources/PageObject/Locators/iOS/HomeTabLocators.py
Resource    ../../../../Resources/Ultis/ReadJsonFile.robot


*** Keywords ***
Load Login Credentials
    ${phoneNumber}    ${password}=    Get Account Credentials    000003
    Set Suite Variable    ${phoneNumber}
    Set Suite Variable    ${password}

Change Phone Code
    Click Element    ${iOS_phoneCode}
    Input Text    ${iOS_Region_Searchbox}    Hong Kong
    Wait Until Element Is Visible    ${iOS_HongKong_Code}
    Click Element    ${iOS_HongKong_Code}
Check Phone Code
    ${actual_code}=    Get Text    ${iOS_phoneCode}
    Run Keyword If    '${actual_code}' != '+852'    Change Phone Code
User select login option
    Click Element   ${iOS_Signup_Login_btn}

User input phone number
    Input Text    ${iOS_PhoneNo_txtbox}    ${phoneNumber}

User input password
    Input Text    ${iOS_Password_txtbox}    ${password}

User Agree to T&C
    Click Element    ${iOS_TnC_checkbox}

User Close Notification Popup
    Wait Until Element Is Visible    ${iOS_Cancel_Popup}
    Click Element    ${iOS_Cancel_Popup}

User Close Ads
    Click Element    ${iOS_Close_Ads}

User tap on login button
    Click Element    ${iOS_Login_btn}

User Close Save Password Popup
    Click Element    ${iOS_Cancel_Save_Password_PopUp}

User see Home Tab
    Element Should Be Visible    ${iOS_Home_Tab}