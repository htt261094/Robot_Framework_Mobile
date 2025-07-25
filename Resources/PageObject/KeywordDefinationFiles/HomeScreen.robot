*** Settings ***
Library    AppiumLibrary
Variables    ../Locators/HomepageLocators.py
Variables    ../Locators/CommonElements.py
Resource    ../KeywordDefinationFiles/CartScreen.robot

*** Keywords ***
Verify App is opened
    Element Should Be Visible    ${AppTitle}

Open left menu and tap Login
    Click Element    ${LeftMenu}
    Wait Until Element Is Visible    ${Login}
    Click Element    ${Login}
    Wait Until Element Is Visible    ${UserName_txtBox}
Input Username to textbox
    Input Text    ${UserName_txtBox}    bob@example.com

Input Password to textbox
    Input Password    ${Password_txtBox}    10203040

Tap Login Button
    Click Element    ${Login_btn}

Verify user login successfully
    Click Element    ${LeftMenu}
    Click Element    ${Login}
    Show empty cart

Go to SauceLabs Packback detail screen
    Wait Until Element Is Visible    xpath=${SauceLabsBackpack}
    Click Element    xpath=${SauceLabsBackpack}