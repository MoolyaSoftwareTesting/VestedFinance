*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Open App On Emulator
Suite Teardown  Quit Android Application

# robot -d Results Tests/Android/A_Tests.robot
# robot -d Results -L Debug -i order Tests

*** Test Cases ***
User Enters An Invalid Email Id
    [Tags]  SL_32
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    User Enters Invalid Email

