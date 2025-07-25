*** Settings ***
Library    AppiumLibrary
Variables    ../Locators/CartLocators.py
Variables    ../Locators/HomepageLocators.py

*** Keywords ***
Show empty cart
    Element Text Should Be    ${EmptyCart}    Oh no! Your cart is empty. Fill it up with swag to complete your purchase.

Verify Items added to cart
    Element Text Should Be    ${ProductName}    Sauce Labs Backpack

Verify Checkout button is Visible
    Element Should Be Visible    ${Checkout_btn}

Click Go Shopping button
    Wait Until Element Is Visible    ${AppTitle}
    Click Element    ${GoShopping_btn}