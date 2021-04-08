*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Open App On Real Device
Suite Teardown  Quit Android Application

#Complete Suite: robot -d Results Tests/Android/CurrentTest.robot
#Debug: robot -d -i SL01 Results -L Debug -i order Tests
#Executing Specific Tag: robot -d -i SL01 Results Tests/Android/A_Tests.robot

*** Test Cases ***

#
Previously Loggedin Account Is Displayed In Apple Social Signin
    [Tags]  SL22  Signin
    User Navigates To Signin Screen
    

