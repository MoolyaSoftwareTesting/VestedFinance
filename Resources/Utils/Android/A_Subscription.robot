*** Settings ***

Library     AppiumLibrary

***Keywords***

Signin With KYC Approved Basic Account
    Signin With Pin Credentials  ${e_emailKycApproveBasic}  ${e_pwdKycApproveBasic}  ${e_validPin}

Signin With KYC Approved Premium Account
    Signin With Pin Credentials  ${e_emailKycApprovePremium}  ${e_pwdKycApprovePremium}  ${e_pinKycApprovePremium}

# Normal Subscription
Verify Values Under Basic Plan For Basic Account
    Verify Page Conatin Text  ${e_basicHeading}
    Verify Page Conatin Text  ${e_subsChrgsUnderBasic}
    Verify Element Visibility  ${vf_A_zeroComInvstUnderBasic}
    Verify Page Conatin Text  ${e_vestUpfrntFeeUnderBasic}
    Verify Element Visibility  ${vf_A_vestUpfrntFeeUnderBasic}
    Verify Page Conatin Text  ${e_withdrwlFeeUnderBasic}
    Verify Page Conatin Text  ${e_withdrwlFeeTxtUnderBasic}
    Verify Element Visibility  ${vf_A_accessAddntlVestsUnderBasic}
    Log to Console  Verified values under Basic Plan!

Verify Values Under Premium Plan For Basic Account
    Verify Page Conatin Text  ${e_premiumHeading}
    Verify Page Conatin Text  ${e_subsChrgsYearlyUnderPremium}
    Verify Element Visibility  ${vf_A_zeroComInvstUnderPremium}
    Verify Element Visibility  ${vf_A_vestUpfrntFeeUnderPremium}
    Verify Page Conatin Text  ${e_withdrwlFeeUnderPremium}
    Verify Page Conatin Text  ${e_withdrwlFeeTxtUnderPremium}
    Verify Element Visibility  ${vf_A_accessAddntlVestsUnderPremium}
    Log to Console  Verified values under Premium Plan!

# SB01
Verify Basic Account Contents Under Payment Plan Screen 
    Wait For Page Conatin Element  ${e_payText}  5s
    Verify Page Conatin Text  ${e_payText}
    # NOTE: Toggle button is not displayed
    # Verify Page Conatin Text  ${e_save500Txt}
    # Verify Page Conatin Text  ${e_payQuarterlyTxt}
    # Verify Page Conatin Text  ${e_payYearlyTxt}
    # Swipe By Percent  70  70  50  50  5000
    Verify Page Conatin Text  ${e_subsChrgs}
    Verify Page Conatin Text  ${e_zeroComInvst}
    Verify Page Conatin Text  ${e_comsnDisclr}
    Verify Page Conatin Text  ${e_vestUpfrntFee}
    Verify Page Conatin Text  ${e_accessAddntlVests}
    Log to Console  Verified all fields under Payment Plan Screen!
    Verify Values Under Basic Plan For Basic Account
    Verify Values Under Premium Plan For Basic Account

# SB02, SB03
Verify Current Plan And Select Button 
    Verify Element Visibility  ${vf_A_currentPlanBtn}
    Log to Console  Verified Current Plan Button Under Basic
     Verify Element Visibility  ${vf_A_basicSelectBtn}
    Log to Console  Verified Select Button Under Premium

Enter UPI ID
    Wait And Click Element On Android  ${vf_A_enterUPI}
    Sleep  2s
    Clear Text  ${vf_A_enterUPI}
    Sleep  3s
    Input Text  ${vf_A_enterUPI}  ${e_upiIdForPremiumSubs}
    Log To Console  UPI ID entered - ${e_upiIdForPremiumSubs}

# UPI
Make Payment Using UPI
    Swipe By Percent  70  70  40  40  5000    
    Click Text  ${e_selectBtn}
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_phnTxtFld}
    Sleep  3s
    Close Android Keyboard
    Wait For Page Conatin Element  ${e_feeTxt}  10s
    Verify Page Conatin Text   ${e_feeTxt}
    Verify Page Conatin Text   ${e_399Txt}
    Log To Console  Verified Account opening Fee!
    Enter Phone Number And Email For Payment
    Select An UPI Payment Option And Verify  ${e_recurringPaymentTxt}
    Wait And Click Element On Android  ${vf_A_pay399Btn}
    Log to Console  Clicked on Pay Button
    Verify UPI- ICICI Bank Payment Screen  ${e_recurringPaymentTxt}
    Enter UPI ID
    Go Back On Android
    Wait And Click Element On Android  ${vf_A_pay399Btn}
    Log to Console  Clicked on Pay Button
    Sleep  5s
    Wait And Click Element On Android  ${vf_A_successBtn}

