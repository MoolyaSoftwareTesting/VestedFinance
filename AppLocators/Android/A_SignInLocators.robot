*** Variables ***

#  Test data or expected values

# updated here
# Basic User
${e_validBasicEmail} =  defney+Tes2@vestedfinance.co
${e_validBasicPassword} =  Test@123

# defney+Tes2@vestedfinance.co | Test@123
# thiruvengadam.s+2@moolya.com | Thiru!99


# Funded User Credentials
${e_validEmail} =  defney+Tes3@vestedfinance.co
${e_validPassword} =  Test@123
${e_validPin} =  111111
${e_invalidUserName} =  abcdxyz@gmail.com
${e_invalidPwd} =  Abcd@123
${e_incorrectPassword} =  $$$$$

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
${e_invalidFacebookLoginErrorTxt} =  The password that you've entered is incorrect

#Singin Locators
${vf_A_signInBtn} =  xpath=//*[@name='signInSubmitButton']
${vf_A_signUpLink} =  xpath=//*[@text='Sign up']
${vf_A_signInLink} =  xpath=//*[@text='Sign in']
${vf_A_signinFrame} =  xpath=//body/div[1]/div/div[2]
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
${vf_A_googleExistingAcc} =  xpath=//*[@text='Test VF']


# Apple locators
${vf_A_continueWithAppleBtn} =  xpath=//*[@text='Continue with Apple']
${vf_A_appleEnterBtn} =  xpath=//*[@resource-id='sign-in']
${vf_A_applePwd} =  xpath=(//*[@class='android.widget.EditText'])[2]
${vf_A_appleSigninBtn} =  xpath=//*[@text='Continue']
${vf_A_appleContWithAccPage} =  xpath=//*[@text='Continue with account']

#Facebook locators
${vf_A_continueWithFbBtn} =  xpath=//*[@text='Continue with Facebook']
${vf_A_FbEmail} =  xpath=//*[@class='android.widget.EditText']
${vf_A_FbPwd} =  xpath=(//*[@class='android.widget.EditText'])[2]
${vf_A_FbSigninBtn} =  xpath=//*[@text='Log In']

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

# Apple Signin Locators
${vf_A_apple_acc} =  xpath=//*[@text=' Continue with Apple']
${vf_A_apple_enter} =  xpath=//*[@resource-id='sign-in']
${vf_A_apple_password} =  xpath=//*[@class='android.widget.EditText'] 
${vf_A_apple_signin} =  xpath=//*[@id='sign-in']

# testios@moolya.com - actual username
# ${vf_A_apple_username_id} =  xpath=//*[@id='account_name_text_field']

# #Facebook Signin
${vf_A_Fb_button} =  xpath=//*[@text='Continue with Facebook']
# ${vf_A_Fb_login} =  xpath=//*[@id='m_login_email']
${vf_A_Fb_pwd} =  xpath=//*[@resource-id='m_login_password']
${vf_A_Fb_signinbutton} =  xpath=//*[@text='Log In']
