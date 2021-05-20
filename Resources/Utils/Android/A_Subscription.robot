*** Settings ***

Library     AppiumLibrary


*** Keywords ***
# Updated from here
User Checks Plan Details
    # Click On Profile Button
    # Wait And Click Element On Android  ${vf_A_goPremium}
    # Sleep  2s
    Verify Page Conatin Text   ${e_basic}
    Log to Console  Basic Verified
    Verify Page Conatin Text   ${e_subChrgs}
    Log to Console  Subscription charges Verified
    Verify Page Conatin Text   ${e_accOpngFee}
    Log to Console  Account opening fee Verified
    Verify Page Conatin Text   ${e_zeroComInv}
    Log to Console  Zero commission investment Verified
    Verify Page Conatin Text   ${e_vestUpfrontfee}
    Log to Console  Vest upfront fee Verified
    Verify Page Conatin Text   ${e_wthdrlFee}
    Log to Console  Withdrawal fee Verified
    Verify Page Conatin Text   ${e_free}
    Log to Console  Free Verified
    Verify Page Conatin Text   ${e_included}
    Log to Console  Included Verified
    Verify Page Conatin Text   ${e_399}
    Log to Console  399 Verified
    Verify Page Conatin Text   ${e_2500}
    Log to Console  2500 Verified
    Verify Page Conatin Text   ${e_3Dol}
    Log to Console  $3 Verified
    Verify Page Conatin Text   ${e_0Dol}
    Log to Console  $0Verified
    Verify Page Conatin Text   ${e_11Dol}
    Log to Console  $11 Verified
    Verify Page Conatin Text   ${e_1FreeWthdrl}
    Log to Console  1 free withdrawal per year Verified
    Swipe By Percent  70  70  40  40  5000
    Verify Page Conatin Text   ${e_accessToPrchse}
    Log to Console  Access to purchase additional vests Verified
    Page Should Contain Element  ${vf_A_xMark}
    Log to Console  X Verified
    Page Should Contain Element  ${vf_A_tick}
    Log to Console  Tick Verified

User Checks Current Plan
    Verify Page Conatin Text   ${e_crntPlan}
    Log to Console  Current plan Verified
    Verify Page Conatin Text   ${e_selectBtn}
    Log to Console  Select button Verified


# Updated from here
User Changes Plan To Premium
    # Click On Profile Button
    # Wait And Click Element On Android  ${vf_A_goPremium}
    # Sleep  2s
    Click on Start/Complete KYC Button
    Sleep  3s
    Swipe By Percent  70  70  40  40  5000    
    Click Text  ${e_selectBtn}
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_phnTxtFld}
    Sleep  3s
    Close Android Keyboard
    Input Text  ${vf_A_phnFld}  ${e_dummyPhoneNo}
    Log to Console  Phone Number Entered!
    Sleep  3s
    Close Android Keyboard
    Wait And Click Element On Android  ${vf_A_mailTxtFld}
    Close Android Keyboard
    Input Text  ${vf_A_mailFld}  ${e_validBasicEmail}
    Log to Console  Email Id Entered!
    Close Android Keyboard
    Wait And Click Element On Android  ${vf_A_proceedBtn}

Enter Card Details For Payment
    Verify Page Contains Element On Android  ${vf_A_cardPaymentOpt}
    Verify Page Contains Element On Android  ${vf_A_upiPaymentOpt}
    # Verify Page Contains Element On Android  ${vf_A_netBankingPaymentOpt}
    # Verify Page Contains Element On Android  ${vf_A_walletPaymentOpt}
    Log to Console  Verified all Payment options!
    Wait And Click Element On Android  ${vf_A_cardPaymentOpt}
    Click On Element If Visibile  ${vf_A_skipSavedCardLink}
    Enter Card Details Into Fields  ${e_cardNum}
    # Wait And Click Element On Android  ${vf_A_pay399Btn}
    # Log to Console  Pay Button Clicked!

    # card payment
Enter Card Details Into Fields
    [Arguments]  ${cardNum}
    Sleep  5s
    Go Back On Android
    Input Text  ${vf_A_cardNumTxtFld}  ${cardNum}
    Log to Console  Card Number Entered!
    Wait And Click Element On Android  ${vf_A_expiryTxt}
    Input Text  ${vf_A_expiryTxtFld}  ${e_expiry}
    Log to Console  Expiry Entered!
    Sleep  3s
    Go Back On Android
    Wait And Click Element On Android  ${vf_A_nameTxt}
    Sleep  5s
    Sleep  3s
    Close Android Keyboard
    Input Text  ${vf_A_nameTxtFld}  ${e_hldrName}
    Log to Console  Name Entered!
    Wait And Click Element On Android  ${vf_A_cvvTxt}
    Input Text  ${vf_A_cvvTxtFld}  ${e_cvv}
    Log to Console  CVV Entered!
    Sleep  3s
    Close Android Keyboard
    Wait And Click Element On Android  ${vf_A_rememberCardCheckbox}


    # UPI
