*** Settings ***
Library    AppiumLibrary
Library    Collections
Library    String

*** Keywords ***
Verify Name and Sort
    @{elements}=    Get Webelements    //XCUIElementTypeCell/XCUIElementTypeStaticText[1]
    @{PriceList}=    Create List
    FOR    ${el}    IN    @{elements}
        ${text}=    Get Element Attribute    ${el}    label
        Append To List    ${PriceList}    ${text}
    END

    ${sorted}=    Evaluate    sorted(${PriceList}, key=lambda x: float(x.replace(',', '')) if x.replace(',', '').replace('.', '', 1).isdigit() else -1, reverse=True)
    Should Be Equal    ${PriceList}    ${sorted}