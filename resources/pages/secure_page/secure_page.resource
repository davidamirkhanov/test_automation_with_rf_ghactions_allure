*** Settings ***
Resource        ../page.resource
Variables       secure_page.yaml


*** Variables ***
${LOGOUT_BUTTON}=                   xpath=//a[normalize-space(.)='Logout']


*** Keywords ***
Check That Secure Page Is Opened
    [Documentation]    Verifies that the secure page is opened by checking header,
    ...    login confirmation banner, and logout button.
    Check Secure Page Header
    Check Login Confimation Banner
    Check Logount Button Is Visible

Check Secure Page Header
    [Documentation]    Verifies that the secure page header is visible and displays the correct title text.
    Wait Until Element Is Visible    ${PAGE_HEADER}
    Element Text Should Be    ${PAGE_HEADER}    ${SECURE_PAGE_TITLE_TEXT}

Check Login Confimation Banner
    [Documentation]    Verifies that the login confirmation banner is visible and displays the correct message text.
    Wait Until Element Is Visible    ${BANNER}
    Element Text Should Be    ${BANNER}    ${LOGIN_CONFIRMATION_BANNER_TEXT}

Check Logount Button Is Visible
    [Documentation]    Verifies that the logout button is visible.
    Wait Until Element Is Visible    ${LOGOUT_BUTTON}
