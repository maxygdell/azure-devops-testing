*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HTML_PATH}    file://${CURDIR}/website/jurap.html

*** Test Cases ***
Open Browser To Page
    # Create a ChromeOptions object
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # Add a unique user-data-dir argument (using ${TEST NAME} to differentiate sessions)
    Call Method    ${options}    add_argument    --user-data-dir=/tmp/chrome_${TEST NAME}
    # Run Chrome in headless mode
    Call Method    ${options}    add_argument    --headless
    Open Browser    ${HTML_PATH}    chrome    options=${options}
    Title Should Be    Jura-Stina-Kalle Park
    [Teardown]    Close Browser
