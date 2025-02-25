*** Settings ***
Documentation    This tests the thing
Library    SeleniumLibrary

*** Variables ***
${HTML_PATH}    file://${CURDIR}/website/jurap.html

*** Test Cases ***
Open Browser To Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Open Browser    ${HTML_PATH}    chrome    options=${options}
    Title Should Be    Jura-Stina-Kalle Park
    [Teardown]    Close Browser