# SB04- UPI
Verify Sections And Navigations Under KYC Plan Payment Screen- UPI
    Sleep  2s
    Verify Plan Payment Screen
    Verify Navigations Under KYC Plan Payment Screen
    Make Payment Using UPI

# SB04- NetBanking
User Subscribes Using NetBanking
    Verify Page Conatin Text   ${vf_A_netBankingPaymentOpt}
    Click Text  ${vf_A_netBankingPaymentOpt}
    Verify Page Conatin Text   ${e_SBI}
    Verify Page Conatin Text   ${e_HDFC}
    Verify Page Conatin Text   ${e_ICICI}
    Verify Page Conatin Text   ${e_Axis}
    Verify Page Conatin Text   ${e_Kotak}
    Verify Page Conatin Text   ${e_Yes}
    Click Text  ${e_SBI}
    Click Element  ${vf_A_pay399Btn}
    Wait And Click Element On Android  ${vf_A_successBtn}
  
# SB04- Wallet
User Subscribes Using Wallet
    Verify Page Conatin Text   ${vf_A_walletPaymentOpt}
    Click Text  ${vf_A_walletPaymentOpt}
    Verify Page Conatin Text   ${e_mobikwik}
    Verify Page Conatin Text   ${e_freecharge}
    Verify Page Conatin Text   ${e_airtelMoney}
    Verify Page Conatin Text   ${e_jioMoney}
    Verify Page Conatin Text   ${e_payzapp}
    Click Text  ${e_airtelMoney}
    Click Element  ${vf_A_pay399Btn}
    Wait And Click Element On Android  ${vf_A_successBtn}

Scroll Down Till Multi-Asset Class Vests
    Sleep  3s
    FOR  ${i}  IN RANGE  1  6
        ${isElementVisible} =  Run Keyword And Return Status  Verify Page Conatin Text   ${e_aggMultiAssetVestsTxt}
        IF   ${isElementVisible}
            Wait For Page Conatin Element  ${e_aggMultiAssetVestsTxt}  2s
            Exit For Loop If    ${isElementVisible}
        ELSE
            Swipe By Percent  70  70  20  20  5000     
        END
    END

# SB05
Verify Vest Upsell- Buy Vest From Basic Account
    Scroll Down Till Multi-Asset Class Vests    
    Verify Page Conatin Text   ${e_multiAssetVestsTxt}
    # Aggressive
    Verify Page Conatin Text   ${e_aggMultiAssetVests}
    Click Text  ${e_aggMultiAssetVests}
    Wait For Page Conatin Element  ${e_aggMultiAssetVests}  5s
    Verify Page Conatin Text   ${e_aggMultiAssetClass}
    Log to Console  Navigated to Multi-Asset Class - Aggressive
    Click Text  ${e_buy}
    Wait For Page Conatin Element  ${e_upgradePopUpTxt1}  5s
    Verify Page Conatin Text   ${e_upgradePopUpTxt1}
    Verify Page Conatin Text   ${e_upgradePopUpTxt2}
    Click Element  ${vf_A_upgradeBtn}
    Sleep  2s
    Verify Plan Payment Screen
    Click On Back Arrow
    Sleep  2s
    Click On Back Arrow
    Wait For Page Conatin Element  ${e_multiAssetVestsTxt}  3s
    Swipe By Percent   60  80   20   80  5000 
    # Moderate
    Verify Page Conatin Text   ${e_modMultiAssetVests}
    Verify Page Conatin Text   ${e_modMultiAssetVestsTxt}
    Click Text  ${e_modMultiAssetVests}
    Wait For Page Conatin Element  ${e_modMultiAssetClass}  5s
    Verify Page Conatin Text   ${e_modMultiAssetClass}
    Log to Console  Navigated to Multi-Asset Class - Moderate
    Click Text  ${e_buy}
    Verify Page Conatin Text   ${e_upgradePopUpTxt1}
    Verify Page Conatin Text   ${e_upgradePopUpTxt2}
    Click Element  ${vf_A_upgradeBtn}
    Sleep  2s
    Verify Plan Payment Screen
    Click On Back Arrow
    Sleep  2s
    Click On Back Arrow
    Wait For Page Conatin Element  ${e_multiAssetVestsTxt}  3s
    Swipe By Percent   60  80   20   80  5000 
    Swipe By Percent   60  80   20   80  5000 
    # Conservative
    Verify Page Conatin Text   ${e_conMultiAssetVests}
    Verify Page Conatin Text   ${e_conMultiAssetVestsTxt}
    Click Text  ${e_conMultiAssetVests}
    Wait For Page Conatin Element  ${e_conMultiAssetClass}  5s
    Verify Page Conatin Text   ${e_conMultiAssetClass}
    Log to Console  Navigated to Multi-Asset Class - Conservative
    Click Text  ${e_buy}
    Verify Page Conatin Text   ${e_upgradePopUpTxt1}
    Verify Page Conatin Text   ${e_upgradePopUpTxt2}
    Click Element  ${vf_A_upgradeBtn}
    Sleep  2s
    Verify Plan Payment Screen


