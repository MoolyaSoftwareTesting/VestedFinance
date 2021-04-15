*** Settings ***

Library     AppiumLibrary

***Keywords***

User Navigates To Forgot Password Screen
    User Navigates To Signin Screen
    Sleep  2s
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
    Sleep  3s
    Enter Email  ${e_validEmail}
    Log to Console  Entered Email
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Sleep  3s
    Enter Reset Code  ${e_resetCode}
    Sleep  1s
    Enter New Password  ${e_newPwd}
    Sleep  1s
    Enter New Password Again  ${e_newPwd}
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_changePwd}
    Log to Console  Clicked on Change Password button
    Sleep  2s
    Verify Signin Screen

User Enters Invalid Email
    Sleep  3s
    Enter Email  ${e_invalidUserName}
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Sleep  3s
    Verify Error Message Displayed  ${e_invalidEmailResetError}
    Log to Console  Error Message Verified!

User Enters Invalid Code For Password Reset
    Sleep  3s
    Enter Email  ${e_validEmail}
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
    Verify Error Message Displayed  ${e_invalidCodeErrorMsg}
    Log to Console  Error Message Verified!

User Enters Different Passwords In Both Fields
    Sleep  3s
    Enter Email  ${e_validEmail}
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

User Enters Only Code
    Sleep  3s
    Enter Email  ${e_validEmail}
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Sleep  3s
    Enter Reset Code  ${e_resetCode}
    Sleep  1s
    Wait And Click Element On Android  ${vf_A_changePwd}
    Sleep  2s
    # Verify Error Message Displayed
    # Log to Console  Error Message Verified!