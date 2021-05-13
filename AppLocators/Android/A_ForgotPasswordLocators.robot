*** Variables ***

#  Test data or expected values
${e_resetCode} =  12345
${e_newPwd} =  Test123VF!
${e_newInvalidPwd} =  Test12VF!
${e_forgotPasswordLink} =  Forgot your password?
${e_invalidCodeErrorMsg} =  Invalid verification code provided, please try again. 
#${e_pwdErrorMsg} =  Password does not match the confirm password.
${e_invalidEmailResetError} =  Could not reset password for the account, please contact support or try again
${e_resetCode} =  123456
${e_newPwd} =  Test123VF!
${e_resetErrorMsg} =  Invalid verification code provided, please try again. 
${e_newInvalidPwd} =  test12vf
${e_pwdErrorMsg} =  Password does not match the confirm password.
${e_ResetError} =  Could not reset password for the account, please contact support or try again
${e_pwdLowerCaseMsg} =  Password must contain a lower case letter
${e_pwdUpperCaseMsg} =  Password must contain an upper case letter
${e_pwdSpecialCharMsg} =  Password must contain a special character
${e_pwdNumMsg} =  Password must contain a number
${e_pwd8CharMsg} =  Password must contain at least 8 characters
# Forgot Password
${vf_A_ResetButton} =  xpath=//*[@text='Reset my password']
${vf_A_resetCode} =  xpath=//*[@resource-id='forgot_password_code']
${vf_A_newPwd} =  xpath=//*[@resource-id='new_password']
${vf_A_confirmPwd} =  xpath=//*[@resource-id='confirm_password']
${vf_A_changePwd} =  xpath=//*[@text='Change Password']
