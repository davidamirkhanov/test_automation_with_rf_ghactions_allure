*** Settings ***
Resource        ../page.resource
Resource        ../secure_page/secure_page.resource
Library         ../test_login_page/test_login_page_helper.py
Variables       test_login_page.yaml
Variables       ../../env/prod.yaml
Variables       ../../test_data.yaml


*** Variables ***
${LOGIN_PAGE_HEADER}=       css=h1
${USERNAME_FIELD}           css=input#username
${PASSWORD_FIELD}           css=input#password
${LOGIN_BUTTON}             css=button#submit-login


*** Keywords ***
Check That Login Page Is Opened
    Check Login Page Header
    Check Login Page Elements

Check Login Page Header
    Wait Until Element Is Visible    ${PAGE_HEADER}
    Element Text Should Be    ${LOGIN_PAGE_HEADER}    ${LOGIN_PAGE_TITLE_TEXT}

Check Login Page Elements
    Element Should Be Visible        ${USERNAME_FIELD}
    Element Should Be Visible        ${PASSWORD_FIELD}
    Element Should Be Visible        ${LOGIN_BUTTON}

Login With Valid Credentials
    [Documentation]    Logs in using valid username and password credentials.
    ${USERNAME}    ${PASSWORD}=    Get Username And Password From The Page
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Check That Secure Page Is Opened

Login With Invalid Password
    [Documentation]    Attempts to log in using a valid username and an invalid password.
    ${USERNAME}    ${PASSWORD}=    Get Username And Password From The Page
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${INVALID_PASSWORD}
    Click Button    ${LOGIN_BUTTON}

Check Login Error Message Is Displayed
    Wait Until Element Is Visible    ${BANNER}
    Element Text Should Be    ${BANNER}    ${INVALID_PASSWORD_MESSAGE_TEXT}
