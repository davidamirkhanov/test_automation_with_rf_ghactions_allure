*** Settings ***
Library         dotenv
Library         SeleniumLibrary
Variables       ../resources/env/prod.yaml


*** Variables ***
${BROWSER}=     Chrome
${HEADLESS}=    False
${TIMEOUT}=     10s


*** Keywords ***

Open Browser And Go To Site Under Test
    Open Browser    ${BASE_URL}    browser=${BROWSER}
    Set Selenium Timeout    ${TIMEOUT}
