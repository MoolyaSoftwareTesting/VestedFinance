*** Settings ***

Library     AppiumLibrary

***Keywords***

Signin With Premium Account
    Enter Email  ${e_validEmailPremium}
    Enter Password  ${e_validPasswordPremium}
    Click On Signin Button
    Verify Dashboard Screen

Signin With KYC Approved Premium Account
    Enter Email  ${e_validEmailKycApprovePremium}
    Enter Password  ${e_validPwdKycApprovePremium}
    Click On Signin Button
    Sleep  3s
    Enter Pin  ${e_validPinKycApprovePremium}
    Click On Continue Button
    Verify Dashboard Screen

# Normal Subscription


# Premium Subscription

Verify Values Under Basic Plan
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

Verify Values Under Premium Plan
    Verify Page Conatin Text  ${e_premiumHeading}
    Verify Page Conatin Text  ${e_subsChrgsUnderPremium}
    Verify Page Conatin Text  ${e_accOpnFeeUnderPremium}
    Verify Element Visibility  ${vf_A_zeroComInvstUnderPremium}
    Verify Page Conatin Text  ${e_accOpnFeeUnderPremium}
    Verify Element Visibility  ${vf_A_vestUpfrntFeeUnderPremium}
    Verify Page Conatin Text  ${e_withdrwlFeeUnderPremium}
    Verify Page Conatin Text  ${e_withdrwlFeeTxtUnderPremium}
    Verify Element Visibility  ${vf_A_accessAddntlVestsUnderPremium}
    Log to Console  Verified values under Premium Plan!

# SB_06
Navigate To Payment Plan Screen And Verify Contents
    Swipe By Percent  70  70  40  40  5000
    Wait And Click Element On Android  ${vf_A_goPremium}
    Wait For Page Conatin Element  ${e_payText}  2s
    Verify Page Conatin Text  ${e_payText}
    Verify Page Conatin Text  ${e_save500Txt}
    Verify Page Conatin Text  ${e_payQuarterlyTxt}
    Verify Page Conatin Text  ${e_payYearlyTxt}
    Swipe By Percent  70  70  50  50  5000
    Verify Page Conatin Text  ${e_subsChrgs}
    Verify Page Conatin Text  ${e_accOpnFee}
    Verify Page Conatin Text  ${e_zeroComInvst}
    Verify Page Conatin Text  ${e_comsnDisclr}
    Verify Page Conatin Text  ${e_vestUpfrntFee}
    Verify Page Conatin Text  ${e_accessAddntlVests}
    Log to Console  Verified all fields under Payment Plan Screen!
    Verify Values Under Basic Plan
    Verify Values Under Premium Plan

# - Check if Downgrade button under Basic is enabled 
# - Check if Current Plan is displayed under Premium

# SB_07
Verify Downgrade Button Under Basic Plan
    Verify Element Visibility  ${vf_A_downgradeBtn}
    Verify Element Visibility  ${vf_A_currentPlanBtn}
    Element Should Be Enabled  ${vf_A_downgradeBtn}
    Log to Console  Downgrade button under Basic plan is Enabled

# SB_08
Verify Select Button Under Basic Plan
    Swipe By Percent  70  70  50  50  5000
    Verify Element Visibility  ${vf_A_currentPlanBtn}
    Verify Element Visibility  ${vf_A_slctBtn}
    Element Should Be Enabled  ${vf_A_currentPlanBtn}
    Log to Console  Select button under Basic plan is disabled

# SB_08
Downgrade Premium Plan To Basic
    Wait For Page Conatin Element  ${e_mngPln}  5s
    Click Text  ${e_mngPln}
    Verify Page Conatin Text  ${e_planManagement}
    Verify Page Conatin Text  ${e_planDetails}
    Wait And Click Element On Android  ${vf_A_downgradePlanBtn}
    Log to Console  Clicked on Downgrade Plan button
    Sleep  3s
    Swipe By Percent  70  70  20  20  5000
    Verify Downgrade Button Under Basic Plan
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
    Wait And Click Element On Android  ${vf_A_slctBtn}
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
    Verify Page Conatin Text   ${e_paymentMoreLink}
    Verify Page Conatin Text   ${e_cardAutoLinkTxt}
    Wait And Click Element On Android  ${vf_A_pay2500Btn}
    Log to Console  Clicked on Pay Button
    Sleep  5s
    Click On Element If Visibile  ${vf_A_skipSavingCardLink}
    Wait And Click Element On Android  ${vf_A_successBtn}
    Log to Console  Successfully Completed the Payment Using Card!
    Verify Premium Subscribed Success Screen

