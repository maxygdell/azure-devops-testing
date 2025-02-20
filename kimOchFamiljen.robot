#Alma, Therese & Kotaiba, Grupp 3

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Resource    keywords.robot
Variables    variables.py
Test Setup        Open Browser To Home Page    ${url}    ${browser}     
Test Teardown    Close Browser
Documentation     Test designed for the persona Kim and his family. 

*** Variables *** 
${url}    file://${CURDIR}/website/jurap.html


*** Test Cases ***


Buying Entrance Ticket For Two Adults And Two Children
    [Tags]    Alma & Therese
    [Documentation]    Given that Kim is on the website for juraStina-Kalle, 
    ...                When he is booking 2 VIP-tickets for 2 adults and 2 VIP-tickets for 2 children, 
    ...                Then he should be able to proceed to checkout and pay for his tickets. 
    Click Register Link
    Type In Username Register     test2
    Type In Password Register    test123456789    
    Sumbit Register Button

    Click Login Link
    Type In Username Login   test2
    Type In Password Login   test123456789    
    Submit Credentials
    Sleep    2
    
    Click Buy Tickets Link
    Click Ticket Category
    Choose VIP Ticket
    Click Quantity Link    2
    Click Add To Cart
    Handle Alert

    Sleep    2
    Click Ticket Type
    Choose Child
    Click Ticket Category
    Choose VIP Ticket
    Click Quantity Link    2
    Click Add To Cart
    Handle Alert

    Click Cart Link
    Click Proceed To Checkout
    

Book Safari Tour On The Weekend
    [Tags]    Therese & Alma, refaktorerat_ Alma    refaktorerat_Therese    refaktorerat_ Kotaiba    
    [Documentation]    Given that Kim has registered an account and booked VIP-entrance tickets, 
    ...                When he choose safari-dates, 
    ...                Then he should be able to book safari on the weekends specifically tours that get close to the dinasours.
    Click Register Link
    Type In Username Register     test2
    Type In Password Register    test123456789    
    Sumbit Register Button

    Click Login Link
    Type In Username Login   test2
    Type In Password Login   test123456789    
    Submit Credentials
    Sleep    5

    Click Buy Tickets Link
    Click Ticket Category
    Choose VIP Ticket
    Click Quantity Link    2
    Click Add To Cart
    Handle Alert

    Sleep    2
    Click Ticket Type
    Choose Child
    Click Ticket Category
    Choose VIP Ticket
    Click Quantity Link    2
    Click Add To Cart
    Handle Alert


    Click Book Safaris Link    
    Click Select Safari Date    002025-02-22
    Select Safari Type Extreme Thrill Pack
    Sleep    5
    Click Add To Cart Safari
    Handle Alert
    Click Select Safari Date    002025-02-22
    Select Safari Type Herbivore With Feeding
    Click Add To Cart Safari
    Handle Alert
    Click Cart Link
    Click Proceed To Checkout


Book Safari Tour With Date That Has Passed
   [Tags]   Kotaiba, refaktorerat_ Alma    refaktorerat_ Therese    refaktorerat_ Kotaiba
   [Documentation]   Given that Kim is trying to book a date for his safari tour, 
   ...               When he is trying to book a date that has already passed, 
   ...               Then he should get an error message.

   Click Register Link 
   Type In Username Register    test3
   Type In Password Register    test123456789
   Sumbit Register Button

   Click Login Link
   Type In Username Login   test3
   Type In Password Login   test123456789
   Submit Credentials
   Sleep   5

   Click Book Safaris Link 
   Click Select Safari Date   002025-01-01  #Date has already passed
   Select Safari Type T-rex Rubmle
   Sleep   5
   Click Add To Cart Safari
   
  




