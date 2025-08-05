*** Settings ***
Library    AppiumLibrary
Resource    ../../Resources/PageObject/KeywordDefinationFiles/iOS/LoginScreen.robot
Resource    ../../Resources/hooksAndCommonAction/hooks.robot


*** Test Cases ***
Open app and verify app opened
    [Tags]    Mandatory
    Load Login Credentials
    Open iOS simulator
    User select login option
    Check Phone Code
    User input phone number
    User input password
    User Agree to T&C
    User tap on login button
    User Close Notification Popup
    User Close Save Password Popup
    User Close Ads
    User see Home Tab