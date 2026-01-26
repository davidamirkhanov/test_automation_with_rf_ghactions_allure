*** Settings ***
Library         SeleniumLibrary
Variables       ../resources/env/prod.yaml


*** Variables ***
${BROWSER}=     Chrome
${TIMEOUT}=     10s


*** Keywords ***

Open Browser And Go To Site Under Test
    Open Browser    ${BASE_URL}    browser=${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    ${TIMEOUT}
