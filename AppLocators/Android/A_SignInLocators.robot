*** Variables ***

#  Test data or expected values
${e_validEmail} =  indrajit+9377@vestedfinance.co
${e_validPassword} =  iTestUser1!
${e_validPin} =  111111
${e_invalidUserName} =  abcd@gmail.com
${e_invalidPwd} =  Abcd@123
# Google Credentials
${e_validGoogleEmail} =  vftest885@gmail.com
${e_validGooglePassword} =  Vested@123
# Apple Credentials
# testios@moolya.com - actual username
${e_appleUserId} =  abcd@dot.com
${e_applePwd} =  Moolya@123
# Facebook Credentials
${e_FbEmailId} =  username@example.com
${e_FbPwd} =  passwordsimply
${e_invalidLoginErrorTxt} =  The username or password you entered is invalid
${e_invalidGoogleLoginErrorTxt} =  Wrong password. Try again or click Forgot password to reset it
${e_invalidFacebookLoginErrorTxt} =   Your Apple ID or password was incorrect
${e_emptyFieldErrorTxt} =  Please fill out this field
${e_dashboardTitle} =  Dashboard | Vested Finance
${e_signInAsDiffUser} =  Sign in as a different user?
${e_signinTitle} =  Sign in with your email and password

#Singin
${vf_A_signInBtn} =  xpath=//*[@name='signInSubmitButton']
${vf_A_signUpLink} =  xpath=//*[@text='Sign up']
${vf_A_signInLink} =  xpath=//*[@text='Sign in']
${vf_A_signinFrame} =  xpath=//body/div[1]/div/div[2]
#${vf_A_userName} =  id=signInFormUsername
${vf_A_userName} =  xpath=//*[@class='android.widget.EditText'] 
${vf_A_password} =  xpath=//*[@class='android.widget.EditText'][2]
${vf_A_submitBtn} =  xpath=//*[@text='submit']
${vf_A_pin} =  xpath=//*[@class='android.widget.EditText']
${vf_A_continueBtn} =  xpath=//*[@text='Continue']
${vf_A_emptyFieldErrorMsg} =  xpath=//android.widget.Toast[1]
${vf_A_easySignInBtn} =  xpath=//*[@class='android.widget.Button']
${vf_A_signInAsDiffUserLink} =  xpath=//*[@text='Sign in as a different user?']
# Google locators
${vf_A_googlePwd} =  xpath=//*[@class='android.widget.EditText']
${vf_A_continueWithGoogleBtn} =  xpath=//*[@text='Continue with Google']
${vf_A_useAnotherAccBtn} =  xpath=//*[@text='Use another account']
${vf_A_googleSigninNextBtn} =  xpath=//*[@text='Next']
${vf_A_googleChooseAccPage} =  xpath=//*[@text='Choose an account']
# Apple locators
${vf_A_continueWithAppleBtn} =  xpath=//*[@text='Continue with Apple']
${vf_A_appleEnterBtn} =  xpath=//*[@resource-id='sign-in']
${vf_A_applePwd} =  xpath=//*[@class='android.widget.EditText']
#${vf_A_appleSigninBtn} =  xpath=//*[@nodeName='I']
${vf_A_appleSigninBtn} =  xpath=//*[@text=' Continue ']
${vf_A_appleContWithAccPage} =  xpath=//*[@text='Continue with account']
#Facebook locators
${vf_A_continueWithFbBtn} =  xpath=//*[@text='Continue with Facebook']
${vf_A_FbEmail} =  xpath=//*[@id='m_login_email']
${vf_A_FbPwd} =  xpath=//*[@id='m_login_password']
${vf_A_FbSigninBtn} =  xpath=//*[@name='login']
#Dashboard
${vf_A_stockOne} =  xpath=//*[@text='Tesla, Inc.']
${vf_A_stockTwo} =  xpath=//*[@text='Apple, Inc.']
${vf_A_buyBtn} =  xpath=//*[@text='Buy']
${vf_A_shareInputTxt} =  xpath=//*[@class='android.widget.EditText']
${vf_A_previewOrderBtn} =  xpath=//*[@text='Preview Order']
${vf_A_placeBuyOrderBtn} =  xpath=//*[@text='Place Buy Order']
${vf_A_sellBtn} =  xpath=//*[@text='Sell']
${vf_A_placeSellOrderBtn} =  xpath=//*[@text='Place Sell Order']
${vf_A_logout} =  xpath=//*[text='Log Out']
${vf_A_profile} =  xpath=//span[contains(text(),'Profile')]
${vf_A_noBtn} =  xpath=//*[@text='NO']
${vf_A_cancelBtn} =  xpath=//*[@text='CANCEL']
${vf_A_signInAsDiffUser} =  xpath=//*[@text='Sign in as a different user?']