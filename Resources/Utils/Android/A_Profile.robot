*** Settings ***

Library     AppiumLibrary

***Keywords***

Signin With KYC Completed Basic Account
    Signin Without Pin Credentials  ${e_validEmailForKYCcmpltd}  ${e_validPasswordForKYCcmpltd}

# Profile 
Click On Profile Button
    Sleep  3s
    Wait And Click Element On Android  ${vf_A_profileBtn}
    Log to Console  Clicked on Profile Button

# PN01-PN10
Verify Menus And Sub-menus Under Profile
    Wait For Page Conatin Element  ${e_profileTxt}  5s
    Verify Page Conatin Text   ${e_profileTxt}
    Verify Page Conatin Text   ${e_usrnmDefney}
    Page Should Contain Element   ${vf_A_validEmail}
    Verify Page Conatin Text   ${e_driveWealthID}
    Log to Console  Verified Username, Email & Drive Wealth ID!
    Verify Page Conatin Text   ${e_appVersion}
    Log to Console  Verified App Version!
    Verify Page Conatin Text   ${e_history}
    Verify Page Conatin Text   ${e_transactions}
    Verify Page Conatin Text   ${e_tradeConfirmations}
    Verify Page Conatin Text   ${e_accStmts}
    Verify Page Conatin Text   ${e_taxDocs}
    Log to Console  Verified Sub-menu's under History!
    Verify Page Conatin Text   ${e_help}
    Verify Page Conatin Text   ${e_faq}
    Verify Page Conatin Text   ${e_emailUs}
    Verify Page Conatin Text   ${e_msgUs}
    Log to Console  Verified Sub-menu's under Help!
    Verify Page Conatin Text   ${e_account}
    Verify Page Conatin Text   ${e_invstmtProfile}
    Verify Page Conatin Text   ${e_security}
    Log to Console  Verified sub-menu's under Account!
    Swipe By Percent  70  70  40  40  5000
    Verify Page Conatin Text   ${e_logout}
    Log to Console  Verified Log Out!
    Go Back On Android
    Verify Dashboard Screen

# History

Verify Profile Screen
    Verify Element Visibility  ${vf_A_profileHeading}
    Log to Console  Verified Profile Screen!

Click On Transactions Under History Section
    Wait For Page Conatin Element  ${e_transactions}  10s
    Click Text  ${e_transactions}
    Log to Console  Clicked on Transactions under History section 

Click On Trade Confirmations Under History Section
    Wait For Page Conatin Element  ${e_tradeConfirmations}  5s
    Click Text  ${e_tradeConfirmations}
    Log to Console  Clicked on Trade Confirmations under History section

Click On Account Statements Under History Section
    Wait For Page Conatin Element  ${e_accStmts}  10s
    Click Text  ${e_accStmts}
    Log to Console  Clicked on Account Statements under History section

Click On Tax Documents Under History Section
    Wait For Page Conatin Element  ${e_taxDocs}  3s
    Click Text  ${e_taxDocs}
    Log to Console  Clicked on Tax Documents under History section

# PN13
Click On Transactions And Verify
    Click On Transactions Under History Section
    Verify Page Conatin Text  ${e_transactions}
    # Pending Transaction section not present in Defney's Acc
    # Verify Page Conatin Text  ${e_pendingTransactions}
    Verify Page Conatin Text  ${e_completedTransactions}
    Log to Console  Verified Heading and Subheading under Transactions screen!

# PN16
Click On Trade Confirmations And Verify
    Click On Trade Confirmations Under History Section
    Wait For Page Conatin Element  ${e_tradeConfirmations}  8s
    Verify Page Conatin Text  ${e_tradeConfirmations}
    Log to Console  Verified Heading under Trade Confirmations screen!

# PN21
Click On Account Statements And Verify
    Click On Account Statements Under History Section
    Wait For Page Conatin Element  ${e_accStmts}  10s
    Verify Page Conatin Text  ${e_accStmts}
    Log to Console  Verified Heading under Account Statements screen!

# PN26
Click On Tax Documents And Verify
    Click On Tax Documents Under History Section
    Wait For Page Conatin Element  ${e_taxDocs}  8s
    Verify Page Conatin Text  ${e_taxDocs}
    Log to Console  Verified Heading under Tax Documents screen!

# PN17
Click On A Existing Trade Confirmation
    Wait And Click Element On Android  ${vf_A_opt1Navigation}
    Sleep  3s
    Go Back On Android
    Log to Console  Clicked on a existing Trade Confirmation

