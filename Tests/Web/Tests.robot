*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Utils/Web/Common.robot
Resource    ../../Resources/Utils/Web/LandingPage.robot

Suite Setup     Launch URL
#Test Setup      Sigin To Web Application
#Test Teardown   Logout Of Application
Suite Teardown  Close All Browsers

#To run all tests: robot --variable URL:https://next-staging.vested.co.in/ --variable BROWSER:chrome --variable ENV:prod -d Results Tests/Web/Tests.robot
#To run specific test: robot --variable URL:https://next-staging.vested.co.in/ --variable BROWSER:chrome --variable ENV:prod -d Results -i TC01 Tests/Web/Tests.robot

*** Test Cases ***

# Landing Page and Login widgets verfication
Landing Page Widgets Verification And Login
    [Tags]  TC01 
    Verify Landing Page
    Sigin To Web Application
    Verify Buy Sell Stock