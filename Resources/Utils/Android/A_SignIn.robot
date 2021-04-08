*** Settings ***

Library     AppiumLibrary

*** Keywords ***

User Navigates To Signin Screen
    Click on Start Investing button
    Verify Signin Screen

Verify Signin Screen
    Click On Element If Visibile  ${vf_A_signInAsDiffUser}
    Wait For Page Conatin Element  ${e_signinTitle}  timeout=20s
    Log to Console  Signin screen Verified!

User Clicks On Signup Link
    Swipe By Percent  70  70  20  20  5000
    Wait And Click Element On Android  ${vf_A_signUpLink}

User Clicks On Signin Link 
    Swipe By Percent  70  70  20  20  5000
    Wait And Click Element On Android  ${vf_A_signInLink}
    
Enter Email
    [Arguments]  ${email}
    Navigate Back To Signin Screen If Element Visible  ${vf_A_googleChooseAccPage}
    Verify Element Visibility  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${email} 
    Log To Console  Email entered - ${email} 

Enter Password
    [Arguments]  ${password}
    Verify Element Visibility  ${vf_A_password}
    Input Text  ${vf_A_password}  ${password}
    Log To Console  Password entered - ${password}

Enter Google Password
    [Arguments]  ${password}
    Sleep  5s
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
    Sleep  5s
    Wait And Click Element On Android  ${vf_A_pin} 
    Input Text  ${vf_A_pin}  ${pin}
    Log To Console  Pin entered - ${pin}

Click On Continue Button
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_continueBtn}

Click On Continue With Google Button
    Sleep  2s
    Close Android Keyboard
    Wait And Click Element On Android  ${vf_A_continueWithGoogleBtn}
    Log To Console  Clicked On Continue with Google button

Click On Continue With Apple Button
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_continueWithAppleBtn}
    Log To Console  Clicked On Continue with Apple button

Click On Continue With Facebook Button
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_continueWithFbBtn}
    Log To Console  Clicked On Continue with Facebook button

Click On Next Button
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_googleSigninNextBtn}

Signin With Valid Credentials - Funded Account
    Enter Email  ${e_validEmail}
    Enter Password  ${e_validPassword}
    Click On Signin Button
    Enter Pin  ${e_validPin}
    Click On Continue Button
    Verify Dashboard Screen

Signin With Invalid Credentials
    Enter Email  ${e_invalidUserName} 
    Enter Password  ${e_invalidPwd}
    Click On Signin Button
    Log To Console  Entered invalid email and password
    Verify Error Message Displayed  ${e_invalidLoginErrorTxt}

User Enters Only Email
    Wait For Element Visibility On Android  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${e_invalidUserName}
    Log To Console  Entered only email

User Enters Only Password
    Wait For Element Visibility On Android  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${e_invalidUserName}
    Log To Console  Entered only password

Verify Dashboard Screen
    Verify Page Contains Element On Android  ${vf_A_home}
    Log To Console  User is directed to Dashboard screen

Please fill out this field message is displayed
    #Sleep  2s
    Click Element  ${vf_A_submitBtn}
    Capture Page Screenshot  filename=fieldError-Screenshot.png
    ocr_core("fieldError-Screenshot.png", "Please fill out this field")
    Log To Console  Verified error msg text

User Navigates To Easy Signin Screen
    Click on Start Investing button
    Sleep  5s
    Verify Element Visibility  ${vf_A_easySignInBtn}
    Log to Console  User is in Easy Signin Screen!

User Selects The Already Present Account In Easy Signin
    Sleep  5s
    Verify Element Visibility  ${vf_A_easySignInBtn}
    Log To Console  Easy Signin Button is Present
    Wait And Click Element On Android  ${vf_A_easySignInBtn}
    Log To Console  Clicked on Easy Signin Button
    Enter Pin  ${e_validPin}
    Click On Continue Button

User Clicked On Signin As Different User Link
    Verify Element Visibility  ${vf_A_signInAsDiffUserLink}
    Wait And Click Element On Android  ${vf_A_signInAsDiffUserLink}
    Log To Console  Clicked on Signin as different user link
    Verify Dashboard Screen

