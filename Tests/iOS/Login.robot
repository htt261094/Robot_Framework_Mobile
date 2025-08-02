*** Settings ***
Library    AppiumLibrary
Resource    ../../Resources/PageObject/KeywordDefinationFiles/LoginScreen.robot
Resource    ../../Resources/hooksAndCommonAction/hooks.robot


*** Test Cases ***
Open app and verify app opened
    Open iOS simulator
    User select login option
    User input phone number
    User input password
    