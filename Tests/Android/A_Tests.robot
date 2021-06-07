*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Launch Android App
Suite Teardown  Quit Android Application

 
# Executing Local: 
# robot --variable environmentToRunTest:Local --variable platform:Android --variable platform_version:10 --variable device:7cd17526 -d Results -i Welcome Tests/Android/A_Tests.robot

# To run All test on browserstack: 
# robot --variable environmentToRunTest:Browserstack --variable browserstack_userName:browserstackmool1 --variable browserstack_accessKey:fbqx1hqxFBNeHGEfH1tW --variable appURL:bs://986c2eb932067988b618c33a70bb6144485e6877 --variable sessionName:ML03_AK -d Results Tests/Android/A_Tests.robot

# To run specific test on browserstack:    
# robot --variable environmentToRunTest:Browserstack --variable browserstack_userName:browserstackmool1 --variable browserstack_accessKey:fbqx1hqxFBNeHGEfH1tW --variable appURL:bs://986c2eb932067988b618c33a70bb6144485e6877 --variable sessionName:ML03_AK -d Results -i E2E1 Tests/Android/A_Tests.robot


*** Test Cases ***
# Verify Landing Screen
Verify Landing Screen Widgets Logo & Text
    [Tags]  SL01  Welcome     
    App logo & text is displayed at the top

# Verify Points On Landing Screen
Points on Security, Compliance and Recommendations in Landing Screen
    [Tags]  SL02  Welcome     
    Verify 3 points on Security, Compliance and Recommendations with icons are displayed
    Verify Heading for each point is displayed

# Verify Start Investing Button 
Start Investing button is redirects to Sigin screen
    [Tags]  SL03  Welcome     
    User Navigates To Signin Screen

# Verify Signin And Signup links
Switch between Sign in and Sign up by selecting provided links
    [Tags]  SL05  Signin     
    User Navigates To Signin Screen
    User Clicks On Signup Link
    User Clicks On Signin Link 

# Valid Signin
Signin With Valid Credentials 
    [Tags]  SL06  Signin     
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account

# Pre-req: To be executed after SL06
User Selects The Already Present Account In Easy Signin Page
    [Tags]  SL10  Signin     
    [Teardown]  Rest Android Application
    User Navigates To Easy Signin Screen
    User Selects The Already Present Account In Easy Signin
    Verify Dashboard Screen

# Pre-req: To be executed after SL10
Signin As Different User Link In Easy Signin Page
    [Tags]  SL11  Signin     
    User Navigates To Signin Screen

# Invalid Signin
Signin With Invalid Signin Credentials
    [Tags]  SL07  Signin     
    User Navigates To Signin Screen
    Signin With Invalid Credentials

# Invalid Apple Signin
Signin With Social Account - Apple With Invalid Signin Credentials
    [Tags]  SL13  Signin     
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Apple Button
    Signin With Invalid Credentials - Apple

# Valid Google Signin
Google With Valid Signin Credentials
    [Tags]  SL14  Signin     
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Google Button
    Signin With Valid Credentials - Google

# Invalid Google Signin
Google With Invalid Signin Credentials
    [Tags]  SL15  Signin     
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Google Button
    Signin With Invalid Credentials - Google

# FAIL: On clicking Log In button, Incorrect password Error msg is not appearing
Facebook With Invalid Signin Credentials
    [Tags]  SL17     
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Facebook Button
    Signin With Invalid Credentials - Facebook

# FAIL: Valid Facebook Signin
Facebook With Valid Signin Credentials
    [Tags]  SL16  Signin     
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Facebook Button
    Signin With Valid Credentials - Facebook
    Verify Dashboard Screen

# Signup With Valid Credentials
Signup With New Email & Password
    [Tags]  SL23  Signup     
    [Teardown]  Rest Android Application
    User Navigates To Signup Screen
    User Enters New Email Password & Signups
    User Lands On Verficiation Code Screen
    Landing Page Is Loaded Completely

# Verify Resend Code button
Signup - Resend Code
    [Tags]  SL26  Signup     
    [Teardown]  Rest Android Application
    User Navigates To Signup Screen
    User Enters New Email Password & Signups
    Click On Resend Code
    User Lands On Verficiation Code Screen
    Landing Page Is Loaded Completely

# FAIL: Verify Password Combination Criteria 
User Password Mismatches Password Criteria 
    [Tags]  SL27     
    [Teardown]  Rest Android Application
    User Navigates To Signup Screen
    User Enters Valid Email
    User Enters Invalid Password
    Verify Password Combination Criteria

# Signup With Existing Email
Signup With Existing Email & Verify Error Message
    [Tags]  SL29  Signup     
    [Teardown]  Rest Android Application
    User Navigates To Signup Screen
    User Enters Existing Email Password & Signups

# Signup With Existing Google Social Credentials
User Signups With Existing Google Account & Password  
    [Tags]  SL30  Signup    
    [Teardown]  Rest Android Application
    User Navigates To Signup Screen
    User Enters Existing Google Account Password To Signup

# Forgot Password Validation- Invalid Email Id
User Enters An Invalid Email Id In Forgot Password Validation Screen
    [Tags]  SL32  ForgotPassword    
    [Teardown]  Rest Android Application
    User Navigates To Forgot Password Screen
    User Enters Invalid Email

# Reset Password- Invalid Code With Valid Password
User Enters Invalid Code With Valid Password In Reset Password Screen
    [Tags]  SL33  ForgotPassword    
    [Teardown]  Rest Android Application
    User Navigates To Forgot Password Screen
    User Enters Invalid Code For Password Reset

# FAIL: Reset Password- Different New And Confirm Passwords
User Enters Different New And Confirm Passwords
    [Tags]  SL36  ForgotPassword   
    [Teardown]  Rest Android Application
    User Navigates To Forgot Password Screen
    User Enters Different Passwords In Both Fields