Subscribe Basic Plan With UPI
    Verify Page Contains Element On Android  ${vf_A_upiPaymentOpt}
    Wait And Click   ${vf_A_upiPaymentOpt}
    Verify Page Conatin Text   ${e_upiPayTxt}
    Verify Page Conatin Text   ${e_upiPayTxt1}
    Verify Page Conatin Text   ${e_upiPayTxt2}
    Click Text  ${e_upiPayTxt2}
    Input Text  ${e_sampleUPI}
    Click Element  ${vf_A_pay399Btn}
    Wait And Click Element On Android  ${vf_A_successBtn}


    # Netbanking
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

    
    # Wallet
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



# Udated from here
User Clicks On Vest Upsell
    Swipe By Percent  90  90  10  10  3000
    Swipe By Percent  90  90  10  10  3000        
    Verify Page Conatin Text   ${e_aggressive}
    Click Text   ${e_aggressive}
    Sleep  3s
    Wait For Page Conatin Element  ${e_multiAssetClass}  15s
    Verify Page Conatin Text    ${e_multiAssetClass}
    Sleep  5s
    Click Text  ${e_buy}
    Wait For Page Conatin Element  ${e_upgradePopUpTxt1}  5s
    Verify Page Conatin Text   ${e_upgradePopUpTxt1}
    Verify Page Conatin Text   ${e_upgradePopUpTxt2}
    Click Element  ${vf_A_upgradeBtn}
    Sleep  2s
    Verify Plan Payment Screen
    Click On Back Arrow
    Click On Back Arrow
# moderate
    Swipe By Percent   80  70   10   70  5000
    Verify Page Conatin Text   ${e_moderate}
    Click Text   ${e_moderate}
    Sleep  10s
    Verify Page Conatin Text    ${e_multiAssetClass}
    Click Text  ${e_buy}
    Verify Page Conatin Text   ${e_upgradePopUpTxt1}
    Verify Page Conatin Text   ${e_upgradePopUpTxt2}
    Click Element  ${vf_A_upgradeBtn}
    Sleep  2s
    Verify Plan Payment Screen
    Click On Back Arrow
    Click On Back Arrow
# constructive
    Swipe By Percent   80  70   10   70  5000
    Verify Page Conatin Text   ${e_constructive}
    Click Text   ${e_constructive}
    Sleep  10s
    Verify Page Conatin Text    ${e_multiAssetClass}
    Click Text  ${e_buy}
    Verify Page Conatin Text   ${e_upgradePopUpTxt1}
    Verify Page Conatin Text   ${e_upgradePopUpTxt2}
    Click Element  ${vf_A_upgradeBtn}
    Sleep  2s
    Verify Plan Payment Screen
    
# Additional Tests

User Subscribes To Basic Quarterly Plan 
    Verify Plan Payment Screen
    Click Element  ${vf_A_planPymntToggleBtn}
    Verify Page Conatin Text   ${e_750}
    Swipe By Percent  70  70  50  50  5000
    Click Element  ${vf_A_premSelectBtn}
    Wait And Click Element On Android  ${vf_A_phnTxtFld}
    Sleep  3s
    Close Android Keyboard
    Input Text  ${vf_A_phnFld}  ${e_dummyPhoneNo}
    Log to Console  Phone Number Entered!
    Sleep  3s
    Close Android Keyboard
    Wait And Click Element On Android  ${vf_A_mailTxtFld}
    Close Android Keyboard
    Input Text  ${vf_A_mailFld}  ${e_validBasicEmail}
    Log to Console  Email Id Entered!
    Close Android Keyboard
    Wait And Click Element On Android  ${vf_A_proceedBtn}
    Enter Card Details For Payment
    Wait And Click Element On Android  element  ${vf_A_pay750Btn}
    Wait And Click Element On Android  ${vf_A_successBtn}

User Clicks Vest Upsell With No Subscription
    # Swipe By Percent  90  90  10  10  3000
    # Swipe By Percent  90  90  10  10  3000        
    Verify Page Conatin Text   ${e_aggressive}
    Click Text   ${e_aggressive}
    Sleep  3s
    Wait For Page Conatin Element  ${e_multiAssetClass}  15s
    Verify Page Conatin Text    ${e_multiAssetClass}
    Sleep  5s
    Click Text  ${e_buy}
    Wait For Page Conatin Element  ${e_KYCPopUpTxt1}  5s
    Verify Page Conatin Text   ${e_KYCPopUpTxt1}
    Verify Page Conatin Text   ${e_KYCPopUpTxt2}
    Wait And Click Element On Android  ${vf_A_notNowBtn}
    Click On Back Arrow And Verify Dashboard Screen

