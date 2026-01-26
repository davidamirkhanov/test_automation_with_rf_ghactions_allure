*** Settings ***
Resource            ../resources/browser_navigation.resource
Resource            ../resources/pages/main_page/main_page.resource

Test Setup          Run Keywords    Open Browser And Go To Site Under Test
Test Teardown       Close Browser


*** Test Cases ***
Login Should Be Successfull
    Navigate To Login Page
    Login With Valid Credentials