# Premium Subscription

Click On Manage Plan Under Profile
    Wait For Page Conatin Element  ${e_mngPln}  5s
    Click Text  ${e_mngPln}
    Log to Console  Clicked on Manage Plan

Verify Plan Details Section
    [Arguments]  ${planType}
    Sleep  3s
    Verify Page Conatin Text  ${e_planManagement}
    Verify Page Conatin Text  ${e_planDetails}
    Verify Page Conatin Text  ${planType}
    Verify Page Conatin Text  ${e_planDetailsTxt2}
    Log to Console  Verified Plan Details section!

Verify Values Under Basic Plan For Premium Account
    Verify Page Conatin Text  ${e_basicHeading}
    Verify Page Conatin Text  ${e_subsChrgsUnderBasic}
    Verify Page Conatin Text  ${e_accOpnFeeUnderBasic}
    Verify Page Conatin Text  ${e_accOpnFeeUnderBasicTxt}
    Verify Element Visibility  ${vf_A_zeroComInvstUnderBasic}
    Verify Page Conatin Text  ${e_vestUpfrntFeeUnderBasic}
    Verify Element Visibility  ${vf_A_vestUpfrntFeeUnderBasic}
    Verify Page Conatin Text  ${e_withdrwlFeeUnderBasic}
    Verify Page Conatin Text  ${e_withdrwlFeeTxtUnderBasic}
    Verify Element Visibility  ${vf_A_accessAddntlVestsUnderBasic}
    Log to Console  Verified values under Basic Plan!

Verify Values Under Premium Plan For Premium Account
    [Arguments]  ${subsCharges}
    Verify Page Conatin Text  ${e_premiumHeading}
    Verify Page Conatin Text  ${subsCharges}
    Verify Page Conatin Text  ${e_accOpnFeeUnderPremium}
    Verify Element Visibility  ${vf_A_zeroComInvstUnderPremium}
    Verify Page Conatin Text  ${e_accOpnFeeUnderPremium}
    Verify Element Visibility  ${vf_A_vestUpfrntFeeUnderPremium}
    Verify Page Conatin Text  ${e_withdrwlFeeUnderPremium}
    Verify Page Conatin Text  ${e_withdrwlFeeTxtUnderPremium}
    Verify Element Visibility  ${vf_A_accessAddntlVestsUnderPremium}
    Log to Console  Verified values under Premium Plan!

Verify Fields Under Premium Plan Downgrade Screen
    Wait For Page Conatin Element  ${e_premPlanScreenHeading}  5s
    Verify Page Conatin Text  ${e_premPlanScreenHeading}
    Swipe By Percent  70  70  50  50  5000
    Verify Page Conatin Text  ${e_subsChrgs}
    Verify Page Conatin Text  ${e_accOpnFee}
    Verify Page Conatin Text  ${e_zeroComInvst}
    Verify Page Conatin Text  ${e_comsnDisclr}
    Verify Page Conatin Text  ${e_vestUpfrntFee}
    Verify Page Conatin Text  ${e_accessAddntlVests}
    Log to Console  Verified all fields under Payment Plan Screen!

