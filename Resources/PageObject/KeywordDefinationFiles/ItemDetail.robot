*** Settings ***
Library    AppiumLibrary
Variables    ../Locators/CommonElements.py

*** Keywords ***
Add item to cart
    Wait Until Element Is Visible    ${AddToCart_btn}
    Click Element    ${AddToCart_btn}