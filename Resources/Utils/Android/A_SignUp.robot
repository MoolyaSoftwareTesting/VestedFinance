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

New User Enters Invalid Email & Verify Error Message
    Enter Email  ${e_invalidUserName}
    Enter Password  ${e_validPassword}
    Click Element  ${vf_A_signUpLink}
    Verify Error Message Displayed  ${e_errMsg_Invalid}

New User Enters Only Domain Name & Verify Error Message
    Enter Email  ${e_invalidUserName}
    Enter Password  ${e_validPassword}
    Click Element  ${vf_A_signUpLink}
    Verify Error Message Displayed  errorMsg

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
