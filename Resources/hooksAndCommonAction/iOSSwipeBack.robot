*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
iOS Back Gesture Using Edge Swipe
    ${width}=     Get Window Width
    ${height}=    Get Window Height

    ${start_x}=   Evaluate    0.05 * ${width}
    ${end_x}=     Evaluate    0.6 * ${width}
    ${y}=         Evaluate    0.5 * ${height}

    Swipe    ${start_x}    ${y}    ${end_x}    ${y}    1000