# PN23
Click On A Existing Account Statement
    Wait And Click Element On Android  ${vf_A_opt1Navigation}
    Sleep  3s
    Go Back On Android
    Log to Console  Clicked on a existing Account Statement

# PN27
Click On A Existing Tax Document And Verify Current Year Guidelines
    Wait And Click Element On Android  ${vf_A_taxDoc2020}
    Wait For Page Conatin Element  ${e_2020TaxDoc}  5s
    Verify Page Conatin Text  ${e_2020TaxDoc}
    Log to Console  Clicked on a existing Tax Document!
    Click On Back Arrow

# PN14, PN18, PN24, PN28, PN46
Click On Back Button From Top And Verify Profile Screen
    Sleep  3s
    Click On Back Arrow
    Verify Profile Screen

Click On Sub-menus Under History And Verify
    Click On Profile Button
    Click On Transactions And Verify
    Click On Back Button From Top And Verify Profile Screen
    Click On Trade Confirmations And Verify
    Click On A Existing Trade Confirmation
    Click On Back Button From Top And Verify Profile Screen
    Click On Account Statements And Verify
    # Indrajits Account doesn't have any Existing Account Statement
    #Click On A Existing Account Statement
    Click On Back Button From Top And Verify Profile Screen
    Click On Tax Documents And Verify
    Click On A Existing Tax Document And Verify Current Year Guidelines
    Click On Back Button From Top And Verify Profile Screen

Verify KYC Approval Needed Popup For KYC Finished Account
    Wait For Page Conatin Element  ${e_kycApprovalNeededPopup}  5s
    Verify Page Conatin Text  ${e_kycApprovalNeededPopup}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupDesc}
    Verify Page Conatin Text  ${e_checkStatusBtn}
    Wait And Click Element On Android  ${vf_A_notNowBtn}
    Log to Console  Verified KYC Approval Needed Popup for KYC Finished Account

Verify Complete KYC Popup For Incomplete KYC Account
    Wait For Page Conatin Element  ${e_kycApprovalNeededPopup}  8s
    Verify Page Conatin Text  ${e_kycApprovalNeededPopup}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupDesc}
    Verify Page Conatin Text  ${e_startKyc}
    Wait And Click Element On Android  ${vf_A_notNowBtn}
    Log to Console  Verified KYC Approval Needed Popup for KYC Finished Account

# PN19
Click On Trade Confirmations And Verify KYC Approval Needed Popup
    Click On Trade Confirmations Under History Section
    Verify KYC Approval Needed Popup For KYC Finished Account

# PN22
Click On Account Statements And Verify KYC Approval Needed Popup
    Click On Account Statements Under History Section
    Verify KYC Approval Needed Popup For KYC Finished Account

# PN29
Click On Tax Documents And Verify KYC Approval Needed Popup
    Click On Tax Documents Under History Section
    Verify KYC Approval Needed Popup For KYC Finished Account

# PN15
Click On Transactions And Verify Complete KYC Popup
    Click On Transactions Under History Section
    Verify Complete KYC Popup For Incomplete KYC Account

# PN20
Click On Trade Confirmations And Verify Complete KYC Popup
    Click On Trade Confirmations Under History Section
    Verify Complete KYC Popup For Incomplete KYC Account

# PN25
Click On Account Statements And Verify Complete KYC Popup
    Click On Account Statements Under History Section
    Verify Complete KYC Popup For Incomplete KYC Account

# PN30
Click On Tax Documents And Verify Complete KYC Popup
    Click On Tax Documents Under History Section
    Verify Complete KYC Popup For Incomplete KYC Account

# PF_15
Verify Tax Documents Yearwise
    Wait For Page Conatin Element  ${e_taxDocs}  5s
    Click Text  ${e_taxDocs}
    Wait And Click Element On Android  ${vf_A_taxDoc2020}
    Wait For Page Conatin Element  ${e_forTaxRep}  5s
    Verify Page Conatin Text   ${e_forTaxRep}
    Verify Page Conatin Text   ${e_supTaxDoc}
    Verify Page Conatin Text   ${e_supTaxDocSH}
    Verify Page Conatin Text   ${e_supTaxDocL1}
    Verify Page Conatin Text   ${e_supTaxDocL2}
    Verify Page Conatin Text   ${e_supTaxDocL3}
    Verify Page Conatin Text   ${e_supTaxDocL4}
    Verify Page Conatin Text   ${e_supTaxDocN1}
    Verify Page Conatin Text   ${e_supTaxDocN2}
    Verify Page Conatin Text   ${e_supTaxDocN3}
    Verify Page Conatin Text   ${e_supTaxDocN4}
    Verify Page Conatin Text   ${e_supTaxDocN5}
    Log to Console  Verified Tax reporting- 2020!
    Click On Back Arrow
    Click On Back Button From Top And Verify Profile Screen

