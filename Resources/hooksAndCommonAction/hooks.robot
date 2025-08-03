*** Settings ***
Library    AppiumLibrary
Library    JSONLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${jsonFile}    Resources/PageObject/TestData/Environment.json

*** Keywords ***
Open Android simulator
    File Should Exist    ${jsonFile}
    ${json_text}=    Get File    ${jsonFile}
    ${Android_evn}=    Evaluate    json.loads('''${json_text}''')    json
    ${android}=        Get From Dictionary    ${Android_evn}    Android

    ${remote_url}=         Get From Dictionary    ${android}    remote_url
    ${automationName}=     Get From Dictionary    ${android}    automationName
    ${deviceName}=         Get From Dictionary    ${android}    deviceName
    ${platformName}=       Get From Dictionary    ${android}    platformName
    ${platformVersion}=    Get From Dictionary    ${android}    platformVersion
    ${appPackage}=         Get From Dictionary    ${android}    appPackage
    ${appActivity}=        Get From Dictionary    ${android}    appActivity
    Open Application
    ...    ${remote_url}
    ...    automationName=${automationName}
    ...    deviceName=${deviceName}
    ...    platformName=${platformName}
    ...    platformVersion=${platformVersion}
    ...    appPackage=${appPackage}
    ...    appActivity=${appActivity}

Close Application
    Close Application