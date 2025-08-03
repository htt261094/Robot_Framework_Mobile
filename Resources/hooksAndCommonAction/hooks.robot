*** Settings ***
Library    AppiumLibrary
Resource    ../../Resources/Ultis/ReadJsonFile.robot

*** Keywords ***
Open Android simulator
    ${Android_caps}=    Read Android Config
    Open Application
    ...    ${Android_caps['remote_url']}
    ...    automationName=${Android_caps['automationName']}
    ...    deviceName=${Android_caps['deviceName']}
    ...    platformName=${Android_caps['platformName']}
    ...    platformVersion=${Android_caps['platformVersion']}
    ...    appPackage=${Android_caps['appPackage']}
    ...    appActivity=${Android_caps['appActivity']}


Open iOS simulator
    ${iOS_caps}=    Read iOS Config
    Log    ${iOS_caps}
    Open Application
    ...    remote_url=${iOS_caps['remote_url']}
    ...    automationName=${iOS_caps['automationName']}
    ...    deviceName=${iOS_caps['deviceName']}
    ...    platformName=${iOS_caps['platformName']}
    ...    platformVersion=${iOS_caps['platformVersion']}
    ...    app=${iOS_caps['app']}
    ...    udid=${iOS_caps['udid']}
    ...    noReset=${iOS_caps['noReset']}
    ...    useNewWDA=${iOS_caps['useNewWDA']}