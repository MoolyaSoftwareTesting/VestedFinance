*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Open App On Real Device
Suite Teardown  Quit Android Application

#Complete Suite: robot -d Results Tests/Android/A_Tests.robot
#Debug: robot -d -i SL01 Results -L Debug -i order Tests
#Executing Specific Tag: robot -d -i SL01 Results Tests/Android/A_Tests.robot

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

# Pre-req: To be executed after SL06
User Selects The Already Present Account In Easy Signin Page
    [Tags]  SL10  Signin
    [Teardown]  Rest Android Application
    Open App On Real Device
    User Navigates To Easy Signin Screen
    User Selects The Already Present Account In Easy Signin
    Verify Dashboard Screen

Signin As Different User Link In Easy Signin Page
    [Tags]  SL11  Signin
    User Navigates To Signin Screen

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
    #Please fill out this field message is displayed

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

Signin With Social Account- Google With Invalid Login Credentials
    [Tags]  SL15  Signin
    User Navigates To Signin Screen
    Click On Continue With Google Button
    Signin With Invalid Credentials - Google
