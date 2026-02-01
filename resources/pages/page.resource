*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${PAGE_HEADER}=     css=h1
${BANNER}=          css=div#flash-message


*** Keywords ***
Wait And Click
    [Arguments]    ${selector}
    Wait Until Element Is Enabled    ${selector}
    Click Element    ${selector}
