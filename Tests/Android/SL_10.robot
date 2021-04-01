*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary

Resource    ../../Tests/Android/A_Import.robot


Suite Setup  Open Vested App On Real Device
#Suite Teardown  Close Application


# robot -d Results Tests/Android/SL_10.robot
# robot -d Results --loglevel TRACE Tests/Android/SL_10.robot

*** Test Cases ***

Previously logged in/data stored account is displayed in easy sign-in page.
    [Tags]  SL10
    User is in Easy Sign In page
    User selects the already present account, by clicking on Sign In as mailId button
    User is logged-in and directed to Dashboard page