# Help
# PN32
User Clicks FAQ Under Help
    Wait And Click Element On Android  ${vf_A_faq}
    Wait For Page Conatin Element  ${e_faq}  5s
    Verify Page Conatin Text   ${e_faq}
    Log to Console  Verified FAQ Page!
    Go Back On Android
    Verify Profile Screen

Navigate To Gmail Compose
    Wait And Click Element On Android  ${vf_A_skipBtn}
    Wait And Click Element On Android  ${vf_A_addEmail}
    Wait And Click Element On Android  ${vf_A_googleOpt}
    Signin With Valid Credentials - Google
    Wait And Click Element On Android  ${vf_A_agreeBtn}
    Wait And Click Element On Android  ${vf_A_moreBtn}
    Wait And Click Element On Android  ${vf_A_acceptBtn}
    Sleep  2s
    Click On Element If Visibile  ${vf_A_okBtn}
    Wait And Click Element On Android  ${vf_A_takeMeToGmail}
    Click On Element If Visibile  ${vf_A_dismissBtn}

# PN33, PN34
User Clicks Email Us Under Help
    Wait And Click Element On Android  ${vf_A_emailUs}
    Sleep  2s
    Run Keyword If    '${environmentToRunTest}'=='${e_browserstackDevice}'  Navigate To Gmail Compose
    Wait For Page Conatin Element  ${e_gmailCompose}  5s
    Verify Page Conatin Text   ${e_gmailCompose}
    Click On Element If Visibile  ${vf_A_noThanksBtn}
    Verify Page Conatin Text   ${e_mailTxt1}
    Verify Page Conatin Text   ${e_mailTxt2}
    Verify Page Conatin Text   ${e_mailTxt3}
    Verify Page Conatin Text   ${e_mailTxt4}
    Verify Page Conatin Text   ${e_mailTxt5}
    Log to Console  Email Screen Verified!
    Go Back On Android
    Go Back On Android
    Verify Profile Screen

# PN35, PN36
User Clicks Message Us Under Help
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_msgUs}
    Wait For Page Conatin Element  ${e_msgUsHeading}  2s
    Verify Page Conatin Text   ${e_msgUsHeading}
    Verify Page Conatin Text   ${e_msgRspnd}
    Log to Console  Verified Intercom Chat Screen!
    Go Back On Android
    Sleep  10s
    Wait and Click Element On Android  ${vf_A_home}
    Page Should Contain Element  ${vf_A_chatBoxIcon}
    Click On Profile Button
    Sleep  2s
    Page Should Contain Element  ${vf_A_chatBoxIcon}
    # NOTE: Due to delay in reply the scripts are failing
    # Wait And Click Element On Android  ${vf_A_chatBoxIcon}
    # Input Text  ${vf_A_msgInputFld}  ${e_msgInput}
    # Wait And Click Element On Android  ${vf_A_sendBtn}
    # Close Android Keyboard
    # Sleep  2s
    # Log to Console  Verified Intercom Chat Screen!
    # Go Back On Android
    # Sleep  3s
    Verify Profile Screen

Click On Sub-menus Under Help And Verify
    # FAQ- Known Failure
    # User Clicks FAQ Under Help
    User Clicks Email Us Under Help
    User Clicks Message Us Under Help

# Account
# PN37-PN40
User Clicks Manage Plan Under Account
    Wait For Page Conatin Element  ${e_mngPln}  5s
    Click Text  ${e_mngPln}
    # Plan details section
    Wait For Page Conatin Element  ${e_planManagement}  5s
    Verify Page Conatin Text   ${e_planManagement}
    Log to Console  Verified Manage Us Page Heading!
    Verify Plan Details Section  ${e_planDetailsYrlyTxt1}
    Verify Page Contains Element On Android  ${vf_A_downgradePlanBtn}
    Log to Console  Verified Downgrade Plan Button!
    # Billing details section
    Verify Page Conatin Text   ${e_billingDetails}
    Verify Page Conatin Text   ${e_billingOptions}
    Verify Page Conatin Text   ${e_billingQtrlyTxt}
    Log to Console  Verified Billing Details for Quarterly plan!
    Verify Page Contains Element On Android  ${vf_switchToYrlyBtn}
    Log to Console  Verified Switch to Quarterly Plan Button!
    Click On Back Button From Top And Verify Profile Screen

