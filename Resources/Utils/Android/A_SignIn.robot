*** Settings ***

Library     AppiumLibrary

*** Keywords ***

User Navigates To Signin Screen
    Click On Continue Button Under Landing Screen
    Click On Element If Visibile  ${vf_A_signInAsDiffUser}

Verify Signin Screen
    Click On Element If Visibile  ${vf_A_signInAsDiffUser}
    Wait For Page Conatin Element  ${e_signinTitle}  timeout=20s
    Log to Console  Signin screen Verified!

User Clicks On Signup Link
    Swipe By Percent  70  70  20  20  5000
    Wait And Click Element On Android  ${vf_A_signUpLink}
    Log to Console  Clicked on Signup Link

User Clicks On Signin Link 
    Swipe By Percent  70  70  20  20  5000
    Wait And Click Element On Android  ${vf_A_signInLink}
    Log to Console  Clicked on Signin Link
    
Enter Email
    [Arguments]  ${email}
    Navigate Back To Signin Screen If Element Visible  ${vf_A_googleChooseAccPage}
    Wait For Element Visibility On Android  ${vf_A_userName}
    Verify Element Visibility  ${vf_A_userName}
    Clear Text  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${email} 
    Log To Console  Email entered - ${email} 

Enter Password
    [Arguments]  ${password}
    Wait For Element Visibility On Android  ${vf_A_password}
    Verify Element Visibility  ${vf_A_password}
    Clear Text  ${vf_A_password}
    Input Text  ${vf_A_password}  ${password}
    Log To Console  Password entered - ${password}

Enter Google Password
    [Arguments]  ${password}
    Wait For Element Visibility On Android  ${vf_A_googlePwd}
    Verify Element Visibility  ${vf_A_googlePwd}
    Input Text  ${vf_A_googlePwd}  ${password}
    Log To Console  Password entered - ${password}

Click On Signin Button
    Swipe By Percent  70  70  20  20  5000
    Verify Element Visibility  ${vf_A_submitBtn}
    Wait And Click Element On Android  ${vf_A_submitBtn}
    Log To Console  Clicked Signin Button

Enter Pin
    [Arguments]  ${pin}
    Wait For Element Visibility On Android  ${vf_A_pin}
    Wait And Click Element On Android  ${vf_A_pin} 
    Input Text  ${vf_A_pin}  ${pin}
    Log To Console  Pin entered - ${pin}

Click On Continue Button
    Wait For Element Visibility On Android  ${vf_A_continueBtn}
    Wait And Click Element On Android  ${vf_A_continueBtn}
    Log to Console  Clicked on Continue Button

Click On Continue With Google Button
    Close Android Keyboard
    Wait And Click Element On Android  ${vf_A_continueWithGoogleBtn}
    Log To Console  Clicked On Continue with Google button

Click On Continue With Apple Button
    Wait For Element Visibility On Android  ${vf_A_continueWithAppleBtn}
    Wait And Click Element On Android  ${vf_A_continueWithAppleBtn}
    Log To Console  Clicked On Continue with Apple button

Click On Continue With Facebook Button
    Wait For Element Visibility On Android  ${vf_A_continueWithFbBtn}
    Wait And Click Element On Android  ${vf_A_continueWithFbBtn}
    Log To Console  Clicked On Continue with Facebook button

Click On Next Button
    Wait For Element Visibility On Android  ${vf_A_nextButton}
    Wait And Click Element On Android  ${vf_A_nextButton}

Signin Without Pin Credentials
    [Arguments]  ${email}  ${password}
    Enter Email  ${email}
    Enter Password  ${password}
    Click On Signin Button
    Verify Dashboard Screen

Signin With Pin Credentials
    [Arguments]  ${email}  ${password}  ${pin}
    Enter Email  ${email}
    Enter Password  ${password}
    Click On Signin Button
    Enter Pin  ${pin}
    Click On Continue Button
    Verify Dashboard Screen

Signin With Valid Credentials - Funded Account
    Swipe By Percent  70  70  20  20  5000
    Signin With Pin Credentials  ${e_validEmail}  ${e_validPassword}  ${e_validPin}

Signin With Invalid Credentials
    Enter Email  ${e_invalidUserName} 
    Enter Password  ${e_invalidPwd}
    Click On Signin Button
    Log To Console  Entered invalid email and password
    Verify Error Message Displayed  ${e_invalidLoginErrorTxt}

Verify Dashboard Screen
    Wait For Element Visibility On Android  ${vf_A_home}
    Verify Page Contains Element On Android  ${vf_A_home}
    Click On Element If Visibile  ${vf_A_awesomeLink}
    Log To Console  User is directed to Dashboard screen

Please fill out this field message is displayed
    Wait For Element Visibility On Android  ${vf_A_submitBtn}
    Click Element  ${vf_A_submitBtn}
    Capture Page Screenshot  filename=fieldError-Screenshot.png
    ocr_core("fieldError-Screenshot.png", "Please fill out this field")
    Log To Console  Verified error msg text

