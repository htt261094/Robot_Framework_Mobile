*** Settings ***
Library    AppiumLibrary
Variables    ../Locators/CommonElements.py

*** Keywords ***
Click on cart
    Click Element    ${CartIcon}