# SB_06
Navigate To Payment Plan Screen And Verify Premium Account For Yearly
    Click On Manage Plan Under Profile
    Verify Plan Details Section  ${e_planDetailsYrlyTxt1}
    Log to Console  Verified Plan Details for Yearly Plan!
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_downgradePlanBtn}
    Log to Console  Clicked on Downgrade Plan button
    Sleep  3s
    Verify Fields Under Premium Plan Downgrade Screen
    Verify Values Under Basic Plan For Premium Account
    Verify Values Under Premium Plan For Premium Account  ${e_subsChrgsYearlyUnderPremium}

Navigate To Payment Plan Screen And Verify Premium Account For Quarterly
    Sleep  3s
    Click On Manage Plan Under Profile
    Verify Plan Details Section  ${e_planDetailsQtrlyTxt1}
    Wait And Click Element On Android  ${vf_A_downgradePlanBtn}
    Log to Console  Clicked on Downgrade Plan button
    Sleep  3s
    Verify Fields Under Premium Plan Downgrade Screen
    Verify Values Under Basic Plan For Premium Account
    Verify Values Under Premium Plan For Premium Account  ${e_subsChrgsQtrlyUnderPremium}

# SB_07, SB_08
Verify Downgrade And Current Plan Button
    Swipe By Percent  70  70  50  50  5000
    Verify Element Visibility  ${vf_A_downgradeBtn}
    Element Should Be Enabled  ${vf_A_downgradeBtn}
    Log to Console  Downgrade button under Basic plan is Enabled
    Log to Console  Verified Select button is not displayed under Basic plan
    Verify Element Visibility  ${vf_A_currentPlanBtn}
    Log to Console  Current Plan button is displayed under Premium plan

# SB_08
Downgrade Premium Plan To Basic
    Verify Downgrade And Current Plan Button
    Wait And Click Element On Android  ${vf_A_downgradeBtn}
    Log to Console  Clicked on Downgrade button
    Wait For Page Conatin Element  ${e_planDowngrade}  10s
    Verify Page Conatin Text  ${e_planDowngrade}
    Verify Page Conatin Text  ${e_planDowngradeDesc}
    Verify Page Conatin Text  ${e_planDowngradeTxt1}
    Verify Page Conatin Text  ${e_planDowngradeP1}
    Verify Element Visibility  ${vf_A_planDowngradeChkBox1}
    Verify Page Conatin Text  ${e_planDowngradeP2}
    Verify Element Visibility  ${vf_A_planDowngradeChkBox2}
    Verify Page Conatin Text  ${e_planDowngradeP3}
    Verify Element Visibility  ${vf_A_planDowngradeChkBox3}
    Verify Page Conatin Text  ${e_planDowngradeP4}
    Verify Element Visibility  ${vf_A_planDowngradeChkBox4}
    Wait And Click Element On Android  ${vf_A_planDowngradeChkBox4}
    Verify Page Conatin Text  ${e_planDowngradeTxt2}
    Verify Element Visibility  ${vf_A_feedbackTxtBox}
    Swipe By Percent  70  70  50  50  5000
    Swipe By Percent  70  70  50  50  5000
    Verify Element Visibility  ${vf_A_confirmDowngradeBtn}
    Verify Element Visibility  ${vf_A_goBackBtn}
    Log to Console  Verified Plan Downgrade Screen!
    Wait And Click Element On Android  ${vf_A_confirmDowngradeBtn}
    Log to Console  Clicked on Confirm Downgrade button
    Wait For Page Conatin Element  ${e_planDowngradeSuccessTxt1}  5s
    Verify Page Conatin Text  ${e_planDowngradeSuccessTxt1}
    Verify Page Conatin Text  ${e_planDowngradeSuccessTxt1}
    Verify Element Visibility  ${vf_A_backtoDashboardBtn}
    Log to Console  Verified Premium Plan Downgrade Success Screen!
    Wait And Click Element On Android  ${vf_A_backtoDashboardBtn}
    Log to Console  Clicked on Back to Dashboard button
    Verify Dashboard Screen

Verify Card & UPI Payment Options
    Wait For Page Conatin Element  ${e_paymentOptForPremium}  5s
    Verify Page Conatin Text  ${e_paymentOptForPremium}
    Verify Page Contains Element On Android  ${vf_A_cardPaymentOptForPremium}
    Verify Page Contains Element On Android  ${vf_A_upiPaymentOptForPremium}
    Log to Console  Verified Card & UPI Payment options!

