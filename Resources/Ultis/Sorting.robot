*** Settings ***
Library    AppiumLibrary
Library    Collections
Library    String

*** Keywords ***
Verify Price and Sort
    [Arguments]    ${row_path}    ${price_index}
    ${rows}=    Get Webelements    ${row_path}
    @{prices}=    Create List
    FOR    ${row}    IN     ${rows}
        ${cells}    Get Webelements    xpath=.//XCUIElementTypeStaticText
        ${price}=    Get Text    ${cells}[${price_index}]
        ${clean}=    Replace String    ${price}    ,    ""
        ${number}=    Convert To Number    ${clean}
        Append To List    ${prices}    ${number}
    END

    ${sorted}=    Copy List    ${prices}
    Sort List    ${sorted}
    Should Be Equal    ${prices}    ${sorted}