*** Settings ***

Library     AppiumLibrary

***Keywords***

Click On Forgot Password Link
    Sleep  2s
    Verify Page Conatin Text  ${vf_A_ForgotPassword}
    Click Text  ${vf_A_ForgotPassword}
    Log To Console  Clicked on Forgot your Password link!

Enter Email For Reset Password
    [Arguments]  ${email}
    Verify Element Visibility  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${email} 
    Log To Console  Email entered - ${email} 

Enter Reset Code
    [Arguments]  ${e_resetCode}
    Verify Element Visibility  ${vf_A_resetCode}
    Wait And Click Element On Android  ${vf_A_resetCode}
    Input Text  ${vf_A_resetCode}  ${e_resetCode} 
    Log To Console  Code Entered

Enter New Password
    [Arguments]  ${e_newPwd}
    Verify Element Visibility  ${vf_A_newPwd}
    Wait And Click Element On Android  ${vf_A_newPwd}
    Input Text  ${vf_A_newPwd}  ${e_newPwd} 
    Log To Console  New Password Entered

Enter New Password Again
    [Arguments]  ${e_newPwd}
    Verify Element Visibility  ${vf_A_confirmPwd}
    Wait And Click Element On Android  ${vf_A_confirmPwd}
    Input Text  ${vf_A_confirmPwd}  ${e_newPwd} 
    Log To Console  New Password Entered Again

# 31
User Updates Password
    Click On Forgot Password Link
    Sleep  3s
    Enter Email For Reset Password  ${e_validEmail}
    Log to Console  Entered Email
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Sleep  3s
    Enter Reset Code  ${e_resetCode}
    Sleep  1s
    Enter New Password  ${e_newPwd}
    Sleep  1s
    Enter New Password Again  ${e_newPwd}
    Log to Console  Entered Code and New Password
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_changePwd}
    Log to Console  Clicked on Change Password button
    Sleep  2s
    Verify Signin Screen

# 32
User Enters Invalid Email
    Click On Forgot Password Link
    Sleep  3s
    Enter Email For Reset Password  ${e_invalidUserName}
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Sleep  3s
    Verify Error Message Displayed  ${e_ResetError}
    Log to Console  Error Message Verified!

# 33
User Enters Invalid Code For Password Reset
    Click On Forgot Password Link
    Sleep  3s
    Enter Email For Reset Password  ${e_validEmail}
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Sleep  3s
    Enter Reset Code  ${e_resetCode}
    Sleep  1s
    Enter New Password  ${e_newPwd}
    Sleep  1s
    Enter New Password Again  ${e_newPwd}
    Sleep  2s
    Close Android Keyboard
    Click Element  ${vf_A_changePwd}
    Sleep  2s
    Verify Error Message Displayed  ${e_resetErrorMsg}
    Log to Console  Error Message Verified!

# 36
User Enters Different Passwords In Both Fields
    Click On Forgot Password Link
    Sleep  3s
    Enter Email For Reset Password  ${e_validEmail}
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Sleep  3s
    Enter Reset Code  ${e_resetCode}
    Sleep  1s
    Enter New Password  ${e_newPwd}
    Sleep  1s
    Enter New Password Again  ${e_newInvalidPwd}
    Close Android Keyboard
    Log to Console  Closed Keyboard
    Sleep  1s
    Element Should Be Disabled  ${vf_A_changePwd}
    Log to Console  Change Password button remains disabled!

# 37
User Enters Only Code
    Click On Forgot Password Link
    Sleep  3s
    Enter Email For Reset Password  ${e_validEmail}
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Sleep  3s
    Enter Reset Code  ${e_resetCode}
    Sleep  1s
    Wait And Click Element On Android  ${vf_A_changePwd}
    Sleep  2s
    # Verify Error Message Displayed
    # Log to Console  Error Message Verified!