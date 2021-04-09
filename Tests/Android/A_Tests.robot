*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Open App On Emulator
Suite Teardown  Quit Android Application

# robot -d Results Tests/Android/A_Tests.robot
# robot -d Results -L Debug -i order Tests

*** Test Cases ***

# 
Verify Landing Screen Widgets Logo & Text
    [Tags]  SL01  Welcome 
    App logo & text is displayed at the top

#
Points on Security, Compliance and Recommendations in Landing Screen
    [Tags]  SL02  Welcome 
    Verify 3 points on Security, Compliance and Recommendations with icons are displayed
    Verify Heading for each point is displayed

Start Investing button is redirects to Sigin screen
    [Tags]  SL03  Welcome 
    User Navigates To Signin Screen

Switch between Sign In and Sign up by selecting provided links
    [Tags]  SL05  Signin
    User Navigates To Signin Screen
    User Clicks On Signup Link
    User Clicks On Signin Link 

Signin With Valid Login Credentials 
    [Tags]  SL06  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account

Signin With Invalid Login Credentials
    [Tags]  SL07  Signin
    User Navigates To Signin Screen
    Signin With Invalid Credentials

# Note: Error message is not verified, as discussed currently on low priority
Error Message On Empty Password Entered
    [Tags]  SL08  Signin
    User Navigates To Signin Screen
    User Enters Only Email
    Click On Signin Button
    #"Please fill out this field" message is displayed

# Note: Error message is not verified, as discussed currently on low priority
Error Message On Empty Email Entered
    [Tags]  SL09  Signin
    User Navigates To Signin Screen
    User Enters Only Password
    Click On Signin Button
    #"Please fill out this field" message is displayed

Signin With Valid Facebook Credentials
    [Tags]  SL16  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Valid Facebook Login

Signin With Invalid Facebook Credentials
    [Tags]  SL17  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Inalid Facebook Login
# oose An Account To Continue - Facebook