User Checks Super Vest With Basic Subscription
    Sleep  5s
    Swipe By Percent  90  90  10  10  3000
    Swipe By Percent  90  90  10  10  3000        
    Swipe By Percent  90  90  10  10  3000        
    Verify Page Conatin Text   ${e_saas}
    Log to Console  SAAS verified!
    Click Text   ${e_saas}
    Log to Console  SAAS clicked!
    Sleep  3s
    Wait For Page Conatin Element  ${e_saas}  15s
    Verify Page Conatin Text    ${e_saas}
    Log to Console  SAAS verified!
    Sleep  5s
    Click Text  ${e_buy}
    Log to Console  Buy button Clicked!
    Wait For Page Conatin Element  ${e_investAmt}  10s
    Verify Page Conatin Text   ${e_investAmt0}
    Click Text   ${e_investAmt0}
    Input Text  ${vf_A_investAmtTxt}  ${e_investAmtTxt}
    Log to Console  Amount entered!
    Click Text  ${e_previewOrder}
    Log to Console  Preview Order Clicked!
    Sleep  2s
    Verify Page Conatin Text   ${e_marketBuyOrder}
    Log to Console  Text verified!
    Click Text  ${e_goPrm&Buy}
    Log to Console  Go premium and save $3 clicked!
    Sleep  2s
    Verify Plan Payment Screen
    Go Back On Android
    Go Back On Android
    Go Back On Android
    Go Back On Android
    Verify Dashboard Screen


User Checks Withdrawal With Basic Subscription
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_transfer}
    Wait Until Page Contains  ${e_withdrawFunds}  5s
    Click Text  ${e_withdrawFunds}
    Log to Console  Withdraw funds clicked!
    Verify Page Conatin Text   ${e_wtdrwPrcsNt}
    Log to Console  Text verified!
    Verify Page Conatin Text   ${e_wtdrwPrcsBtn}
    Log to Console  Button verified!    
    Click Text  ${e_wtdrwPrcsBtn}
    Log to Console  Go premium and save $3 clicked!   
    Sleep  2s
    Verify Plan Payment Screen
    Sleep  2s
    Go Back On Android
    Go Back On Android
    Go Back On Android
    Verify Dashboard Screen

User Checks Vest Upsell With Premium Subscription
    Swipe By Percent  90  90  10  10  3000
    Swipe By Percent  90  90  10  10  3000
    Swipe By Percent  90  90  10  10  3000 
    Verify Page Conatin Text   ${e_aggressive}
    Click Text   ${e_aggressive}
    Sleep  3s
    Wait For Page Conatin Element  ${e_multiAssetClass}  15s
    Verify Page Conatin Text    ${e_multiAssetClass}
    Sleep  5s
    Click Text  ${e_buy}
    Wait For Page Conatin Element  ${e_investAmt}  10s
    Verify Page Conatin Text   ${e_investAmt0}
    Click Text   ${e_investAmt0}
    Input Text  ${vf_A_investAmtTxt}  ${e_investAmtTxt} 
    Click Text  ${e_previewOrder}
    Sleep  2s
    Element Should Be Enabled  ${vf_A_placeOrderBtn}
    Go Back On Android
    Go Back On Android
    Go Back On Android
    Verify Dashboard Screen

User Checks Super Vest With Premium Subscription
    Sleep  2s
    Swipe By Percent  90  90  10  10  3000        
    Verify Page Conatin Text   ${e_saas}
    Click Text   ${e_saas}
    Sleep  3s
    Wait For Page Conatin Element  ${e_saas}  15s
    Verify Page Conatin Text    ${e_saas}
    Sleep  5s
    Click Text  ${e_buy}
    Wait For Page Conatin Element  ${e_investAmt}  10s
    Verify Page Conatin Text   ${e_investAmt0}
    Click Text   ${e_investAmt0}
    Input Text  ${vf_A_investAmtTxt}  ${e_investAmtTxt} 
    Click Text  ${e_previewOrder}
    Sleep  2s
    Element Should Be Enabled  ${vf_A_placeOrderBtn}
    Go Back On Android
    Go Back On Android
    Go Back On Android
    Verify Dashboard Screen

User Checks Withdrawal With Premium Subscription
    Wait And Click Element On Android  ${vf_A_transfer}
    Wait Until Page Contains  ${e_withdrawFunds}  5s
    Click Text  ${e_withdrawFunds}
    Verify Page Conatin Text   ${e_premiumWthdrwNote}
    Click Text  ${e_proceed}
    Verify Page Conatin Text   ${e_proceedError}
    