Verify UPI- ICICI Bank Payment Screen
    Verify Page Conatin Text   ${e_upiICICItxt}
    Verify Page Conatin Text   ${e_upiPayTxt}
    Verify Page Conatin Text   ${e_upiIdTxt}
    Verify Page Conatin Text   ${e_upiNoteTxt}
    Log to Console  Verified UPI- ICICI Bank Payment Screen!

# SB_09
Subscribe Premium Plan With UPI
    Swipe By Percent  70  70  50  50  5000
    Wait And Click Element On Android  ${vf_A_slctBtn}
    Log to Console  Clicked on Select button under Premium
    Click On Element If Visibile  ${vf_A_continuePayment}
    Sleep  5s
    Wait For Page Conatin Element  ${e_premiumPlanAmt}  10s
    Verify Page Conatin Text   ${e_premiumPlanAmt}
    Verify Page Conatin Text   ${e_authSubscriptionTxt}
    Log to Console  Verified Subscription Amount!
    Enter Phone Number And Email For Payment
    Verify Card & UPI Payment Options
    Wait And Click Element On Android  ${vf_A_upiPaymentOptForPremium}
    Click On Element If Visibile  ${vf_A_skipSavedCardLink}
    Wait For Page Conatin Element  ${e_paymentUPIdesc}  5s
    Verify Page Conatin Text   ${e_paymentUPIdesc}
    Verify Page Conatin Text   ${e_paymentUPItxt1}
    Verify Element Visibility  ${vf_A_upiPaymentICICI}
    Verify Element Visibility  ${vf_A_upiPaymentHDFC}
    Verify Element Visibility  ${vf_A_upiPaymentSBI}
    Log to Console  Verified UPI options!
    Verify Page Conatin Text   ${e_paymentUPItxt2}
    Wait And Click Element On Android  ${vf_A_upiPaymentICICI}
    Log to Console  Clicked on ICICI Bank option
    Wait And Click Element On Android  ${vf_A_pay2500Btn}
    Log to Console  Clicked on Pay Button
    Verify UPI- ICICI Bank Payment Screen
    Wait And Click Element On Android  ${vf_A_enterUPI}
    Sleep  2s
    Clear Text  ${vf_A_enterUPI}
    Sleep  3s
    Input Text  ${vf_A_enterUPI}  ${e_upiIdForPremiumSubs}
    Log To Console  UPI ID entered - ${e_upiIdForPremiumSubs}
    Close Android Keyboard
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
Navigate To Vest Upsell And Buy Vest
    Sleep  3s
    Swipe By Percent  70  70  20  20  5000
    Swipe By Percent  70  70  20  20  5000
    Swipe By Percent  70  70  20  20  5000
    Swipe By Percent  70  70  20  20  5000
    Wait For Page Conatin Element  ${e_multiAssetVestsTxt}  2s
    Verify Page Conatin Text   ${e_multiAssetVestsTxt}
    Verify Page Conatin Text   ${e_aggMultiAssetVests}
    Verify Page Conatin Text   ${e_aggMultiAssetVestsTxt}
    Click Text  ${e_aggMultiAssetVests}
    Wait For Page Conatin Element  ${e_aggMultiAssetVests}  5s
    Verify Page Conatin Text   ${e_aggMultiAssetClass}
    Log to Console  Navigated to Multi-Asset Class - Aggressive
    Click On Buy Button And Verify Buying Power Screen
    Click On Back Arrow
    Sleep  2s
    Click On Back Arrow
    Wait For Page Conatin Element  ${e_multiAssetVestsTxt}  3s
    Swipe By Percent   80  50   10   50  5000 
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
    Swipe By Percent   80  50   10   50  5000 
    Swipe By Percent   80  50   10   50  5000 
    Wait For Page Conatin Element  ${e_multiAssetVestsTxt}  3s
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




