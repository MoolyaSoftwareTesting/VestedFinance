*** Variables ***

# Credentials
${e_validEmailForgotPwd} =  abc@moolya.com

#  Test data or expected values
${e_resetCode} =  12345
${e_newPwd} =  Test123VF!
${e_newInvalidPwd} =  12345
${e_forgotPasswordLink} =  Forgot your password?
${e_invalidCodeErrorMsg} =  Invalid verification code provided, please try again. 
#${e_pwdErrorMsg} =  Password does not match the confirm password.
${e_invalidEmailResetError} =  Could not reset password for the account, please contact support or try again

# Forgot Password
${vf_A_ResetButton} =  xpath=//*[@text='Reset my password']
${vf_A_resetCode} =  xpath=//*[@resource-id='forgot_password_code']
${vf_A_newPwd} =  xpath=//*[@resource-id='new_password']
${vf_A_confirmPwd} =  xpath=//*[@resource-id='confirm_password']
${vf_A_changePwd} =  xpath=//*[@text='Change Password']