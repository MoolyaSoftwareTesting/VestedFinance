*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Open App On Real Device
# Suite Setup  Open App On Browserstack
# Suite Setup  Launch Android App
Suite Teardown  Quit Android Application

# Complete Suite: 
# robot -d Results Tests/Android/A_Tests.robot
 
# Executing Specific Tag: 
# robot -d Results -i Upload Tests/Android/A_Tests.robot
 
# To run specific test on browserstack:    
# robot --variable environmentToRunTest:Browserstack --variable browserstack_userName:browserstackmool1 --variable browserstack_accessKey:fbqx1hqxFBNeHGEfH1tW --variable appURL:bs://691e806da04c31df1138e84cbb5d377050bff8e3 -d Results -i SL34 Tests/Android/A_Tests.robot


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
Aadhaar Front And Back side As Proof Of Identification
    [Tags]  KYC  E2E1
    Start KYC Process
    Verify Back, Accept And Continue Button In KYC Introduction Screen
    Verify Back Arrow And Previous Button In KYC Basic Details Screen
    Fill All the Fields under KYC Basic Details Screen
    Verify All Checkboxes
    Click On Next Button
    Verify Back Arrow And Previous Button In KYC Investment Profile Screen
    Select Option Under Risk tolerance  ${e_riskToleranceOpt1Txt}
    Select Option Under Investing Frequency  ${e_investingFrequencyOpt1Txt}
    Select Option Under Investing Experience  ${e_investingExperienceOpt1Txt}
    Select Option Under Yearly Income  ${e_yearlyIncomeOpt1Txt}
    Select Option Under Liquid Net Worth  ${e_liquidNetWorthOpt1Txt}
    Select Option Under Total Net Worth  ${e_totalNetWorthOpt1Txt}
    Select Option Under Primary Source Dropdown  ${e_primarySourceOpt1Txt}
    Select Option Under Number Of Deposits And Withdrawals  ${e_depositsAndWithdrawalsOpt1Txt}
    Select Option Under Money Deposit  ${e_moneyDepositOpt1Txt}
    Select Option Under Investments Made  ${e_investmentsMadeOpt1Txt}
    Click On Next Button
    Verify Identity Screen
    Select All the Fields under KYC Identity Screen
    Verify Document Upload In Proof Of Identification Popup
    Select Aadhaar And Verify Popups
    Upload Good Front And Back Side Of Aadhaar As Proof Of Identification And Verify
    Enter Valid PAN Number In PAN Field
    Click On Next Button
    Verify Plan Payment Screen
    Verify Back Arrow And Previous Button In KYC Plan Payment Screen
    Make Payment Using Card Information

####################################################

# Upload only Good Front side of Aadhaar as POI
Upload Front Side Of Aadhaar As Proof Of Identification And Verify
    [Tags]  SL71  KYC
    Click On Upload Button
    Upload Front Side Of Aadhaar And Verify Success Message
    Click On Close Icon
    Verify POI Uploaded Success Message  ${e_aadhaarPoiUploadedSuccessMsg}
    Verify PAN field

# Upload Good Back side Aadhaar as POA, after Front Aadhaar uploaded as POI
Upload Back Side Of Aadhaar As Proof Of Address And Verify
    [Tags]  SL73  KYC
    Click On Upload Button
    # Recheck
    Verify Proof Of Address Popup After Front Aadhaar Uploaded As Proof Of Identification
    Click On Aadhaar Back Side And Verify Popup
    Click On Confirm Button And Verify Aadhaar Back Side Popup
    Click On Upload Button
    Upload Back Side Of Aadhaar And Verify Success Message
    Verify POA Uploaded Success Message  ${e_aadhaarPoaUploadedSuccessMsg}

