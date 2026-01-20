*** Settings ***
Resource    page.resource


*** Variables ***
# left panel
${LEFT_PANEL}=      div#leftPanel
${LOGIN_PANEL}=     div#loginPanel


*** Keywords ***
Check Main Page Is Opened
    Wait Until Element Is Visible    ${LOGIN_PANEL}

Check That Lonin Panel Is Displayed
    Wait Until Element Is Visible    ${LOGIN_PANEL}
