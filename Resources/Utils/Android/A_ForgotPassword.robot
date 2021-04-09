*** Settings ***

Library     AppiumLibrary

***Keywords***

User Enters Invalid Email
    Sleep  2s
    Wait For Element Visibility On Android  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${e_invalidUserName}
    Log to Console  Email Entered!
    Click Text  ${vf_A_ForgotPassword}
    Log to Console  Reset Password Clicked!
    Sleep  3s
    Input Text  ${vf_A_userName}  ${e_invalidUserName}
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_ResetButton}
    Sleep  3s
    Verify Error Message Displayed  ${e_ResetError}
    Log to Console  Error Message Verified!

User Enters Valid Email For Password Reset
    Wait For Element Visibility On Android  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${e_validEmail}
    Log to Console  Email Entered!
    Wait And Click Element On Android  ${vf_A_password}
    Input Text  ${vf_A_password}  ${e_validPassword}
    Log to Console  Password Entered!
    Click On Signin Button  ${vf_A_signInBtn}
    

