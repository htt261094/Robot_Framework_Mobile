*** Settings ***
Library    AppiumLibrary
Resource    ../../Resources/PageObject/KeywordDefinationFiles/iOS/GlobalSearchScreen.robot
Resource    ../../Resources/PageObject/KeywordDefinationFiles/iOS/TradeTicket.robot
Resource    ../../Resources/PageObject/KeywordDefinationFiles/iOS/HomeScreen.robot

*** Test Cases ***
User search for counter
    User tap on global search icon
    User input counter to search
    User tap on the search result
    User see counter name on the title

    