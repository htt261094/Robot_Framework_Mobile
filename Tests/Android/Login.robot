*** Settings ***
Library    AppiumLibrary
Resource    ../../Resources/PageObject/KeywordDefinationFiles/LoginScreen.robot
Resource    ../../Resources/hooksAndCommonAction/hooks.robot


*** Test Cases ***
Open app and verify app opened
    Open Android simulator
    