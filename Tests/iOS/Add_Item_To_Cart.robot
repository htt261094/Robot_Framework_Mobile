*** Settings ***
Library    AppiumLibrary
Resource    ../../Resources/hooksAndCommonAction/hooks.robot
Resource    ../../Resources/PageObject/KeywordDefinationFiles/HomeScreen.robot
Resource    ../../Resources/PageObject/KeywordDefinationFiles/CommonAction.robot
Resource    ../../Resources/PageObject/KeywordDefinationFiles/ItemDetail.robot


*** Test Cases ***
Open app and verify app opened
    Open iOS simulator