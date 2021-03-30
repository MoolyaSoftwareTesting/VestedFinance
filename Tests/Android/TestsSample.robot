*** Settings ***
Library     OperatingSystem
Resource    ../../Resources/Utils/Android/LandingPage.robot
Resource    ../../Resources/Utils/Android/Common.robot

Suite Setup  Open Vested App On Real Device
Suite Teardown  Close Application

# robot -d Results Tests/Android/Tests.robot
# robot -d Results -L Debug    -i order Tests

*** Test Cases ***

# Landing Page and Login widgets verfication
Landing Page Widgets Verification And Login
    [Tags]  TC01 
    Verify Landing Page On Mobile
    Sigin To Mobile Application
    Verify Buy Sell Stock On Mobile