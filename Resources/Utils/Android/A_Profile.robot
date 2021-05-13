*** Settings ***

Library     AppiumLibrary

***Keywords***
# Profile 
User Clicks Profile Button 
    Sleep  5s
    Click On Profile Button
    Sleep  5s
    Verify Page Conatin Text   ${e_profileTxt}
    Log to Console  Profile Verified
    Verify Page Conatin Text   ${e_usrnmDefney}
    Log to Console  Username Verified
    Page Should Contain Element   ${vf_A_validEmail}
    Log to Console  Email Verified
    Verify Page Conatin Text   ${e_driveWealthID}
    Log to Console  Drive Wealth ID Verified
    # updated here
    Verify Page Conatin Text   ${e_appVersion}
    Log to Console  App Version Verified
    Verify Page Conatin Text   ${e_history}
    Log to Console  History Verified
    Verify Page Conatin Text   ${e_trnsctns}
    Log to Console  Transactions Verified
    Verify Page Conatin Text   ${e_tradeCnfrmtn}
    Log to Console  Trade Confirmation Verified
    Verify Page Conatin Text   ${e_accStmnt}
    Log to Console  Account Statements Verified
    Verify Page Conatin Text   ${e_taxDocs}
    Log to Console  Tax Documents Verified
    Verify Page Conatin Text   ${e_help}
    Log to Console  Help Verified
    Verify Page Conatin Text   ${e_faq}
    Log to Console  FAQ Verified
    Verify Page Conatin Text   ${e_emailUs}
    Log to Console  Email Us Verified
    Verify Page Conatin Text   ${e_msgUs}
    Log to Console  Message Us Verified
    Verify Page Conatin Text   ${e_account}
    Log to Console  Account Verified
    Verify Page Conatin Text   ${e_mngPln}
    Log to Console  Manage Plan Verified
    Verify Page Conatin Text   ${e_invstmt}
    Log to Console  Investment Profile Verified
    Verify Page Conatin Text   ${e_security}
    Log to Console  Security Verified
    Swipe By Percent  70  70  40  40  5000
    Verify Page Conatin Text   ${e_logout}
    Log to Console  Log out Verified
    Page Should Contain Element   ${vf_A_chatBoxIcon}
    Log to Console  Chatbox Verified
    Go Back
    Verify Dashboard Screen



Click On Profile Button
    Wait And Click Element On Android  ${vf_A_profileBtn}
    Log to Console  Clicked on Profile Button


# History
# Asha's code

# updated here
User Checks Tax Documents Yearwise
    Click On Profile Button
    Click Text  ${e_taxDocs}
    Wait And Click   ${vf_A_tax2020}
    Sleep  2s
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
    Log to Console  For tax reporting - 2020 Verified

# Help
User Clicks FAQ Under Help
    Click On Profile Button
    Wait And Click Element On Android  ${vf_A_faq}
    Sleep  2s
    Verify Page Conatin Text   ${e_faq}
    Log to Console  FAQ Page Verified
    Go Back On Android
    Verify Page Conatin Text   ${e_cmpltdtrnsctns}
    Log to Console  Completed Transactions Verified
    Click On Back Arrow

User Clicks Email Us Under Help
    Click On Profile Button
    Wait And Click Element On Android  ${vf_A_emailUs}
    Sleep  2s
    Verify Page Conatin Text   ${e_gmailCompose}
    Verify Page Conatin Text   ${e_mailTxt}
    Log to Console  Email Page Verified
    Go Back On Android
    Go Back On Android

User Clicks Message Us Under Help
    Click On Profile Button
    Wait And Click Element On Android  ${vf_A_msgUs}
    Sleep  2s
    Page Should Contain Element   ${vf_A_msgTitle}
    Verify Page Conatin Text   ${e_msgRspnd}
    Verify Page Conatin Text   ${e_msgTxt}
    Go Back On Android
    Sleep  10s
    Wait and Click Element On Android  ${vf_A_home}
    Page Should Contain Element  ${vf_A_chatBoxIcon}
    Click On Profile Button
    Sleep  2s
    Page Should Contain Element  ${vf_A_chatBoxIcon}
    Wait And Click Element On Android  ${vf_A_chatBoxIcon}
    Input Text  ${vf_A_msgInputFld}  ${e_msgInput}
    Wait And Click Element On Android  ${vf_A_sendBtn}
    Close Android Keyboard
    Sleep  2s
    Log to Console  Intercom Page Verified
    Go Back On Android

# Account
User Clicks Manage Plan Under Account
    Click On Profile Button
    Click Text  ${e_mngPln}
    #plan details
    Verify Page Conatin Text   ${e_planManagement}
    Log to Console  Manage Us Page Heading Verified
    Verify Page Conatin Text   ${e_planDetails}
    Verify Page Conatin Text   ${e_planDetailsTxt1}
    Verify Page Conatin Text   ${e_planDetailsTxt2}
    Log to Console  Plan Details Text Verified
    Verify Page Contains Element  ${vf_A_downgradePlanBtn}
    Log to Console  Downgrade Plan Button Verified
    # billing details
    Verify Page Conatin Text   ${e_billingDetails}
    Verify Page Conatin Text   ${e_billingOptions}
    Verify Page Conatin Text   ${e_billingTxt}
    Log to Console  Billing Details Text Verified
    Verify Page Contains Element  ${vf_switchPlanBtn}
    Log to Console  Switch Plan Button Verified