User Navigates To Easy Signin Screen
    Click On Continue Button Under Landing Screen
    Wait For Element Visibility On Android  ${vf_A_easySignInBtn}
    Verify Element Visibility  ${vf_A_easySignInBtn}
    Log to Console  User is in Easy Sign-in Page!

User Selects The Already Present Account In Easy Signin
    Wait For Element Visibility On Android  ${vf_A_easySignInBtn}
    Verify Element Visibility  ${vf_A_easySignInBtn}
    Log To Console  Easy Signin Button is Present
    Wait And Click Element On Android  ${vf_A_easySignInBtn}
    Log To Console  Clicked on Easy Signin Button
    Enter Pin  ${e_validPin}
    Click On Continue Button

User Clicked On Signin As Different User Link
    Verify Element Visibility  ${vf_A_signInAsDiffUserLink}
    Wait And Click Element On Android  ${vf_A_signInAsDiffUserLink}
    Log To Console  Clicked on Sign In as different user link
    Verify Dashboard Screen

Signin With Valid Credentials - Google
    Click On Element If Visibile  ${vf_A_useAnotherAccBtn}
    Enter Email  ${e_validGoogleEmail}
    Click On Next Button
    Close Android Keyboard
    Enter Google Password  ${e_validGooglePassword}
    # Close Android Keyboard
    Go Back On Android
    Click On Next Button
    Log To Console  Signedin with Valid Google Credentials!

Signin With Invalid Credentials - Google
    Click On Element If Visibile  ${vf_A_useAnotherAccBtn}
    Enter Email  ${e_validGoogleEmail}
    Close Android Keyboard
    Click On Next Button
    Enter Google Password  ${e_invalidPwd}
    Close Android Keyboard
    Log To Console  Entered invalid password
    # Close Android Keyboard
    Go Back On Android
    Click On Next Button
    Wait For Page Conatin Element  ${e_invalidGoogleLoginErrorTxt}  
    Verify Error Message Displayed  ${e_invalidGoogleLoginErrorTxt}

Signin With Invalid Credentials - Apple
    Wait For Element Visibility On Android  ${vf_A_userName}
    Click Element  ${vf_A_userName}
    Clear Text  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${e_appleUserId}
    Log to Console  Username Entered!
    Wait And Click Element On Android  ${vf_A_appleEnterBtn}
    Wait For Element Visibility On Android  ${vf_A_applePwd}
    Click Element  ${vf_A_applePwd}
    Clear Text  ${vf_A_applePwd}
    Input Text  ${vf_A_applePwd}  ${e_applePwd}
    Log to Console  Password Entered!
    # Close Android Keyboard
    Go Back On Android
    Wait For Element Visibility On Android  ${vf_A_appleEnterBtn}
    Wait And Click Element On Android  ${vf_A_appleEnterBtn}
    Close Android Keyboard
    Log to Console  Logging in with Apple
    Swipe By Percent  70  50  50  20  5000
    Verify Error Message Displayed  ${e_invalidAppleLoginErrorTxt}
    Log to Console  Error message verified!

Signin With Valid Credentials - Facebook
    Log to Console  Sigin in with Facebook
    Click On Element If Visibile  ${vf_A_acceptAllBtn}
    Wait For Element Visibility On Android  ${vf_A_FbEmail}
    Input Text  ${vf_A_FbEmail}  ${e_FbEmailId}
    Log to Console  Username Entered!
    Wait And Click Element On Android  ${vf_A_FbPwd}
    Input Text  ${vf_A_FbPwd}  ${e_FbPwd}
    Log to Console  Password Entered
    Close Android Keyboard
    Wait For Element Visibility On Android  ${vf_A_FbSigninBtn}
    Click Element  ${vf_A_FbSigninBtn}
    Click On Element If Visibile  ${vf_A_accountBtn}
    Log to Console  Signed In!

Signin With Invalid Credentials - Facebook
    Wait For Element Visibility On Android  ${vf_A_FbEmail}
    Input Text  ${vf_A_FbEmail}  ${e_invalidUserName}
    Wait And Click Element On Android  ${vf_A_FbPwd}
    Input Text  ${vf_A_FbPwd}  ${e_invalidPwd}
    Log to Console  Invalid Username & Password Entered
    Close Android Keyboard
    Wait For Element Visibility On Android  ${vf_A_FbSigninBtn}
    Wait And Click Element On Android  ${vf_A_FbSigninBtn}
    Log to Console  Clicked on Log In button
    Close Android Keyboard
    Wait For Page Conatin Element  ${e_invalidFacebookLoginErrorTxt}  
    Verify Error Message Displayed  ${e_invalidFacebookLoginErrorTxt}
    Swipe By Percent  70  70  20  20  5000
    Log to Console  Error message verified!

Choose An Gmail Account From The Existing Accounts
    Wait For Element Visibility On Android  ${vf_A_googleExistingAcc}
    #Locator changes if signed in with other account
    Wait And Click Element On Android ${vf_A_googleExistingAcc}
    Log to Console Clicked on existing Gmail account
