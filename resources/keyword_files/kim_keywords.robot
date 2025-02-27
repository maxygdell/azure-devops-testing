*** Settings ***
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keyword_files/keywords.robot

*** Keywords *** 

I want to buy weekend tickets for a family of four
    [Tags]    kim-tickets
    Title Should Be    title=Jura-Stina-Kalle Park

I add the tickets to my cart  
    Buy 2 adult vip Tickets
    Handle Alert
    Buy 2 child vip Tickets

I should get confirmation that the tickets are added to cart
    ${message} =    Handle Alert
    Should Be Equal    ${message}    Item added to cart!

I should see the total price on the cart page
    [Tags]    unused
    Go To Cart
    ${total_price}=    Get Cart Total
    Should Be Equal    ${total_price}    ${320}    

I want to buy weekend safari tickets for a family of four
    [Tags]    kim-safari
    Title Should Be    title=Jura-Stina-Kalle Park

I have added vip entry tickets to my cart
    [Tags]    kim-safari
    Buy 2 adult vip Tickets
    Handle Alert
    Buy 2 child vip Tickets
    Handle Alert
    Go To Cart
    ${total_price}=    Get Cart Total
    Should Be Equal    ${total_price}    ${320}


I should be able to buy weekend safari tickets
    Book weekend Safari

see the total price in my cart
    [Tags]    kim-safari
    Go To Cart
    ${total_price}=    Get Cart Total
    Should Be Equal    ${total_price}    ${500}