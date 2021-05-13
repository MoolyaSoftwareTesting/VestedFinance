*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

# Suite Setup  Open App On Real Device
# Suite Setup  Open App On Browserstack
Suite Setup  Launch Android App
# Suite Teardown  Quit Android Application

# Complete Suite: 
# robot -d Results Tests/Android/A_Tests.robot
 
# Executing Specific Tag: 
# robot -d Results -i E2E1 Tests/Android/A_Tests.robot
 
# To run specific test on browserstack:    
# robot --variable environmentToRunTest:Local --variable platform:Android --variable platform_version:10 --variable device:7cd17526 -d Results -i Test Tests/Android/A_Tests.robot
# robot --variable environmentToRunTest:Browserstack --variable browserstack_userName:browserstackmool1 --variable browserstack_accessKey:fbqx1hqxFBNeHGEfH1tW --variable appURL:bs://d06a3077ed77bac1d85e6e1973e9a990ecb3ee6d --variable sessionName:ML02_TS -d Results -i Test Tests/Android/A_Tests.robot

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
Signin With Valid Login Credentials 
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

# Verify Signin As Different User Link
Signin As Different User Link In Easy Signin Page
    [Tags]  SL11  Signin
    User Navigates To Signin Screen

# Invalid Signin
Signin With Invalid Login Credentials
    [Tags]  SL07  Signin
    User Navigates To Signin Screen
    Signin With Invalid Credentials

# Note: Error Msg Needs To Be Verified
Signin With Social Account - Apple With Invalid Login Credentials
    [Tags]  SL13  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Apple Button
    Signin With Invalid Credentials - Apple

# Note: Fail- User Is Not Navigating To Dashboard. So, Dashboard Screen Is Not Verified
Google With Valid Login Credentials
    [Tags]  SL14  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Google Button
    Signin With Valid Credentials - Google
    Verify Dashboard Screen

#Pre-req: To Be Executed After SL14
Previously Loggedin Account Is Displayed In Google Social Signin
    [Tags]  SL18  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Google Button
    Choose An Gmail Account From The Existing Accounts
    Verify Dashboard Screen

# Invalid Google Login
Google With Invalid Login Credentials
    [Tags]  SL15  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Google Button
    Signin With Invalid Credentials - Google

# Invalid Facebook Login
Facebook With Invalid Login Credentials
    [Tags]  SL17  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Facebook Button
    Signin With Invalid Credentials - Facebook

# Valid Facebook Login: Fail- User is navigating back to Landing page
Facebook With Valid Login Credentials
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
    Verify Dashboard Screen

# Verify Resend Code button
Signup - Resend Code
    [Tags]  SL26  Signup
    [Teardown]  Rest Android Application
    User Navigates To Signup Screen
    User Enters New Email Password & Signups
    Click On Resend Code
    Verify Dashboard Screen

# Verify Password Combination Criteria 
User Password Mismatches Password Criteria 
    [Tags]  SL27  Signup
    [Teardown]  Rest Android Application
    User Navigates To Signup Screen
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

# Blocker: OTP required
User Resets The Password
    [Tags]  SL31  ForgotPassword
    [Teardown]  Rest Android Application
    User Navigates To Forgot Password Screen
    User Updates Password

# Forgot Password Validation- Invalid Email Id
User Enters An Invalid Email Id In Forgot Password Validation Screen
    [Tags]  SL32  ForgotPassword
    [Teardown]  Rest Android Application
    User Navigates To Forgot Password Screen
    User Enters Invalid Email

# Reset Password- Ivalid Code With Valid Password
User Enters Ivalid Code With Valid Password In Reset Password Screen
    [Tags]  SL33  ForgotPassword
    [Teardown]  Rest Android Application
    User Navigates To Forgot Password Screen
    User Enters Invalid Code For Password Reset

User Enters Invalid Combination Reseting Password
    [Tags]  SL_34
    # [Teardown]  Rest Android Application
    # User Navigates To Signin Screen
    New Correct Password Verification Criteria

User Enters Valid Combination Reseting Password
    [Tags]  SL_35
    # [Teardown]  Rest Android Application
    # User Navigates To Signin Screen
    New Incorrect Password Verification Criteria

# Reset Password- Different New And Confirm Passwords
User Enters Different New And Confirm Passwords
    [Tags]  SL36  ForgotPassword
    [Teardown]  Rest Android Application
    User Navigates To Forgot Password Screen
    User Enters Different Passwords In Both Fields

# Blocker: Unable to inspect error popup
User Enters Only Code Without Password
    [Tags]  SL37  ForgotPassword
    [Teardown]  Rest Android Application
    User Navigates To Forgot Password Screen
    User Enters Only Code

