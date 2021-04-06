*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Open App On Emulator
Suite Teardown  Quit Android Application

# robot -d Results Tests/Android/SL_12.robot
# robot -d Results -L Debug -i order Tests

*** Test Cases ***
Signin using Apple social account
    User Navigates To Signin Screen
    Signin With Apple Social Account
    