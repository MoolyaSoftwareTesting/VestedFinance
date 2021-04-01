*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary

Resource    ../../Tests/Android/A_Import.robot


Suite Setup  Open Vested App On Real Device
#Suite Teardown  Close Application


# robot -d Results Tests/Android/SL_11.robot
# robot -d Results --loglevel TRACE Tests/Android/SL_11.robot

*** Test Cases ***

Sign in as different user? link in easy sign-in page
    [Tags]  SL11
    User is in Easy Sign In page
    User clicked on Sign in as different user link
    User is logged-in and directed to Dashboard page