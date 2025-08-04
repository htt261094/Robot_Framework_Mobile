*** Settings ***
Library    AppiumLibrary
Variables    ../../../../Resources/PageObject/Locators/iOS/TradeTicketLocator.py

*** Keywords ***
User see counter name on the title
    Element Should Contain Text    ${iOS_Counter_Title}    Apple