# Happy Flow 1 E2E- POI: Aadhaar Front And Back side
KYC: Aadhaar Front & Back- POI
    [Tags]  KYC  E2E1
    User Navigates To Signin Screen
    Signin With Non KYC Completed User
    Verify Account Status Screen
    Click on Start/Complete KYC Button
    Verify All Sections And Navigations Under KYC Introduction Screen
    User Fill All The Fields Under KYC Basic Details Screen And Verify
    User Fill All The Fields Under KYC Investment Profile Screen And Verify
    User Fill All the Fields under KYC Identity Screen And Verify  
    Upload Front And Back Side Of Aadhaar As POI
    Verify Sections And Navigations Under KYC Plan Payment Screen
    Verify All Sections And Navigations Under KYC Signature Screen
    Verify Steps Under Account Status Screen After KYC Completion

# Happy Flow 2 E2E- POI: Aadhaar Front And POA: Back side
KYC: Aadhaar Front- POI & Aadhaar Back- POA
    [Tags]  KYC  E2E2
    User Navigates To Signin Screen
    Signin With Non KYC Completed User
    Verify Account Status Screen
    Click on Start/Complete KYC Button
    Verify All Sections And Navigations Under KYC Introduction Screen
    User Fill All The Fields Under KYC Basic Details Screen And Verify
    User Fill All The Fields Under KYC Investment Profile Screen And Verify
    User Fill All the Fields under KYC Identity Screen And Verify
    Upload Aadhaar Front As POI And Back side As POA
    Verify Sections And Navigations Under KYC Plan Payment Screen
    Verify All Sections And Navigations Under KYC Signature Screen
    Verify Steps Under Account Status Screen After KYC Completion

# Happy Flow 3 E2E- POI: Aadhaar Full
KYC: Aadhaar Full- POI
    [Tags]  KYC  E2E3
    User Navigates To Signin Screen
    Signin With Non KYC Completed User
    Verify Account Status Screen
    Click on Start/Complete KYC Button
    Verify All Sections And Navigations Under KYC Introduction Screen
    User Fill All The Fields Under KYC Basic Details Screen And Verify
    User Fill All The Fields Under KYC Investment Profile Screen And Verify
    User Fill All the Fields under KYC Identity Screen And Verify
    Upload Full Aadhaar As POI
    Verify Sections And Navigations Under KYC Plan Payment Screen
    Verify All Sections And Navigations Under KYC Signature Screen
    Verify Steps Under Account Status Screen After KYC Completion

# Happy Flow 4 E2E- POI: Aadhaar Front And POA: Bank Statement
KYC: Aadhaar Full- POI
    [Tags]  KYC  E2E4
    User Navigates To Signin Screen
    Signin With Non KYC Completed User
    Verify Account Status Screen
    Click on Start/Complete KYC Button
    Verify All Sections And Navigations Under KYC Introduction Screen
    User Fill All The Fields Under KYC Basic Details Screen And Verify
    User Fill All The Fields Under KYC Investment Profile Screen And Verify
    User Fill All the Fields under KYC Identity Screen And Verify
    Upload Aadhaar Front As POI And Bank Statement As POA
    Verify Sections And Navigations Under KYC Plan Payment Screen
    Verify All Sections And Navigations Under KYC Signature Screen
    Verify Steps Under Account Status Screen After KYC Completion

# Happy Flow 5 E2E- POI: Drivers License Front And POA: Drivers License Back
KYC: Drivers License Front- POI & Drivers License Back- POA
    [Tags]  KYC  E2E5
    User Navigates To Signin Screen
    Signin With Non KYC Completed User
    Verify Account Status Screen
    Click on Start/Complete KYC Button
    Verify All Sections And Navigations Under KYC Introduction Screen
    User Fill All The Fields Under KYC Basic Details Screen And Verify
    User Fill All The Fields Under KYC Investment Profile Screen And Verify
    User Fill All the Fields under KYC Identity Screen And Verify
    Upload Drivers License Front As POI And Back side As POA
    Verify Sections And Navigations Under KYC Plan Payment Screen
    Verify All Sections And Navigations Under KYC Signature Screen
    Verify Steps Under Account Status Screen After KYC Completion

# Happy Flow 6 E2E- POI: Drivers License Front And Back side
KYC: Drivers License Front- POI & Drivers License Back- POA
    [Tags]  KYC  E2E6
    User Navigates To Signin Screen
    Signin With Non KYC Completed User
    Verify Account Status Screen
    Click on Start/Complete KYC Button
    Verify All Sections And Navigations Under KYC Introduction Screen
    User Fill All The Fields Under KYC Basic Details Screen And Verify
    User Fill All The Fields Under KYC Investment Profile Screen And Verify
    User Fill All the Fields under KYC Identity Screen And Verify
    Upload Front And Back Side Of Drivers License As POI
    Verify Sections And Navigations Under KYC Plan Payment Screen
    Verify All Sections And Navigations Under KYC Signature Screen
    Verify Steps Under Account Status Screen After KYC Completion