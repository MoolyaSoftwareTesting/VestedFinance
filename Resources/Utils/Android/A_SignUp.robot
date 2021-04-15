*** Settings ***

Library     AppiumLibrary

*** Keywords ***

User Navigates To Signup Screen
    Click on Start Investing button
    Click On Element If Visibile  ${vf_A_signInAsDiffUser}
    User Clicks On Signup Link

User Enters New Email Password & Signups
    ${emailIDGenerated} =  Generate Email ID
    Enter Email  ${emailIDGenerated}
    Enter Password  ${e_validPassword}
    Click Element  ${vf_A_signUpLink}
    User Lands On Verficiation Code Screen
    Enter Pin  ${e_validPin}
    Click Element  ${vf_A_confirmAccBtn}

User Lands On Verficiation Code Screen
    Wait For Element Visibility On Android  ${vf_A_verficationCodeLabel}
    Verify Element Visibility  ${vf_A_verficationCodeLabel}

Click On Resend Code
    Wait For Element Visibility On Android  ${vf_A_resendCodeLink}
    Click Element  ${vf_A_resendCodeLink}
    User Lands On Verficiation Code Screen
    Enter Pin  ${e_validPin}

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

User Enters Invalid Password
    Enter Password  ${e_incorrectPassword}

Verify Password Combination Criteria 
    Verify Error Message Displayed  ${e_pwdLowerCaseMsg}
    Verify Error Message Displayed  ${e_pwdUpperCaseMsg}
    Verify Error Message Displayed  ${e_pwdSpecialCharMsg}
    Verify Error Message Displayed  ${e_pwdNumMsg}
    Verify Error Message Displayed  ${e_pwd8CharMsg}