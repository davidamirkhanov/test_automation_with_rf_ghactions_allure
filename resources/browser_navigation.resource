*** Settings ***
Resource         general_settings.resource


*** Keywords ***

Open Browser And Go To Site Under Test
    Open Browser    ${BASE_URL}    browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    ${TIMEOUT}
