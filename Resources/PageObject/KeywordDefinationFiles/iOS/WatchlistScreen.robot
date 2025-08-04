*** Settings ***
Library    AppiumLibrary
Variables    ../../../../Resources/PageObject/Locators/iOS/WatchlistTabLocators.py
Resource    ../../../../Resources/Ultis/Sorting.robot


*** Keywords ***
User tap on WatchList Tab
    Click Element    ${watchlist_tab}

User tap on Name column
    Sleep    5s
    Click Element    ${name_column}

User see Name List is sorted
    Verify Name and Sort