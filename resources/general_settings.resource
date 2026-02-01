*** Settings ***
Documentation     General resource file for variables and keywords

Library         SeleniumLibrary
Variables       variables.py


*** Variables ***
${BROWSER}=     Chrome
${TIMEOUT}=     10s
${HEADLESS}=    false
