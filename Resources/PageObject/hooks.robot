*** Settings ***
Library    AppiumLibrary
Variables    ${CURDIR}/TestData/TestData.py

*** Keywords ***
Open Application from simulator
    Open Application    ${remote_url}    automationName=${automationName}    platformName=${platformName}    platformVersion=${platformVersion}  deviceName=${deviceName}  appPackage=${appPackage}   appActivity=${appActivity}

Close Application
    Close Application