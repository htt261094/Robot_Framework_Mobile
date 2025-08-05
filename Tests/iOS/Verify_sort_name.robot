*** Settings ***
Library    AppiumLibrary
Resource    ../../Resources/PageObject/KeywordDefinationFiles/iOS/WatchlistScreen.robot

*** Test Cases ***
User click on Name column and see list is sorted by name
    [Tags]    Mandatory
    User tap on WatchList Tab
    User tap on Name column
    User see Name List is sorted