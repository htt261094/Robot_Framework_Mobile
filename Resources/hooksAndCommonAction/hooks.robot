*** Settings ***
Library    AppiumLibrary
Variables    ../PageObject/TestData/TestData.py

*** Keywords ***
Open Application from simulator
    Open Application    ${Android_remote_url}    automationName=${Android_automationName}    platformName=${Android_platformName}    platformVersion=${Android_platformVersion}  deviceName=${Android_deviceName}  appPackage=${Android_appPackage}   appActivity=${Android_appActivity}

Close Application
    Close Application

Open iOS simulator
    Open Application    ${iOS_remote_url}    automationName=${iOS_automationName}    platformName=${iOS_platformName}    deviceName=${iOS_deviceName}    platformVersion=${iOS_platformVersion}    udid=${iOS_udid}    app=${iOS_app}