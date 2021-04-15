*** Variable ***
#  Test data or expected values
${e_title} =  Home | Vested Finance
${e_screenHeader} =  Welcome to Vested!
${e_signinScreentitle} =  Signin
${e_userName} =  indrajit+9377@vestedfinance.co
${e_password} =  iTestUser1!
${e_pin} =  111111
${e_dashboardTitle} =  Dashboard | Vested Finance
${e_shareInputTxt} =  1

# Locators 
${vf_w_screenHeader} =  xpath=//h3[@class='css-d8jgji e1b8uh555'] 
${vf_w_intercomLauncher} =  xpath=//div[contains(@class,'intercom-launcher')]
${vf_w_continueBtn} =  xpath=//*[contains(text(),'Continue')]
${vf_w_termsLink} =  xpath=//a[@class='css-yj8iiz e1b8uh5513']
${vf_w_policyLink} =  xpath=//a[@class='css-yj8iiz e1b8uh5513'][2]
${vf_w_disclosureLink} =  xpath=//a[@class='css-yj8iiz e1b8uh5513'][3]
${vf_w_brochureLink} =  xpath=//a[@class='css-yj8iiz e1b8uh5513'][4]


#Singin
${vf_w_signinFrame} =  xpath=//body/div[1]/div/div[2]
${vf_w_userName} =  xpath=(//input[@name='username'])[2]
${vf_w_password} =  xpath=(//input[@name='password'])[2]
${vf_w_submitBtn} =  xpath=(//input[contains(@name,'signInSubmitButton')])[2]
${vf_w_pin} =  id=pin
${vf_w_stockOne} =  xpath=(//*[text()='Tesla, Inc.'])[1]
${vf_w_stockTwo} =  xpath=(//*[text()='Apple, Inc.'])[1]
${vf_w_buyBtn} =  xpath=(//*[text()='BUY'])[1]
${vf_w_shareInputTxt} =  xpath=(//input[@class='ant-input'])[1]
${vf_w_orderBtn} =  xpath=(//button[@class='ant-btn'])[1]
${vf_w_sellBtn} =  xpath=(//*[text()='SELL'])[1]
${vf_w_logout} =  xpath=(//*[text()='Log Out'])[1]
${vf_w_profile} =  xpath=//span[contains(text(),'Profile')]
${vf_w_closeButton} =  xpath=//button[@class='ant-modal-close']