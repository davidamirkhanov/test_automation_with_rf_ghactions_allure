*** Settings ***
Resource        ../page.resource
Variables       test_login_page.yaml
Variables       ../../env/prod.yaml

*** Variables ***
${LOGIN_PAGE_HEADER}=        css=h1
${USERNAME_FIELD}    css=input#username
${PASSWORD_FIELD}    css=input#password
${LOGIN_BUTTON}    css=button#submit-login

*** Keywords ***
Check That Login Page Is Opened
    Check Login Page Header

Check Login Page Header
    Wait Until Element Is Visible    ${LOGIN_PAGE_HEADER}
    Element Text Should Be    ${LOGIN_PAGE_HEADER}    ${LOGIN_PAGE_TITLE_TEXT}

Login With Valid Credentials
    [Documentation]    Logs in using valid username and password credentials.
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON}
    Wait Until Element Is Visible    ${LOGOUT_BUTTON}