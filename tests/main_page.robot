*** Settings ***
Resource            ../resources/browser_navigation.resource
Resource            ../resources/pages/main_page/main_page.resource

Test Setup          Run Keywords    Open Browser And Go To Site Under Test
Test Teardown       Close Browser


*** Test Cases ***
Open Site And Check Main Page Is Opened
    [Documentation]    Opens the website and verifies that the main page is successfully loaded and displayed to the user.
    Check Main Page Is Opened

Check Main Page Elements
    [Documentation]    Checks that all main page elements are displayed correctly.
    Check Home Header
    # Check Application Links