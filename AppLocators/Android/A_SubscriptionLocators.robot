*** Variables ***
# Variables
${e_basic} =  Basic
${e_subChrgs} =  Subscription charges
${e_accOpngFee} =  Account opening fee
${e_zeroComInv} =  Zero Commission Investing
${e_vestUpfrontfee} =  Vest upfront fee
${e_wthdrlFee} =  Withdrawal fee
${e_accessToPrchse} =  Access to purchase additional Vests
${e_free} =  FREE
${e_included} =  Included
${e_crntPlan} =  Current Plan
${e_selectBtn} =  Select
${e_399} =  ₹399
${e_2500} =  ₹2,500 /year
${e_3Dol} =  $3
${e_0Dol} =  $0
${e_11Dol} =  $11
${e_1FreeWthdrl} =  1 free withdrawal per year
${e_multiAssetClass} =  Multi-Asset Class
${e_aggressive} =  Aggressive
${e_moderate} =  Moderate
${e_constructive} =  Constructive
${e_buy} =  Buy
${e_750} =  ₹750 /quarter
${e_upgradePopUpTxt1} =  Please subscribe to purchase additional vest
${e_upgradePopUpTxt2} =  Please upgrade your current plan to purchase this Vest.
${e_KYCPopUpTxt1} =  KYC Approval Needed
${e_KYCPopUpTxt2} =  Your KYC must be approved before you can place an order.
${e_saas} =  SAAS
${e_moat} =  Moat
${e_investAmt} =  Investment Amount
${e_investAmt0} =  0
${e_investAmtTxt} =  100
${e_previewOrder} =  Preview Order
${e_marketBuyOrder} =  Market Buy Order
${e_goPrm&Buy} =  Go premium and save $3
${e_Transfer} =  Transfer
${e_withdrawFunds} =  WITHDRAW FUNDS
${e_withdrawProcess} =  Withdrawal Process
${e_wtdrwPrcsNt} =  Note: Drivewealth charges a $11 withdrawal fee. Intermediary banks may charge additional fees on top of this amount.
${e_wtdrwPrcsBtn} =  Go premium and save $11
${e_premiumWthdrwNote} =  Note: Drivewealth charges a $11 withdrawal fee. Intermediary banks may charge additional fees on top of this amount.
${e_proceed} =  Proceed
${e_proceedError} =  Withdraw amount is required
# UPI
${e_upiPayTxt} =  PAY USING UPI ID
${e_upiPayTxt1} =  UPI ID
${e_upiPayTxt2} =  Google Pay, BHIM, PhonePe & more
${e_sampleUPI} =  sampleupiid@upi

# NetBanking
${e_SBI} =  SBI
${e_HDFC} =  HDFC
${e_ICICI} =  ICICI
${e_Axis} =  Axis
${e_Kotak} =  Kotak
${e_Yes} =  Yes

# Wallet
${e_mobikwik} =  Mobikwik
${e_freecharge} =  Freecharge
${e_airtelMoney} =  Airtel Money
${e_jioMoney} =  JioMoney
${e_payzapp} =  PayZapp



# Locators
# Plan Payment screen
${vf_A_xMark} =  xpath=//*[@text='']
${vf_A_tick} =  xpath=//*[@text='']
${vf_A_upgradeBtn} =  xpath=//*[@text='UPGRADE']
${vf_A_premSelectBtn} =  xpath=//*[@text=‘Select’ and ./parent::*[(./preceding-sibling::* | ./following-sibling::*)[@text=‘₹0’]]]

# Payment gateway
${vf_A_pay750Btn} =  xpath=//*[@text='PAY ₹ 750']

# Vest Upsell
${vf_A_notNowBtn} =  xpath=//*[@text='NOT NOW']
${vf_A_cmpltKYCBtn} =  xpath=//*[@text='COMPLETE KYC']
${vf_A_investAmtTxt} =  xpath=//*[@class='android.widget.EditText']
${vf_A_transfer} =  xpath=//*[@text='Transfer']
${vf_A_placeOrderBtn} =  xpath=//*[@text='Place Buy Order']