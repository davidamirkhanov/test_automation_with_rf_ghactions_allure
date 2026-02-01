*** Settings ***
Resource            ../resources/browser_navigation.resource
Resource            ../resources/pages/main_page/main_page.resource

Test Setup          Run Keywords    Open Browser And Go To Site Under Test
Test Teardown       Close Browser


*** Test Cases ***
Login With Valid Credentials Should Be Successfull
    [Documentation]    Verifies that a user can successfully log in with valid credentials
    Navigate To Login Page
    Login With Valid Credentials

Login With Invalid Password Should Show Error
    [Documentation]    Verifies that an error message is displayed when a user attempts to log in with invalid password
    Navigate To Login Page
    Login With Invalid Password
    Check Login Error Message Is Displayed
    Check That Login Page Is Opened
