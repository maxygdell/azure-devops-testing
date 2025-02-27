*** Settings ***
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/kim_keywords.robot
Test Setup    Setup Browser For Use
Test Teardown    Close Browser

*** Test Cases ***

Buying Tickets For The Family
    Given I want to buy weekend tickets for a family of four
    When I add the tickets to my cart
    Then I should get confirmation that the tickets are added to cart

Buying Safari Tickets For The Family
    Given I want to buy weekend safari tickets for a family of four
    And I have added vip entry tickets to my cart
    Then I should be able to buy weekend safari tickets
    And see the total price in my cart


   


 


        






    
    







    