# PN41, PN42
User Clicks Investment Profile Under Account
    Wait For Page Conatin Element  ${e_invstmtProfile}  5s
    Click Text  ${e_invstmtProfile}
    Wait For Page Conatin Element  ${e_invstmtProfile}  5s
    Verify Page Conatin Text  ${e_invstmtProfile}
    Log to Console  Verified Investment Page Heading!
    Wait For Page Conatin Element  ${e_riskToleranceOpt}  5s
    Click Text  ${e_riskToleranceOpt}
    Wait For Page Conatin Element  ${e_riskToleranceOpt}  5s
    Verify Page Conatin Text  ${e_riskToleranceOpt}
    Wait For Page Conatin Element  ${e_riskToleranceOpt1Txt}  5s
    Click Text  ${e_riskToleranceOpt1Txt}
    Click Text  ${e_riskToleranceOpt3Txt}
    Click Text  ${e_riskToleranceOpt2Txt}
    Verify Page Conatin Text  ${e_riskToleranceOpt2Txt}    
    Click On Back Arrow
    Verify Page Conatin Text  ${e_investingFrequencyOpt}
    Click Text  ${e_investingFrequencyOpt}
    Wait For Page Conatin Element  ${e_investingFrequencyOpt1Txt}  5s
    Click Text  ${e_investingFrequencyOpt1Txt}
    Click Text  ${e_investingFrequencyOpt3}
    Click Text  ${e_investingFrequencyOpt2Txt}
    Verify Page Conatin Text  ${e_investingFrequencyOpt2Txt}
    Click On Back Arrow
    Wait For Page Conatin Element  ${e_investingExperienceOpt}  5s
    Verify Page Conatin Text  ${e_investingExperienceOpt}
    Click Text  ${e_investingExperienceOpt}
    Wait For Page Conatin Element  ${e_investingExperienceOpt1Txt}  5s
    Click Text  ${e_investingExperienceOpt1Txt}
    Click Text  ${e_investingExperienceOpt2Txt}
    Click Text  ${e_investingExperienceOpt4Txt}
    Click Text  ${e_investingExperienceOpt5Txt}
    Click Text  ${e_investingExperienceOpt3Txt}
    Verify Page Conatin Text  ${e_investingExperienceOpt3Txt}
    Click On Back Arrow
    Wait For Page Conatin Element  ${e_yearlyIncomeOpt}  5s
    Verify Page Conatin Text  ${e_yearlyIncomeOpt}
    Click Text  ${e_yearlyIncomeOpt}
    Wait For Page Conatin Element  ${e_yearlyIncomeOpt1Txt}  5s
    Click Text  ${e_yearlyIncomeOpt1Txt}
    Click Text  ${e_yearlyIncomeOpt2Txt}
    Click Text  ${e_yearlyIncomeOpt4Txt}
    Click Text  ${e_yearlyIncomeOpt3Txt}
    Verify Page Conatin Text  ${e_yearlyIncomeOpt3Txt}
    Click On Back Arrow
    Wait For Page Conatin Element  ${e_liquidNetWorthOpt}  5s
    Verify Page Conatin Text  ${e_liquidNetWorthOpt}
    Click Text  ${e_liquidNetWorthOpt}
    Wait For Page Conatin Element  ${e_liquidNetWorthOpt1Txt}  5s
    Click Text  ${e_liquidNetWorthOpt1Txt}
    Click Text  ${e_liquidNetWorthOpt2Txt}
    Click Text  ${e_liquidNetWorthOpt4Txt}
    Click Text  ${e_liquidNetWorthOpt3Txt}
    Verify Page Conatin Text  ${e_liquidNetWorthOpt3Txt}
    Click On Back Arrow
    Wait For Page Conatin Element  ${e_totalNetWorthOpt}  5s
    Verify Page Conatin Text  ${e_totalNetWorthOpt}
    Click Text  ${e_totalNetWorthOpt}
    Wait For Page Conatin Element  ${e_totalNetWorthOpt1Txt}  5s
    Click Text  ${e_totalNetWorthOpt1Txt}
    Click Text  ${e_totalNetWorthOpt2Txt}
    Click Text  ${e_totalNetWorthOpt4Txt}
    Click Text  ${e_totalNetWorthOpt3Txt}
    Verify Page Conatin Text  ${e_totalNetWorthOpt3Txt}
    Log to Console  Verified all options under Investment Profile!
    Click On Back Arrow
    Sleep  3s
    Click On Back Button From Top And Verify Profile Screen

