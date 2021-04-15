*** Variables ***

#Test data or expected values
${e_emailPrefix} =  moolya+auto_     
${e_emailDomain} =  @gmail.com 
${e_invalidEmailID} =  $##$$*@gmail.com
${e_invalidEmailDomain} =  testabc
${e_existingAccErrMsg} =  An account with the given email already exists.
${e_existingGoogleAccErrMsg} =  PreSignUp failed with error | You already have an account created through Google Sign-In. Please login with Google by selecting "Continue with Google".
${e_pwdLowerCaseMsg} =  Password must contain a lower case letter
${e_pwdUpperCaseMsg} =  Password must contain an upper case letter
${e_pwdSpecialCharMsg} =  Password must contain a special character
${e_pwdNumMsg} =  Password must contain a number
${e_pwd8CharMsg} =  Password must contain at least 8 characters

#Locators 
${vf_A_verficationCodeLabel} =  xpath=//*[@text='Verification Code']
${vf_A_confirmAccBtn} =  xpath=//*[@text='Confirm Account']
${vf_A_resendCodeLink} =  //*[@text='Resend it']