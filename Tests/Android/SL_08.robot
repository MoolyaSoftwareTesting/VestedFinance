*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary

Resource    ../../Tests/Android/A_Import.robot


Suite Setup  Open Vested App On Emulator
#Suite Teardown  Close Application

# robot -d Results Tests/Android/SL_08.robot
# robot -d Results --loglevel TRACE Tests/Android/SL_08.robot

*** Test Cases ***

Error message- "Please fill in this field", When the empty field is passed by entering only email
    [Tags]  SL08
    User is navigated to Sign In page
    User enters only email id in Email field
    Clicked on Sign in button
    Please fill out this field message is displayed


#TODO: SL06-Directed to Dashboard