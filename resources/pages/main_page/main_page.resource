*** Settings ***
Resource        ../page.resource
Variables       main_page.yaml
Library         main_page_helper.py


*** Variables ***
${MAIN_PAGE_HEADER}=        css=div#home-header
${MAIN_PAGE_TITLE}=         ${MAIN_PAGE_HEADER} h1
${MAIN_PAGE_SUB_TITLE}=     ${MAIN_PAGE_HEADER} h2
${TEST_CASES_LINK}=         ${MAIN_PAGE_HEADER} a.btn-primary
${API_TESTING_LINK}=        ${MAIN_PAGE_HEADER} a.btn-warning
${XPATH_CSS_LINK}=          ${MAIN_PAGE_HEADER} a.btn-success
${SEARCH_FIELD}=            ${MAIN_PAGE_HEADER} input#search-input
${SEARCH_BUTTON}=           ${MAIN_PAGE_HEADER} button#search-button


*** Keywords ***
Check Main Page Is Opened
    Check That Main Page Header Is Visible

Check That Main Page Header Is Visible
    Wait Until Element Is Visible    ${MAIN_PAGE_HEADER}

Check Home Header
    Element Should Be Visible    ${MAIN_PAGE_TITLE}
    Element Text Should Be    ${MAIN_PAGE_TITLE}    ${MAIN_PAGE_TITLE_TEXT}
    Element Should Be Visible    ${MAIN_PAGE_SUB_TITLE}
    Element Text Should Be    ${MAIN_PAGE_SUB_TITLE}    ${MAIN_PAGE_SUB_TITLE_TEXT}
    Element Should Be Visible    ${TEST_CASES_LINK}
    Element Text Should Be    ${TEST_CASES_LINK}    ${TEST_CASES_LINK_TEXT}
    Element Should Be Visible    ${API_TESTING_LINK}
    Element Text Should Be    ${API_TESTING_LINK}    ${API_TESTING_LINK_TEXT}
    Element Should Be Visible    ${XPATH_CSS_LINK}
    Element Text Should Be    ${XPATH_CSS_LINK}    ${XPATH_CSS_LINK_TEXT}
    Element Should Be Visible    ${SEARCH_FIELD}
    ${SEARCH_FIELD_PRE_POPULATED_TEXT}=    Get Search Field Pre-Populated Text
    Should Be Equal As Strings    ${SEARCH_FIELD_PRE_POPULATED_TEXT}    ${SEARCH_FIELD_TEXT}
    Element Should Be Visible    ${SEARCH_BUTTON}
    Element Text Should Be    ${SEARCH_BUTTON}    ${SEARCH_BUTTON_TEXT}

Get Search Field Pre-Populated Text
    ${SEARCH_FIELD_PRE_POPULATED_TEXT}=    Get Element Attribute    ${SEARCH_FIELD}    placeholder
    RETURN    ${SEARCH_FIELD_PRE_POPULATED_TEXT}

# Check Application Links

Navigate To Login Page
    [Documentation]    Navigates to the login page from the main page.
    ${LOGIN_PAGE_LINK}=    Get Main Page Link By Text    Test Login Page
    Wait And Click    ${LOGIN_PAGE_LINK}
    Check That Login Page Is Opened
