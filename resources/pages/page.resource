*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Wait And Click
    [Arguments]    ${selector}
    Wait Until Element Is Enabled    ${selector}
    Click Element    ${selector}
