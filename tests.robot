*** Settings *** 
Library    SeleniumLibrary
Documentation    This is a nice little test!

*** Variables ***
${HTML_PATH}    file://${CURDIR}/website/jurap.html

*** Test Cases *** 
Open Browser To Page
    Open Browser    ${HTML_PATH}    chrome
    Title Should Be    Jura-Stina-Kalle Park