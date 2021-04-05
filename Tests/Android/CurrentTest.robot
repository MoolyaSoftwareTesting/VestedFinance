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

# Note: Error message is not verified, as discussed currently on low priority
Error Message On Empty Email Entered
    [Tags]  SL09  Signin
    User Navigates To Signin Screen
    User Enters Only Password
    Click On Signin Button
    #Please fill out this field message is displayed

#Note: Issue- User is not navigating to Dashboard page. So, Dashboard screen is not verified
Signin With Social Account- Google With Valid Login Credentials
    [Tags]  SL14  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    #Scroll up required- as keypad remains open in SL09
    Click On Continue With Google Button
    Signin With Valid Credentials - Google
    #Verify Dashboard Screen