Signin With Valid Credentials - Google
    Log to Console  Signing in with Google
    Click On Element If Visibile  ${vf_A_useAnotherAccBtn}
    Enter Email  ${e_validGoogleEmail}
    Click On Next Button
    Enter Google Password  ${e_validGooglePassword}
    Close Android Keyboard
    Click On Next Button
    Log To Console  Signedin with Valid Google Credentials!

Signin With Invalid Credentials - Google
    Log to Console  Signing in with Google
    Click On Element If Visibile  ${vf_A_useAnotherAccBtn}
    Sleep  5s
    Enter Email  ${e_validGoogleEmail}
    Click On Next Button
    Enter Google Password  ${e_invalidPwd}
    Close Android Keyboard
    Log To Console  Entered invalid password
    Click On Next Button
    Verify Error Message Displayed  ${e_invalidGoogleLoginErrorTxt}
    Log To Console  Error message verified!

Signin With Invalid Credentials - Apple
    Log to Console  Signing in with Apple
    Navigate Back To Signin Screen If Element Visible  ${vf_A_appleContWithAccPage}
    Wait For Element Visibility On Android  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${e_appleUserId}
    Log to Console  Username Entered
    Wait And Click Element On Android  ${vf_A_appleEnterBtn}
    Log to Console  Clicked on Next button
    Navigate Back To Signin Screen If Element Visible  ${vf_A_appleContWithAccPage}
    Close Android Keyboard
    Wait For Element Visibility On Android  ${vf_A_applePwd}
    Input Text  ${vf_A_applePwd}  ${e_applePwd}
    Log to Console  Password Entered
    Close Android Keyboard
    Wait And Click Element On Android  ${vf_A_appleSigninBtn}
    Close Android Keyboard
    Verify Error Message Displayed  ${e_invalidAppleLoginErrorTxt}
    Log to Console  Error message verified!

Signin With Valid Credentials - Facebook
    Log to Console  Signing in with Facebook
    Sleep  2s
    Wait For Element Visibility On Android  ${vf_A_FbEmail}
    Input Text  ${vf_A_FbEmail}  ${e_FbEmailId}
    Log to Console  Username Entered
    Wait And Click Element On Android  ${vf_A_FbPwd}
    Input Text  ${vf_A_FbPwd}  ${e_FbPwd}
    Log to Console  Password Entered
    Click Element  ${vf_A_FbSigninBtn}
    Log to Console  Signed In!

Signin With Invalid Credentials - Facebook
    Log to Console  Signing in with Facebook
    Sleep  2s
    Wait For Element Visibility On Android  ${vf_A_FbEmail}
    Input Text  ${vf_A_FbEmail}  ${e_invalidUserName}
    Log to Console  Invalid Username Entered
    Wait And Click Element On Android  ${vf_A_FbPwd}
    Input Text  ${vf_A_FbPwd}  ${e_invalidPwd}
    Log to Console  Invalid Password Entered
    Click Element  ${vf_A_FbSigninBtn}
    Log to Console  Clicked on Signin button
    Verify Error Message Displayed  ${e_invalidFacebookLoginErrorTxt}
    Log to Console  Error message verified!


Choose An Gmail Account From The Existing Accounts
    Sleep  2s
    #Locator changes if signed in with other account
    Wait And Click Element On Android  ${vf_A_googleExistingAcc}
    Log to Console  Clicked on existing Gmail account
    Sleep  5s

Choose An Apple Account From The Existing Accounts
    Log to Console  Signing in with Apple
    Wait For Element Visibility On Android  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${e_appleUserId}
    Wait And Click Element On Android  ${vf_A_appleEnterBtn}
    Log to Console  Clicked on Next button
    Sleep  5s
    Wait And Click Element On Android  ${vf_A_appleExistingAcc}
    Log to Console  Selected an existing account
    Close Android Keyboard
    Wait For Element Visibility On Android  ${vf_A_applePwd}
    Log to Console  Password auto updated
    Close Android Keyboard
    Wait And Click Element On Android  ${vf_A_appleSigninBtn}
    #OTP screen to be handled further