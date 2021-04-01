*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot


Suite Setup  Open Vested App On Emulator
#Suite Teardown  Close Application

# robot -d Results Tests/Android/SL_07.robot
# robot -d Results --loglevel TRACE Tests/Android/SL_07.robot

*** Test Cases ***

Sign in with invalid login credentials
    [Tags]  SL07
    User is navigated to Sign In page
    Sign-in with invalid Credentials
    The username or password you entered is invalid Error message is displayed

