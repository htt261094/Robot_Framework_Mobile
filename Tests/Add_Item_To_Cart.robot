*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/PageObject/hooks.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/HomeScreen.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/CommonAction.robot
Resource    ../Resources/PageObject/KeywordDefinationFiles/ItemDetail.robot


*** Test Cases ***
Open app and verify app opened
    Open Application from simulator
    Verify App is opened

Login to app
    Open left menu and tap Login
    Input Username to textbox
    Input Password to textbox
    Tap Login Button

Add product to cart
    Go to SauceLabs Packback detail screen
    Add item to cart

Verify product is added to cart
    Click on cart
    Verify Items added to cart
    Verify Checkout button is Visible