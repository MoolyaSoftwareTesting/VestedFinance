*** Settings ***

Library     AppiumLibrary

*** Keywords ***

User Navigates To Signup Screen
    Click On Continue Button Under Landing Screen
    Click On Element If Visibile  ${vf_A_signInAsDiffUser}
    User Clicks On Signup Link

User Enters New Email Password & Signups
    ${emailIDGenerated} =  Generate Email ID
    Set Global Variable  ${emailIDGenerated}
    Enter Email  ${emailIDGenerated}
    Enter Password  ${e_validPassword}
    Click Element  ${vf_A_signUpLink}

User Lands On Verficiation Code Screen
    Click On Element If Visibile  ${vf_A_SavePwdNeverBtn}
    Wait For Element Visibility On Android  ${vf_A_verficationCodeLabel}
    Verify Element Visibility  ${vf_A_verficationCodeLabel}
    Wait For Element Visibility On Android  ${vf_A_CloseBtn}
    Click Element  ${vf_A_CloseBtn}

Click On Resend Code
    Close Android Keyboard    
    Wait For Element Visibility On Android  ${vf_A_resendCodeLink}
    Click Element  ${vf_A_resendCodeLink}
    Log to Console  Verified Resend Code link!

User Enters Existing Email Password & Signups
    Enter Email  ${e_validEmail}
    Enter Password  ${e_validPassword}
    Click Element  ${vf_A_signUpLink}
    Verify Error Message Displayed  ${e_existingAccErrMsg}

User Enters Existing Google Account Password To Signup
    Enter Email  ${e_validGoogleEmail}
    Enter Password  ${e_validPassword}
    Click Element  ${vf_A_signUpLink}
    Verify Error Message Displayed  ${e_existingGoogleAccErrMsg}

User Enters Valid Email
    Sleep  5s
    Enter Email  ${e_validEmail}

User Enters Invalid Password
    Sleep  5s
    Enter Password  ${e_incorrectPassword}

Verify Password Combination Criteria 
    Sleep  3s
    Verify Error Message Displayed  ${e_pwdLowerCaseMsg}
    Verify Error Message Displayed  ${e_pwdUpperCaseMsg}
    Verify Error Message Displayed  ${e_pwdSpecialCharMsg}
    Verify Error Message Displayed  ${e_pwdNumMsg}
    Verify Error Message Displayed  ${e_pwd8CharMsg}