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

# Note: Error msg needs to be verified
Signin With Social Account- Apple With Invalid Login Credentials
    [Tags]  SL13  Signin
    User Navigates To Signin Screen
    Click On Continue With Apple Button
    Signin With Invalid Credentials - Apple

# Signin With Social Account- Facebook With Valid Login Credentials
#     [Tags]  SL16  Signin
#     [Teardown]  Rest Android Application
#     User Navigates To Signin Screen
#     Click On Continue With Facebook Button
#     Signin With Valid Credentials - Facebook
#     Verify Dashboard Screen
