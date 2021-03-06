*** Variables ***

# KYC Completed Credentials
${e_validEmailForKYCcmpltd} =  testingVF111+8@gmail.com
${e_validPasswordForKYCcmpltd} =  Moolya@123

# Profile Variables
${e_usrnmDefney} =  Indrajit Palit
${e_driveWealthID} =  DriveWealth ID: VTEV000001
${e_appVersion} =  Version: v4.1 (1168)
${e_profileTxt} =  Profile
${e_history} =  HISTORY
${e_transactions} =  Transactions
${e_tradeConfirmations} =  Trade Confirmations
${e_accStmts} =  Account Statements
${e_taxDocs} =  Tax Documents
${e_help} =  HELP
${e_faq} =  FAQ
${e_emailUs} =  Email Us
${e_msgUs} =  Message Us
${e_account} =  ACCOUNT
${e_mngPln} =  Manage Plan
${e_invstmtProfile} =  Investment Profile
${e_security} =  Security
${e_goPremium} =  Go Premium
${e_logout} =  Log Out

# History Variables
${e_pendingTransactions} =  Pending Transactions
${e_completedTransactions} =  Completed Transactions
${e_downloadFilePopup} =  Download file
${e_kycApprovalNeededPopup} =  KYC Approval Needed
${e_kycApprovalNeededPopupDesc} =  KYC approval is needed before you can see your history
${e_checkStatusBtn} =  CHECK STATUS
${e_startKyc} =  START KYC
${e_2020TaxDoc} =  2020 Documents

# Help Variables
${e_gmailCompose} =  Compose
${e_mailTxt1} =  In order to help us better solve your issue, please provide the following information.
${e_mailTxt2} =  Steps to replicate your issue
${e_mailTxt3} =  What were you expecting to happen?
${e_mailTxt4} =  What actually happened?
${e_mailTxt5} =  Thank you.
${e_msgUsHeading} =  Vested Finance Inc
${e_msgRspnd} =  Typically replies in a few hour

# Account Variables
${e_planManagement} =  Plan Management
${e_planDetails} =  Plan Details
${e_planDetailsTxt1} =  You are currently on the Quarterly Premium Plan
${e_planDetailsTxt2} =  Your plan will renew automatically on Jul 19, 2021.
${e_billingDetails} =  Billing Details
${e_billingOptions} =  Billing Options
${e_billingTxt} =  You are currently paying ₹750 for the quarterly plan.
${e_riskToleranceOpt} =  Risk Tolerance
${e_investingFrequencyOpt} =  Investing Frequency
${e_investingExperienceOpt} =  Investing Experience
${e_investingFrequencyOpt3} =  Once every six months
${e_yearlyIncomeOpt} =  Yearly Income
${e_liquidNetWorthOpt} =  Liquid Net Worth
${e_totalNetWorthOpt} =  Total Net Worth
${e_updatePIN} =  Update Pin
${e_updatePINTxt} =  Change to a new pin
${e_changePINTxt} =  Enter your current 6 digit pin
${e_premiumPlanTxt} =  1 free withdrawal per year
${e_authSubscriptionTxt} =  Authenticate Subscription
${e_premiumPlanAmt} =  ₹ 2,500
${e_logoutPopupTxt} =  Are you sure you want to log out?
${e_logoutPopupYes} =  YES
${e_logoutPopupNo} =  NO
${e_faqTxt} =  Frequently Asked Questions
${e_faqQ1} =  What are vests? What is Vest upfront fee?
${e_faqA1} =  Investing in a Vest is optional. Vests are curated portfolios made by Vested to help you diversify your holdings. The Vest upfront fee is charged everytime you purchase a Vest.
${e_faqQ2} =  Are there any brokerage charges to invest in US stocks and ETFs?
${e_faqA2} =  Either plan will enable you to invest in US stocks and ETFs at zero commission. Please see zero commission disclosure.
${e_faqQ3} =  Are there any other fees associated with US investing?
${e_faqA3} =  Investing in the US requires you to fund your account with US dollars. Your bank may charge you an international wire fee to fund your account.
${e_faqQ4} =  Will I have the opportunity to purchase the subscription later?
${e_faqA4} =  Yes, the subscription can be purchased at a later time.
${e_faqQ5} =  Can I downgrade my premium later?
${e_faqA5} =  You have the option to stop your premium from auto-renewing. If you stop auto-renewal, you will continue to enjoy all premium benefits until the end of your premium term. There are no partial term refunds.

# LOCATORS
# Profile page locator
${vf_A_profileHeading} =  //*[@text='Profile' and ./parent::*[@class='android.view.ViewGroup']]
${vf_A_profileBtn} =  xpath=//*[@text='Profile']
${vf_A_history} =  xpath=//*[@text='HISTORY']
${vf_A_trnsctns} =  xpath=//*[@text='Transactions']
${vf_A_tradeCnfrmtn} =  xpath=//*[@text='Trade Confirmations']
${vf_A_accStmnt} =  xpath=//*[@text='Account Statements']
${vf_A_taxDocs} =  xpath=//*[@text='Tax Documents']
${vf_A_help} =  xpath=//*[@text='HELP']
${vf_A_faq} =  xpath=//*[@text='FAQ']
${vf_A_skipBtn} =  xpath=//*[@text='SKIP']
${vf_A_addEmail} =  xpath=//*[@text='Add an email address']
${vf_A_googleOpt} =  xpath=//*[@text='Google']
${vf_A_moreBtn} =  xpath=//*[@text='More']
${vf_A_agreeBtn} =  xpath=//*[@text='I agree']
${vf_A_acceptBtn} =  xpath=//*[@text='Accept']
${vf_A_takeMeToGmail} =  xpath=//*[@text='TAKE ME TO GMAIL']
${vf_A_dismissBtn} =  xpath=//*[@text='DISMISS']
${vf_A_noThanksBtn} =  xpath=//*[@text='NO,THANKS']
${vf_A_okBtn} =  xpath=//*[@text='OK']
${vf_A_emailUs} =  xpath=//*[@text='Email Us']
${vf_A_msgUs} =  xpath=//*[@text='Message Us']
${vf_A_account} =  xpath=//*[@text='ACCOUNT']
${vf_A_security} =  xpath=//*[@text='Security']
${vf_A_goPremium} =  xpath=//*[@text='Go Premium']
${vf_A_logout} =  xpath=//*[@text='Log out']
${vf_A_validEmail} =  xpath=//*[@text='indrajit+9377@vestedfinance.co']
${vf_A_chatBoxIcon} =  xpath=//*[@class='android.widget.ImageButton']

# History Locators
${vf_A_opt1Navigation} =  xpath=(//*[@text=''])[1]
${vf_A_downloadPopupCancelBtn} =  xpath=//*[@text=‘Cancel’]
${vf_A_notNowBtn} =  xpath=//*[@text='NOT NOW']
${vf_A_taxDoc2020} =  xpath=//*[@text='2020']

# Help Locators
${vf_A_msgTitle} =  xpath=//*[@id='intercom_toolbar_title_container']

# Account Locators
${vf_A_downgradePlanBtn} =  xpath=//*[@text='Downgrade Plan']
${vf_switchPlanBtn} =  xpath=//*[@text='Switch to Yearly Plan']
${vf_A_closeButton} =  xpath=//*[@text='×']
${vf_A_planPymntToggleBtn} =  xpath=//*[@class='android.widget.Switch']