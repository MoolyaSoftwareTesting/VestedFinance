*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot


Suite Setup  Open Vested App On Emulator
#Suite Teardown  Close Application

# robot -d Results Tests/Android/SL_06.robot
# robot -d Results -L Debug -i order Tests
# robot -d Results --loglevel TRACE Tests/Android/SL_06.robot

*** Test Cases ***

Sign in with valid login credentials 
    [Tags]  SL06
    User is navigated to Sign In page
    Sign-in with valid Credentials
    User is logged-in and directed to Dashboard page