Verify Premium Subscribed Success Screen
    Wait For Page Conatin Element  ${e_premiumSuccessTxt1}  15s
    Verify Page Conatin Text  ${e_premiumSuccessTxt1}
    Verify Page Conatin Text  ${e_premiumSuccessTxt2}
    Log to Console  Verified Premium Subscribed Success Screen!
    Wait And Click Element On Android  ${vf_A_backtoDashboardBtn}
    Log to Console  Clicked on Back to Dashboard button
    Verify Dashboard Screen

# SB_09
Subscribe Premium Plan With Card
    Wait And Click Element On Android  ${vf_A_basicSelectBtn}
    Log to Console  Clicked on Select button under Premium
    Click On Element If Visibile  ${vf_A_continuePayment}
    Sleep  5s
    Wait For Page Conatin Element  ${e_premiumPlanAmt}  10s
    Verify Page Conatin Text   ${e_premiumPlanAmt}
    Verify Page Conatin Text   ${e_authSubscriptionTxt}
    Log to Console  Verified Subscription Amount!
    Enter Phone Number And Email For Payment
    Verify Card & UPI Payment Options
    Wait And Click Element On Android  ${vf_A_cardPaymentOptForPremium}
    Click On Element If Visibile  ${vf_A_skipSavedCardLink}
    Enter Card Details Into Fields  ${e_cardNumForPremiumSubs}
    Verify Page Conatin Text   ${e_paymentUSDopt}
    Verify Page Conatin Text   ${e_paymentINRopt}
    Click Text  ${e_paymentINRopt}
    Sleep  3s
    Verify Page Conatin Text   ${e_paymentMoreLink}
    Verify Page Conatin Text   ${e_cardAutoLinkTxt}
    Wait And Click Element On Android  ${vf_A_pay2500Btn}
    Log to Console  Clicked on Pay Button
    Sleep  5s
    Go Back On Android
    Click On Element If Visibile  ${vf_A_skipSavingCardLink}
    Wait And Click Element On Android  ${vf_A_successBtn}
    Log to Console  Successfully Completed the Payment Using Card!
    Verify Premium Subscribed Success Screen

Verify UPI- ICICI Bank Payment Screen
    [Arguments]  ${recurringTxt}
    Verify Page Conatin Text   ${e_upiICICItxt}
    Verify Page Conatin Text   ${e_upiPayTxt}
    Verify Page Conatin Text   ${e_upiIdTxt}
    Verify Page Conatin Text   ${e_upiNoteTxt}
    Verify Page Conatin Text   ${recurringTxt}
    Log to Console  Verified UPI- ICICI Bank Payment Screen!

Select An UPI Payment Option And Verify
    [Arguments]  ${recurringTxt}
    Wait And Click Element On Android  ${vf_A_upiPaymentOptForPremium}
    Click On Element If Visibile  ${vf_A_skipSavedCardLink}
    Wait For Page Conatin Element  ${e_paymentUPIdesc}  8s
    Verify Page Conatin Text   ${e_paymentUPIdesc}
    Verify Page Conatin Text   ${e_paymentUPItxt1}
    Verify Element Visibility  ${vf_A_upiPaymentICICI}
    Verify Element Visibility  ${vf_A_upiPaymentHDFC}
    Verify Element Visibility  ${vf_A_upiPaymentSBI}
    Log to Console  Verified UPI options!
    Verify Page Conatin Text   ${recurringTxt}
    Wait And Click Element On Android  ${vf_A_upiPaymentICICI}
    Log to Console  Clicked on ICICI Bank option

# SB_09- UPI
Subscribe Premium Plan With UPI
    Swipe By Percent  70  70  50  50  5000
    Wait And Click Element On Android  ${vf_A_basicSelectBtn}
    Log to Console  Clicked on Select button under Premium
    Click On Element If Visibile  ${vf_A_continuePayment}
    Sleep  5s
    Wait For Page Conatin Element  ${e_premiumPlanAmt}  10s
    Verify Page Conatin Text   ${e_premiumPlanAmt}
    Verify Page Conatin Text   ${e_authSubscriptionTxt}
    Log to Console  Verified Subscription Amount!
    Enter Phone Number And Email For Payment
    Verify Card & UPI Payment Options
    Select An UPI Payment Option And Verify  ${e_recurringPaymentTxt}
    Wait And Click Element On Android  ${vf_A_pay2500Btn}
    Log to Console  Clicked on Pay Button
    Verify UPI- ICICI Bank Payment Screen  ${e_recurringPaymentTxt}
    Enter UPI ID
    Go Back On Android
    Wait And Click Element On Android  ${vf_A_pay2500Btn}
    Log to Console  Clicked on Pay Button
    Sleep  5s
    Verify Premium Subscribed Success Screen

