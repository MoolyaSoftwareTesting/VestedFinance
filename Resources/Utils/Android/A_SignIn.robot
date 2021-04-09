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
    Verify Element Visibility  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${email} 
    Log To Console  Email entered - ${email} 

Enter Password
    [Arguments]  ${password}
    Verify Element Visibility  ${vf_A_password}
    Input Text  ${vf_A_password}  ${password}
    Log To Console  Password entered - ${password}

Click On Signin Button
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

Signin With Apple Social Account
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_apple_acc}
    Sleep  5s
    Wait For Element Visibility On Android  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${e_apple_userid}
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_apple_enter}
    Sleep  5s
    Wait For Element Visibility On Android  ${vf_A_apple_password}
    Input Text  ${vf_A_apple_password}  ${e_apple_pwd}
    # Sleep  2s
    Wait And Click Element On Android  ${vf_A_apple_signin}
    Close Android Keyboard
    Log to Console  Logging in with Apple

Signin With Valid Facebook Login
    Wait And Click Element On Android  ${vf_A_Fb_button}
    Sleep  5s
    Log to Console  Logging in with Facebook
    Log Source
    Wait For Element Visibility On Android  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${e_Fb_validUsername}
    Sleep  3s
    Log to Console  Username Entered!
    Wait And Click Element On Android  ${vf_A_Fb_pwd}
    Input Text  ${vf_A_Fb_pwd}  ${e_Fb_validPassword}
    Sleep  3s
    Log to Console  Password Entered!
    Click Element  ${vf_A_Fb_signinbutton}
    Verify Dashboard Screen
    Log to Console  Signing In!

Signin With Invalid Facebook Login
    Wait And Click Element On Android  ${vf_A_Fb_button}
    Sleep  5s
    Log to Console  Logging in with Facebook
    Log Source
    Wait For Element Visibility On Android  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${e_Fb_invalidUsername}
    Sleep  3s
    Log to Console  Username Entered!
    Wait And Click Element On Android  ${vf_A_Fb_pwd}
    Input Text  ${vf_A_Fb_pwd}  ${e_Fb_invalidPassword}
    Sleep  3s
    Log to Console  Password Entered!
    Click Element  ${vf_A_Fb_signinbutton}
    Log to Console  Signing In!
    Verify Error Message Displayed  ${e_invalidFbLoginMsg}
    Log to Console  Error message verified!