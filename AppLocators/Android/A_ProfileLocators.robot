*** Variables ***
# Profile Variables
${e_usrnmDefney} =  Defney Test
${e_driveWealthID} =  DriveWealth ID: VTSA000009
${e_appVersion} =  Version: v4.1 (1168)
${e_profileTxt} =  Profile
${e_history} =  HISTORY
${e_trnsctns} =  Transactions
${e_tradeCnfrmtn} =  Trade Confirmations
${e_accStmnt} =  Account Statements
${e_taxDocs} =  Tax Documents
${e_help} =  HELP
${e_faq} =  FAQ
${e_emailUs} =  Email Us
${e_msgUs} =  Message Us
${e_account} =  ACCOUNT
${e_mngPln} =  Manage Plan
${e_invstmt} =  Investment Profile
${e_security} =  Security
${e_goPremium} =  Go Premium
${e_logout} =  Log Out


# History Variables
${e_cmpltdtrnsctns} =  Completed Transactions

# Help Variables
${e_gmailCompose} =  Compose
${e_mailTxt} =  In order to help us better solve your issue, please provide the following information. Steps to replicate your issue What were you expecting to happen? What actually happened? Thank you.
${e_msgRspnd} =  Typically replies in a few hour
${e_msgTxt} =  We run on intercom
${e_msgInput} =  When does the market open for investing
${e_forTaxRep} =  For Tax Reporting
${e_supTaxDoc} =  Supporting Tax Documents
${e_supTaxDocSH} =  Apr 2020 - Mar 2021 (Indian Tax Year)
${e_supTaxDocL1} =  General Filings Summary (PDF)
${e_supTaxDocL2} =  General Filings Summary (XLSX)
${e_supTaxDocL3} =  Foreign Asset Filing Summary (XLSX)
${e_supTaxDocL4} =  Form 67  Filing Summary (XLSX)
${e_supTaxDocN1} =  This summarizes the proceeds, dividends, interest, long-term gains (if applicable), and short-term gains in a PDF format.
${e_supTaxDocN2} =  This is the General Filings Summary in excel format. It also includes all itemized proceeds from your transactions.
${e_supTaxDocN3} =  This contains the necessary information to fill out Schedule FA.
${e_supTaxDocN4} =  This contains the necessary information to fill out Form 67, which is needed to claim your tax credit (applicable only if you receive a sufficient amount of dividends in the previous fiscal year).
${e_supTaxDocN5} =  Note: Please consult your Chartered Accountant if you have any questions related to these documents.


# Account Variables
${e_planManagement} =  Plan Management
${e_planDetails} =  Plan Details
${e_planDetailsTxt1} =  You are currently on the Quarterly Premium Plan
${e_planDetailsTxt2} =  Your plan will renew automatically on Jul 19, 2021.
${e_billingDetails} =  Billing Details
${e_billingOptions} =  Billing Options
${e_billingTxt} =  You are currently paying ₹750 for the quarterly plan.
${e_updatePIN} =  Update Pin
${e_updatePINTxt} =  Change to a new pin
${e_changePINTxt} =  Enter your new 6 digit pin
${e_premiumPlanTxt} =  1 free withdrawal per year
${e_premiumPlanAmt} =  ₹ 2500

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


# Profile page locator
${vf_A_profileTxt} =  xpath=//*[@text='Profile']
${vf_A_history} =  xpath=//*[@text='HISTORY']
${vf_A_trnsctns} =  xpath=//*[@text='Transactions']
${vf_A_tradeCnfrmtn} =  xpath=//*[@text='Trade Confirmations']
${vf_A_accStmnt} =  xpath=//*[@text='Account Statements']
${vf_A_taxDocs} =  xpath=//*[@text='Tax Documents']
${vf_A_help} =  xpath=//*[@text='HELP']
${vf_A_faq} =  xpath=//*[@text='FAQ']
${vf_A_emailUs} =  xpath=//*[@text='Email Us']
${vf_A_msgUs} =  xpath=//*[@text='Message Us']
${vf_A_account} =  xpath=//*[@text='ACCOUNT']
${vf_A_mngPln} =  xpath=//*[@text='Manage Plan']
${vf_A_invstmt} =  xpath=//*[@text='Investment Profile']
${vf_A_security} =  xpath=//*[@text='Security']
${vf_A_goPremium} =  xpath=//*[@text='Go Premium']
${vf_A_logout} =  xpath=//*[@text='Log out']
${vf_A_validEmail} =  xpath=//*[@text='defney+tes3@vestedfinance.co']
${vf_A_chatBoxIcon} =  xpath=//*[@id='launcher_icon']

# History Locators
${vf_A_tax2020} =  xpath=//*[@text='2020']
# Help Locators
${vf_A_msgTitle} =  xpath=//*[@id='intercom_toolbar_title_container']
${vf_A_msgInputFld} =  xpath=//*[@id='input_text']
${vf_A_sendBtn} =  xpath=//*[@id='send_button']
# Account Locators
${vf_A_downgradePlanBtn} =  xpath=//*[@text='Downgrade Plan']
${vf_switchPlanBtn} =  xpath=//*[@text='Switch to Yearly Plan']
${vf_A_closeButton} =  xpath=//*[@id='modal-close']
${vf_A_planPymntToggleBtn} =  xpath=//*[@class='android.widget.Switch']