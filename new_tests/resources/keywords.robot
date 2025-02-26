*** Settings ***
Library    SeleniumLibrary
Library    ${EXECDIR}/new_tests/resources/page_object_models/BasePage.py
Library    ${EXECDIR}/new_tests/resources/page_object_models/RegisterPage.py
Library    ${EXECDIR}/new_tests/resources/page_object_models/LoginPage.py
Library    ${EXECDIR}/new_tests/resources/page_object_models/BuyTicketsPage.py
Library    ${EXECDIR}/new_tests/resources/page_object_models/BookSafariPage.py
Library    ${EXECDIR}/new_tests/resources/page_object_models/CartPage.py
Library    ${EXECDIR}/new_tests/resources/DateUtility.py
Variables    ${EXECDIR}/new_tests/resources/variables.py

*** Variables ***
${HTML_PATH}    file://${EXECDIR}/website/jurap.html


*** Keywords ***
Setup Browser For Use
    Open Browser    url=${HTML_PATH}    browser=headlesschrome    
    Maximize Browser Window
    Register User
    Sleep    2s
    Login To Page
    Sleep    3s
    
Register User
    ${register_link}    Get Page Link    register    
    Click Section    ${register_link}  
    Register Credentials

Login User
    ${login_link}    Get Page Link    login   
    Click Section    ${login_link}
    Login To Page
    
Click Section
    [Arguments]    ${section_link}
    Click Element    id=${section_link}

Register Credentials
    ${username_element}    Get Register Element    username_field
    ${password_element}    Get Register Element    password_field
    Input Text    id=${username_element}    test
    Input Text    id=${password_element}    test12344321
    Click Button    Register

Login To Page
    ${username_element}    Get Login Element    username_field
    ${password_element}    Get Login Element    password_field
    Input Text    id=${username_element}    test
    Input Text    id=${password_element}    test12344321
    Click Button    Login

Buy ${amount} ${ticket_type} ${ticket_category} Tickets            
    ${ticket_type}=    Get Ticket Element    ${ticket_type}
    ${ticket_category}=    Get Ticket Element    ${ticket_category}
    ${ticket_link}    Get Page Link    buy_tickets
    ${amount_input}=    Get Ticket Element    amount

    Click Section    ${ticket_link}
    Click Element    css:${ticket_type}
    Click Element    css:${ticket_category}
    Clear Element Text    id:${amount_input}
    Input Text    id:${amount_input}    ${amount}
    Click Button    Add to Cart    


Book ${daytype} Safari 
    ${safari_page}=    Get Page Link    book_safari
    ${cart_page}=    Get Page Link    cart    
    ${safari_date}=    Get Safari Elements    safari_date
    ${safari_type}=    Get Safari Elements    safari_type
    ${date_today}=    Get Todays Date
    Click Section    ${safari_page}
    Sleep    3s
    Clear Element Text    id:${safari_date}
    Input Text    ${safari_date}    ${date_today}
    Click Element    css:${safari_type}
    Click Button    css:#safari-form > button
    Handle Alert
    Click Section    ${cart_page}

Go To Cart
    ${cart_page}=    Get Page Link    cart
    Click Section    ${cart_page}
    Sleep    2s

Get Cart Total
    ${cart_total}=    Get Cart Element    total_price
    ${text_cart_total}=    Get Text    ${cart_total}
    ${total_price}=    Get Single Price    ${text_cart_total}
    RETURN    ${total_price}       


Get Cart Prices
    ${test_text3}=    Get Text    id:cart-section
    ${test_text4}=    Get Multiple Prices    ${test_text3}
    
    

    



    