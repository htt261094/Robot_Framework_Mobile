*** Settings ***
Library    AppiumLibrary
Library    JSONLibrary
Library    OperatingSystem
Library    Collections

*** Variables ***
${Evn}    Resources/PageObject/TestData/Environment.json
${AccountList}    Resources/PageObject/TestData/Account.json

*** Keywords ***
Read Android Config
    [Documentation]    Reads and Return all Android Capabilities
    File Should Exist    ${Evn}
    ${json_text}=    Get File    ${Evn}
    ${Android_evn}=    Evaluate    json.loads('''${json_text}''')    json
    ${android}=        Get From Dictionary    ${Android_evn}    Android_Emulator

    ${remote_url}=         Get From Dictionary    ${android}    remote_url
    ${automationName}=     Get From Dictionary    ${android}    automationName
    ${deviceName}=         Get From Dictionary    ${android}    deviceName
    ${platformName}=       Get From Dictionary    ${android}    platformName
    ${platformVersion}=    Get From Dictionary    ${android}    platformVersion
    ${appPackage}=         Get From Dictionary    ${android}    appPackage
    ${appActivity}=        Get From Dictionary    ${android}    appActivity

    ${Android_Desired_Capabilities}=    Create Dictionary
    ...    remote_url=${remote_url}
    ...    automationName=${automationName}
    ...    deviceName=${deviceName}
    ...    platformName=${platformName}
    ...    platformVersion=${platformVersion}
    ...    appPackage=${appPackage}
    ...    appActivity=${appActivity}
    RETURN    ${Android_Desired_Capabilities}

Read iOS Config
    [Documentation]    Reads and return all iOS Capabilities
    File Should Exist    ${Evn}
    ${json_text}=    Get File    ${Evn}
    ${iOS_evn}=    Evaluate    json.loads('''${json_text}''')    json
    ${iOS}=        Get From Dictionary    ${iOS_evn}    iOS_Emulator
    
    ${remote_url}=         Get From Dictionary    ${iOS}    remote_url
    ${automationName}=     Get From Dictionary    ${iOS}    automationName
    ${deviceName}=         Get From Dictionary    ${iOS}    deviceName
    ${platformName}=       Get From Dictionary    ${iOS}    platformName
    ${platformVersion}=    Get From Dictionary    ${iOS}    platformVersion
    ${app}=         Get From Dictionary    ${iOS}    app
    ${udid}=        Get From Dictionary    ${iOS}    udid
    ${noReset}=    Get From Dictionary    ${iOS}    noReset
    ${useNewWDA}=    Get From Dictionary    ${iOS}    useNewWDA

    ${iOS_Desired_Capabilities}=    Create Dictionary
    ...    remote_url=${remote_url}
    ...    automationName=${automationName}
    ...    deviceName=${deviceName}
    ...    platformName=${platformName}
    ...    platformVersion=${platformVersion}
    ...    app=${app}
    ...    udid=${udid}
    ...    noReset=${noReset}
    ...    useNewWDA=${useNewWDA}
    RETURN    ${iOS_Desired_Capabilities}

Get Account Credentials
    [Arguments]    ${account_name}
    File Should Exist    ${AccountList}
    ${json_text}=    Get File    ${AccountList}
    ${account_json}=    Evaluate    json.loads('''${json_text}''')    json

    ${accounts}=    Get From Dictionary    ${account_json['HK']}    Register_Account
    FOR    ${item}    IN    @{accounts}
        ${has_key}=    Run Keyword And Return Status    Dictionary Should Contain Key    ${item}    ${account_name}
        IF    ${has_key}
            ${account_data}=    Get From Dictionary    ${item}    ${account_name}
            ${phone}=    Get From Dictionary    ${account_data}    phoneNumber
            ${password}=    Get From Dictionary    ${account_data}    password
            RETURN    ${phone}    ${password}
        END
    END
    
    FAIL    Account '${account_name}' not found in Account List