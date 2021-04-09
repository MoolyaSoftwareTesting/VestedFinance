*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Open App On Emulator
Suite Teardown  Quit Android Application

# robot -d Results Tests/Android/A_Tests.robot
# robot -d Results -L Debug -i order Tests

*** Test Cases ***

Signin With Valid Facebook Credentials
    [Tags]  SL16  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Invalid Facebook Login