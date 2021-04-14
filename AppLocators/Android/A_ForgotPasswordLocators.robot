*** Variables ***

#  Test data or expected values
${e_validEmail} =  indrajit+9377@vestedfinance.co
${e_validPassword} =  iTestUser1!
${e_validPin} =  111111
${e_invalidUserName} =  abcd@gmail.com
${e_invalidPwd} =  Abcd@123

# Forgot Password
${vf_A_ForgotPassword} =  Forgot your password?
${vf_A_ResetButton} =  xpath=//*[@text='Reset my password']
${vf_A_resetCode} =  xpath=//*[@resource-id='forgot_password_code']
${vf_A_newPwd} =  xpath=//*[@resource-id='new_password']
${vf_A_confirmPwd} =  xpath=//*[@resource-id='confirm_password']
${vf_A_changePwd} =  xpath=//*[@text='Change Password']