*** Settings ***
Library    AppiumLibrary
Variables    ../../../../Resources/PageObject/Locators/iOS/GlobalSearchLocators.py

*** Keywords ***
User input counter to search
    Input Text    ${iOS_search_textbox}    Apple

User tap on the search result
    Wait Until Element Is Visible    ${iOS_search_result}
    Click Element    ${iOS_search_result}