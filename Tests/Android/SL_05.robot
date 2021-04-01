*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot


Suite Setup  Open Vested App On Real Device
Suite Teardown  Close Application
#UNABLE TO CLOSE APP?

# robot -d Results Tests/Android/SL_05.robot
# robot -d Results -L Debug -i order Tests
# robot -d Results --loglevel TRACE Tests/Android/SL_05.robot

*** Test Cases ***

Switch between Sign In and Sign up by selecting provided links
    [Tags]  SL05
    User is navigated to Sign In page
    Clicked on Sign up link besides Need an account text
    Sign in button with Email & password fields are displayed
    Clicked on Sign in link besides Already have an account text
    Sign in button with Email & password fields are displayed

    