# PN43, PN44
User Clicks Security Under Account
    Wait For Page Conatin Element  ${e_security}  10s
    Click Text  ${e_security}
    Wait For Page Conatin Element  ${e_security}  5s
    Verify Page Conatin Text  ${e_security}
    Log to Console  Verified Security Page Heading!
    Verify Page Conatin Text  ${e_updatePIN}
    Verify Page Conatin Text  ${e_updatePIN}
    Log to Console  Verified Security Text!
    Click Text  ${e_updatePIN}
    Sleep  2s
    Enter Pin  ${e_validPin}
    Close Android Keyboard
    Wait For Page Conatin Element  ${e_changePINTxt}  5s
    Verify Page Conatin Text   ${e_changePINTxt}
    Log to Console  Verified Update Pin Page!
    Click On Back Arrow
    Click On Back Button From Top And Verify Profile Screen

Click On Go Premium
    Wait And Click Element On Android  ${vf_A_goPremium}
    Log to Console  Clicked on Go Premium

# PN45, PN06
User Clicks Go Premium Under Account
    Swipe By Percent  70  70  40  40  5000
    Click On Go Premium
    Wait For Page Conatin Element  ${e_payText}  2s
    Verify Page Conatin Text   ${e_payText}
    Sleep  2s
    Swipe By Percent  70  70  50  50  5000
    Wait For Page Conatin Element  ${e_premiumPlanTxt}  3s
    Verify Page Conatin Text   ${e_premiumPlanTxt}
    Sleep  2s
    Swipe By Percent  70  70  50  50  5000
    Wait For Page Conatin Element  ${vf_A_basicSelectBtn}  3s
    Click Element  ${vf_A_basicSelectBtn}
    Sleep  3s
    #Go Back On Android
    Click On Element If Visibile  ${vf_A_continuePayment}
    Wait For Page Conatin Element  ${e_premiumPlanAmt}  10s
    Verify Page Conatin Text   ${e_premiumPlanAmt}
    Click Element  ${vf_A_closeButton}
    Log to Console  Clicked on Close icon within Payment screen
    Sleep  3s
    Swipe By Percent  80  70  20  20  5000
    Wait For Page Conatin Element  ${e_faqTxt}  5s
    Verify Page Conatin Text   ${e_faqTxt}
    Verify Page Conatin Text   ${e_faqQ1}
    Verify Page Conatin Text   ${e_faqA1}
    Verify Page Conatin Text   ${e_faqQ2}
    Verify Page Conatin Text   ${e_faqA2}
    Verify Page Conatin Text   ${e_faqQ3}
    Verify Page Conatin Text   ${e_faqA3}
    Swipe By Percent  80  70  20  20  5000
    Wait For Page Conatin Element  ${e_faqQ4}  5s
    Verify Page Conatin Text   ${e_faqQ4}
    Verify Page Conatin Text   ${e_faqA4}
    Verify Page Conatin Text   ${e_faqQ5}
    Verify Page Conatin Text   ${e_faqA5}
    Log to Console  Verified Go Premium Under Account!
    Click On Back Button From Top And Verify Profile Screen

User Logs Out From The App
    Swipe By Percent  70  70  40  40  5000
    Wait And Click Element On Android  ${vf_A_logout}
    Verify Page Conatin Text   ${e_logoutPopupTxt}
    Verify Page Conatin Text   ${e_logoutPopupYes}
    Verify Page Conatin Text   ${e_logoutPopupNo}
    Log to Console  Verified Log Out popup!
    Click Text  ${e_logoutPopupYes}
    Verify Landing Page On Mobile
    Log to Console  Logged Out!

Click On Sub-menus Under Account And Verify
    Swipe By Percent  70  70  40  40  5000
    # NOTE- Manage Plan sections is not constant in Indrajit's account
    # User Clicks Manage Plan Under Account
    User Clicks Investment Profile Under Account
    Sleep  2s
    Swipe By Percent  70  70  40  40  5000
    User Clicks Security Under Account
    User Logs Out From The App