User Clicks Investment Profile Under Account
    Sleep  3s
    Click On Profile Button
    Click Text  ${e_invstmt}
    Verify Page Conatin Text   ${e_invstmt}
    Log to Console  Investment Page Heading Verified
    
    # 1
    Verify Page Conatin Text   ${e_riskTolerance}
    Click Text  ${e_riskToleranceOpt1Txt}
    Click Text  ${e_riskToleranceOpt3Txt}
    Click Text  ${e_riskToleranceOpt2Txt}
    Verify Page Conatin Text   ${e_riskToleranceOpt2Txt}    
    Click On Back Arrow
    
    # 2
    Verify Page Conatin Text   ${e_investingFrequency}
    Click Text  ${e_investingFrequencyOpt1Txt}
    Click Text  ${e_investingFrequencyOpt3Txt}
    Click Text  ${e_investingFrequencyOpt2Txt}
    Verify Page Conatin Text   ${e_investingFrequencyOpt2Txt}
    Click On Back Arrow
    
    # 3
    Verify Page Conatin Text   ${e_investingExperience}
    Click Text  ${e_investingExperienceOpt1Txt}
    Click Text  ${e_investingExperienceOpt2Txt}
    Click Text  ${e_investingExperienceOpt4Txt}
    Click Text  ${e_investingExperienceOpt5Txt}
    Click Text  ${e_investingExperienceOpt3Txt}
    Verify Page Conatin Text   ${e_investingExperienceOpt3Txt}
    Click On Back Arrow
    
    # 4
    Verify Page Conatin Text   ${e_yearlyIncome}
    Click Text  ${e_yearlyIncomeOpt1Txt}
    Click Text  ${e_yearlyIncomeOpt2Txt}
    Click Text  ${e_yearlyIncomeOpt4Txt}
    Click Text  ${e_yearlyIncomeOpt3Txt}
    Verify Page Conatin Text   ${e_yearlyIncomeOpt3Txt}
    Click On Back Arrow
    
    # 5
    Verify Page Conatin Text   ${e_liquidNetWorth}
    Click Text  ${e_liquidNetWorthOpt1Txt}
    Click Text  ${e_liquidNetWorthOpt2Txt}
    Click Text  ${e_liquidNetWorthOpt4Txt}
    Click Text  ${e_liquidNetWorthOpt3Txt}
    Verify Page Conatin Text   ${e_liquidNetWorthOpt3Txt}
    Click On Back Arrow

    # 6
    Verify Page Conatin Text   ${e_totalNetWorth}
    Click Text  ${e_totalNetWorthOpt1Txt}
    Click Text  ${e_totalNetWorthOpt2Txt}
    Click Text  ${e_totalNetWorthOpt4Txt}
    Click Text  ${e_totalNetWorthOpt3Txt}
    Verify Page Conatin Text   ${e_totalNetWorthOpt3Txt}
    Click On Back Arrow
    Click On Back Arrow

User Clicks Security Under Account
    Click On Profile Button
    Click Text  ${e_security}
    Verify Page Conatin Text   ${e_security}
    Log to Console  Security Page Heading Verified
    Verify Page Conatin Text   ${e_updatePIN}
    Verify Page Conatin Text   ${e_updatePIN}
    Log to Console  Security  Text Verified
    Click Text  ${e_updatePIN}
    Sleep  2s
    Enter Pin  ${e_validPin}
    Sleep  2s
    Verify Page Conatin Text   ${e_changePINTxt}
    Log to Console  Update Pin Page Verified

User Clicks Go Premium Under Account
    Click On Profile Button
    Wait And Click Element On Android  ${vf_A_goPremium}
    Sleep  2s
    Verify Page Conatin Text   ${vf_A_payText}
    # updated here
    Verify Element Visibility  ${vf_A_planPymntToggleBtn}
    Swipe By Percent  70  70  50  50  5000
    Verify Page Conatin Text   ${e_premiumPlanTxt}
    Click Element  ${vf_A_slctBtn}
    Sleep  3s
    Verify Page Conatin Text   ${e_premiumPlanAmt}
    Click Element  ${vf_A_closeButton}
    # updated from here
    Swipe By Percent  80  70  20  20  5000
    Verify Page Conatin Text   ${e_faqTxt}
    Verify Page Conatin Text   ${e_faqQ1}
    Verify Page Conatin Text   ${e_faqA1}
    Verify Page Conatin Text   ${e_faqQ2}
    Verify Page Conatin Text   ${e_faqA2}
    Verify Page Conatin Text   ${e_faqQ3}
    Verify Page Conatin Text   ${e_faqA3}
    Verify Page Conatin Text   ${e_faqQ4}
    Verify Page Conatin Text   ${e_faqA4}
    Verify Page Conatin Text   ${e_faqQ5}
    Verify Page Conatin Text   ${e_faqA5}
    Click On Back Arrow

User Logs Out From The App
    Click On Profile Button
    Swipe By Percent  70  70  40  40  5000
    Wait And Click Element On Android  ${vf_A_logout}
    Verify Landing Page On Mobile