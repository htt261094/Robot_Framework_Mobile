*** Settings ***
Library    AppiumLibrary
Variables    ../../../../Resources/PageObject/Locators/iOS/HomeTabLocators.py

*** Keywords ***
User tap on global search icon
    Click Element    ${iOS_Search_btn}