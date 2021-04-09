*** Variables ***

#Test data or expected values
${e_emailPrefix} =  moolya+auto_     
${e_emailDomain} =  @gmail.com 
${e_invalidEmailID} =  $##$$*@gmail.com
${e_invalidEmailDomain} =  testabc
${e_existingAccErrMsg} =  An account with the given email already exists.

#Locators 
${vf_A_verficationCodeLabel} =  xpath=//*[@text='Verification Code']
${vf_A_confirmAccBtn} =  xpath=//*[@text='Confirm Account']
${vf_A_resendCodeLink} =  //*[@text='Resend it']