Click On Buy Button And Verify Buying Power Screen
    Wait And Click Element On Android  ${vf_A_buyBtn}
    Log to Console  Clicked on Buy Button
    Wait For Page Conatin Element  ${e_buyingPower}  5s
    Verify Page Conatin Text   ${e_buyingPower}
    Verify Page Conatin Text   ${e_previewOrdeBtn}
    Log to Console  Verified Buying Power Screen!

# SB_10
Verify Vest Upsell- Buy Vest From Premium Account
    Scroll Down Till Multi-Asset Class Vests
    Wait For Page Conatin Element  ${e_multiAssetVestsTxt}  2s
    Verify Page Conatin Text   ${e_multiAssetVestsTxt}
    # Aggressive
    Verify Page Conatin Text   ${e_aggMultiAssetVests}
    Click Text  ${e_aggMultiAssetVests}
    Wait For Page Conatin Element  ${e_aggMultiAssetClass}  5s
    Verify Page Conatin Text   ${e_aggMultiAssetClass}
    Log to Console  Navigated to Multi-Asset Class - Aggressive
    Click On Buy Button And Verify Buying Power Screen
    Click On Back Arrow
    Sleep  2s
    Click On Back Arrow
    Wait For Page Conatin Element  ${e_multiAssetVestsTxt}  3s
    Swipe By Percent   70  80   10   80  5000 
    # Moderate
    Verify Page Conatin Text   ${e_modMultiAssetVests}
    Verify Page Conatin Text   ${e_modMultiAssetVestsTxt}
    Click Text  ${e_modMultiAssetVests}
    Wait For Page Conatin Element  ${e_modMultiAssetClass}  5s
    Verify Page Conatin Text   ${e_modMultiAssetClass}
    Log to Console  Navigated to Multi-Asset Class - Moderate
    Click On Buy Button And Verify Buying Power Screen
    Click On Back Arrow
    Sleep  2s
    Click On Back Arrow
    Wait For Page Conatin Element  ${e_multiAssetVestsTxt}  3s
    Swipe By Percent   70  80   10   80  5000 
    Swipe By Percent   70  80   10   80  5000 
    # Conservative
    Verify Page Conatin Text   ${e_conMultiAssetVests}
    Verify Page Conatin Text   ${e_conMultiAssetVestsTxt}
    Click Text  ${e_conMultiAssetVests}
    Wait For Page Conatin Element  ${e_conMultiAssetClass}  5s
    Verify Page Conatin Text   ${e_conMultiAssetClass}
    Log to Console  Navigated to Multi-Asset Class - Conservative
    Click On Buy Button And Verify Buying Power Screen
    Click On Back Arrow
    Sleep  2s
    Click On Back Arrow
    Log to Console  Premium user is able to Buy Multi Vests!

# SP12
Click On Billing Details- Yearly And Verify
    Verify Page Conatin Text  ${e_billingDetails}
    Verify Page Conatin Text  ${e_billingOptions}
    Verify Page Conatin Text  ${e_billingYrlyTxt}
    Verify Element Visibility  ${vf_switchToQtrlyBtn}
    Log to Console  Verified Billing Details- Yearly section!
    Wait And Click Element On Android  ${vf_switchToQtrlyBtn}
    Log to Console  Clicked on Switch to Qurterly Plan button
    Wait For Page Conatin Element  ${e_billingFrqncyTxt}  5s
    Verify Page Conatin Text  ${e_billingFrqncyTxt}
    Verify Page Conatin Text  ${e_billingFrqncyDesc1}
    Verify Page Conatin Text  ${e_billingFrqncyDesc2}
    Verify Page Conatin Text  ${e_switchToQtrly}
    Verify Element Visibility  ${vf_A_goBackBtn}
    Log to Console  Verified Billing Frequency screen!

Navigate To Billing Frequency And Switch Plan
    Click On Manage Plan Under Profile
    Verify Page Conatin Text  ${e_planManagement}
    Click On Billing Details- Yearly And Verify    
    Click Text  ${e_switchToQtrly}
    
