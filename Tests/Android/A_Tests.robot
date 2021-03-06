*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Launch Android App
Suite Teardown  Quit Android Application

# Complete Suite: 
# robot -d Results Tests/Android/A_Tests.robot
 
# Executing Specific Tag: 
# robot -d Results -i SL06 Tests/Android/A_Tests.robot
 
# To run specific test on browserstack:    
# robot --variable environmentToRunTest:Browserstack --variable browserstack_userName:browserstackmool1 --variable browserstack_accessKey:fbqx1hqxFBNeHGEfH1tW --variable appURL:bs://691e806da04c31df1138e84cbb5d377050bff8e3 -d Results -i Signin1 Tests/Android/A_Tests.robot

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

# Recheck
# Note: Error Msg Needs To Be Verified
Signin With Social Account - Apple With Invalid Login Credentials
    [Tags]  SL13  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Apple Button
    Signin With Invalid Credentials - Apple

#Recheck: Google Verification code is asked
Google With Valid Login Credentials
    [Tags]  SL14  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Google Button
    Signin With Valid Credentials - Google
    Verify Dashboard Screen

#Recheck
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

#Recheck: Invalid Pwd Error msg is not appearing
# Invalid Facebook Login
Facebook With Invalid Login Credentials
    [Tags]  SL17  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Facebook Button
    Signin With Invalid Credentials - Facebook

#Recheck
# Valid Facebook Login: Fail- User is navigating back to Landing page
Facebook With Valid Login Credentials
    [Tags]  SL16  Signin
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Click On Continue With Facebook Button
    Signin With Valid Credentials - Facebook
    Verify Dashboard Screen

#Recheck
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

# Verify Password Combination Criteria 
User Password Mismatches Password Criteria 
    [Tags]  SL27  Signup1
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
    [Teardown]  Rest Android Application
    Signup And Signin For KYC
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
    [Teardown]  Rest Android Application
    Signup And Signin For KYC
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
    [Teardown]  Rest Android Application
    Signup And Signin For KYC
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
KYC: Aadhaar Front- POI & Bank Statement- POA
    [Tags]  KYC  E2E4
    [Teardown]  Rest Android Application
    Signup And Signin For KYC
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
    [Teardown]  Rest Android Application
    Signup And Signin For KYC
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
KYC: Drivers License Front & Back- POI
    [Tags]  KYC  E2E6
    [Teardown]  Rest Android Application
    Signup And Signin For KYC
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

# Happy Flow 7 E2E- POI: PAN Card And POA: Bank Statement
KYC: PAN Card- POI & Bank Statement- POA
    [Tags]  KYC  E2E7
    [Teardown]  Rest Android Application
    Signup And Signin For KYC
    Verify Account Status Screen
    Click on Start/Complete KYC Button
    Verify All Sections And Navigations Under KYC Introduction Screen
    User Fill All The Fields Under KYC Basic Details Screen And Verify
    User Fill All The Fields Under KYC Investment Profile Screen And Verify
    User Fill All the Fields under KYC Identity Screen And Verify
    Upload PAN Card As POI And Bank Statement As POA
    Verify Sections And Navigations Under KYC Plan Payment Screen
    Verify All Sections And Navigations Under KYC Signature Screen
    Verify Steps Under Account Status Screen After KYC Completion

# Happy Flow 8 E2E- POI: Passport And POA: Bank Statement
KYC: Passport- POI & Bank Statement- POA
    [Tags]  KYC  E2E8
    [Teardown]  Rest Android Application
    Signup And Signin For KYC
    Verify Account Status Screen
    Click on Start/Complete KYC Button
    Verify All Sections And Navigations Under KYC Introduction Screen
    User Fill All The Fields Under KYC Basic Details Screen And Verify
    User Fill All The Fields Under KYC Investment Profile Screen And Verify
    User Fill All the Fields under KYC Identity Screen And Verify
    Upload Passport As POI And Bank Statement As POA
    Verify Sections And Navigations Under KYC Plan Payment Screen
    Verify All Sections And Navigations Under KYC Signature Screen
    Verify Steps Under Account Status Screen After KYC Completion

# Profile- Premium Account
Verify Navigations Under Profile Screen
    [Tags]  Profile1
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    Click On Profile Button
    Verify Menus And Sub-menus Under Profile
    Click On Sub-menus Under History And Verify
    Click On Sub-menus Under Help And Verify
    Click On Sub-menus Under Account And Verify

# Profile- For KYC Finished Account But Not Approved
Navigations Under History Section For KYC Finished Account
    [Tags]  Profile1
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With KYC Finished Account
    Click On Profile Button
    Click On Trade Confirmations And Verify KYC Approval Needed Popup
    Click On Account Statements And Verify KYC Approval Needed Popup
    Click On Tax Documents And Verify KYC Approval Needed Popup
    User Clicks Go Premium Under Account

# Profile- History for KYC Incomplete Account
Navigations Under History Section For KYC Incomplete Account
    [Tags]  Profile
    [Teardown]  Rest Android Application
    Signup And Signin For KYC
    Click On Profile Button
    Click On Transactions And Verify Complete KYC Popup
    Click On Trade Confirmations And Verify Complete KYC Popup
    Click On Account Statements And Verify Complete KYC Popup
    Click On Tax Documents And Verify Complete KYC Popup

# Premium Subscription- KYC Finished Account with Basic plan
Premium Subscription With Card
    [Tags]  Subscription
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With KYC Finished Account
    Click On Profile Button
    Navigate To Payment Plan Screen And Verify Contents
    Verify Select Button Under Basic Plan
    Subscribe Premium Plan With Card

# Premium Subscription- KYC Finished Account with Basic plan
Premium Subscription With UPI
    [Tags]  Subscription
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With KYC Finished Account
    Click On Profile Button
    Navigate To Payment Plan Screen And Verify Contents
    Subscribe Premium Plan With UPI

# Downgrade Premium Subscription- Premium Account
Downgrade Premium Subscription
    [Tags]  Subscription
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Premium Account
    Click On Profile Button
    Downgrade Premium Plan To Basic

# Premium Subscription- KYC approved Premium Account
Navigate To Vest Upsell And Try To Buy Vest
    [Tags]  Subscription
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With KYC Approved Premium Account
    Navigate To Vest Upsell And Buy Vest









    
