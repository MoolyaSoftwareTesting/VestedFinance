*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Open App On Real Device
Suite Teardown  Quit Android Application

#Complete Suite: robot -d Results Tests/Android/Check.robot
#Debug: robot -d -i SL01 Results -L Debug -i order Tests
#Executing Specific Tag: robot -d Results -i SL_31 Tests/Android/Check.robot

*** Test Cases ***
#Blocker: OTP required
User Resets The Password
    [Tags]  SL_31  ForgotPassword
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    User Updates Password

User Enters An Invalid Email Id In Forgot Password Validation Screen
    [Tags]  SL_32  ForgotPassword
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    User Enters Invalid Email

User Enters Ivalid Code With Valid Password In Reset Password Screen
    [Tags]  SL_33  ForgotPassword
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    User Enters Invalid Code For Password Reset

User Enters Different New And Confirm Passwords
    [Tags]  SL_36  ForgotPassword
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    User Enters Different Passwords In Both Fields

#Blocker: Unable to inspect error popup
User Enters Only Code Without Password
    [Tags]  SL_37  ForgotPassword
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    User Enters Only Code