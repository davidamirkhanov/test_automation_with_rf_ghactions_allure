*** Settings ***

Resource    ../resources/browser_navigation.resource
Resource    ../resources/pages/main.resource

Test Setup    Run Keywords    Open Browser And Go To Site Under Test
Test Teardown    Close Browser


*** Test Cases ***

Open Site And Check Main Page Is Opened
    Check Main Page Is Opened

#Check Main Page Elements