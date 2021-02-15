*** Variables ***
#Desired Capabilities
${server}              http://localhost:4723/wd/hub
${platform}            Android
${platform_version}    8.1.0
${device}              ZY322BW52K
${app_package} =       com.vested.investing.android.staging
${app_activity} =      com.vested.mobileclient.SplashActivity
${appium}              appium
${apkPath}             Resources/APK/Kuvera-prod-1.169.1.apk

#  Test data or expected values
${e_title} =  Home | Vested Finance
${e_screenHeader} =  Welcome to Vested!
${e_signinScreentitle} =  Signin
${e_userName} =  indrajit+9377@vestedfinance.co
${e_password} =  iTestUser1!
${e_pin} =  111111
${e_dashboardTitle} =  Dashboard | Vested Finance
${e_shareInputTxt} =  1

# Application Locator < Locator Name >
${vf_A_screenHeader} =  xpath=//*[@text='Welcome to Vested!']
${vf_A_startInvestingBtn} =  xpath=//*[@text='Start Investing']
${vf_A_termsLink} =  xpath=//*[contains(text(),'terms')]
${vf_A_policyLink} =  xpath=//*[contains(text(),'policy')]
${vf_A_disclosureLink} =  xpath=//*[contains(text(),'disclosure')]
${vf_A_brochureLink} =  xpath=//*[contains(text(),'brochure')]


#Singin
${vf_A_signinFrame} =  xpath=//body/div[1]/div/div[2]
#${vf_A_userName} =  id=signInFormUsername
${vf_A_userName} =  xpath=//*[@class='android.widget.EditText'] 
${vf_A_password} =  xpath=//*[@class='android.widget.EditText'][2]
${vf_A_submitBtn} =  xpath=//*[@text='submit']
${vf_A_pin} =  xpath=//*[@class='android.widget.EditText']
${vf_A_continueBtn} =  xpath=//*[@text='Continue']
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