*** Settings ***

Library     AppiumLibrary

***Keywords***

User Navigates To Forgot Password Screen
    User Navigates To Signin Screen
    Verify Page Conatin Text  ${e_forgotPasswordLink}
    Click Text  ${e_forgotPasswordLink}
    Log To Console  Clicked on Forgot your Password link!    

Enter Reset Code
    [Arguments]  ${resetCode}
    Verify Element Visibility  ${vf_A_resetCode}
    Wait And Click Element On Android  ${vf_A_resetCode}
    Input Text  ${vf_A_resetCode}  ${resetCode} 
    Log To Console  Code Entered

Enter New Password
    [Arguments]  ${newPwd}
    Verify Element Visibility  ${vf_A_newPwd}
    Wait And Click Element On Android  ${vf_A_newPwd}
    Input Text  ${vf_A_newPwd}  ${newPwd} 
    Log To Console  New Password Entered

Enter New Password Again
    [Arguments]  ${newPwdAgain}
    Verify Element Visibility  ${vf_A_confirmPwd}
    Wait And Click Element On Android  ${vf_A_confirmPwd}
    Input Text  ${vf_A_confirmPwd}  ${newPwdAgain} 
    Log To Console  New Password Entered Again

User Updates Password
    Enter Email  ${e_validEmail}
    Log to Console  Entered Email
    Wait For Element Visibility On Android  ${vf_A_ResetButton}
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Enter Reset Code  ${e_resetCode}
    Enter New Password  ${e_newPwd}
    Enter New Password Again  ${e_newPwd}
    Close Android Keyboard
    Wait And Click Element On Android  ${vf_A_changePwd}
    Log to Console  Clicked on Change Password button
    Verify Signin Screen

User Enters Invalid Email
    Enter Email  ${e_invalidUserName}
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Verify Error Message Displayed  ${e_invalidEmailResetError}
    Log to Console  Error Message Verified!

User Enters Invalid Code For Password Reset
    Enter Email  ${e_validEmail}
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Enter Reset Code  ${e_resetCode}
    Enter New Password  ${e_newPwd}
    Enter New Password Again  ${e_newPwd}
    Close Android Keyboard
    Click Element  ${vf_A_changePwd}
    Verify Error Message Displayed  ${e_invalidCodeErrorMsg}
    Log to Console  Error Message Verified!

User Enters Different Passwords In Both Fields
    Enter Email  ${e_validEmail}
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Enter Reset Code  ${e_resetCode}
    Enter New Password  ${e_newPwd}
    Enter New Password Again  ${e_newInvalidPwd}
    Close Android Keyboard
    Log to Console  Closed Keyboard
    Wait For Element Visibility On Android  ${vf_A_changePwd}
    Element Should Be Disabled  ${vf_A_changePwd}
    Log to Console  Change Password button remains disabled!

User Enters Only Code
    Enter Email  ${e_validEmail}
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Enter Reset Code  ${e_resetCode}
    Wait And Click Element On Android  ${vf_A_changePwd}
    # Verify Error Message Displayed
    # Log to Console  Error Message Verified!