*** Variables ***
# Premium Account credentials
${e_validEmailPremium} =  testingVF111+6@gmail.com
${e_validPasswordPremium} =  Moolya@123

# KYC Approved Premium Account credentials
${e_validEmailKycApprovePremium} =  defney+Tes3@vestedfinance.co
${e_validPwdKycApprovePremium} =  Test@123
${e_validPinKycApprovePremium} =  111111

#Payment Credentials
${e_cardNumForPremiumSubs} =  5104 0155 5555 5558
${e_upiIdForPremiumSubs} =  success@razorpay

# Normal Subscription


# Premium Subscription
${e_save500Txt} =  Save ₹500
${e_payQuarterlyTxt} =  Pay yearly
${e_payYearlyTxt} =  Pay quarterly
${e_subsChrgs} =  Subscription charges
${e_accOpnFee} =  Account opening fee
${e_zeroComInvst} =  Zero Commission Investing
${e_comsnDisclr} =  Commission Disclosure
${e_vestUpfrntFee} =  Vest upfront fee
${e_withdrwlFee} =  Withdrawal fee
${e_accessAddntlVests} =  Access to purchase additional Vests
${e_basicHeading} =  Basic
${e_subsChrgsUnderBasic} =  FREE
${e_accOpnFeeUnderBasic} =  ₹399
${e_accOpnFeeUnderBasicTxt} =  (one-time)
${e_vestUpfrntFeeUnderBasic} =  $3
${e_withdrwlFeeUnderBasic} =  $11
${e_withdrwlFeeTxtUnderBasic} =  / withdrawal
${e_premiumHeading} =  Premium
${e_subsChrgsUnderPremium} =  ₹2,500 /year
${e_accOpnFeeUnderPremium} =  ₹0
${e_vestUpfrntFeeUnderPremium} =  $0
${e_withdrwlFeeUnderPremium} =  1 free withdrawal per year
${e_withdrwlFeeTxtUnderPremium} =  $11 / withdrawal thereafter
${e_planDowngrade} =  Plan Downgrade
${e_planDowngradeDesc} =  Plan downgrade will be effective at the end of your current billing period on May 5, 2022. There are no partial term refunds.
${e_planDowngradeTxt1} =  Why are you stopping the auto-renewal on your subscription?
${e_planDowngradeP1} =  It was not effective; I didn’t see the results I wanted
${e_planDowngradeP2} =  Support / customer service was unsatisfactory
${e_planDowngradeP3} =  It was too expensive
${e_planDowngradeP4} =  Other
${e_planDowngradeTxt2} =  What could we do to improve?
${e_planDowngradeSuccessTxt1} =  Your premium plan will be downgraded at the end of your current billing period on
${e_planDowngradeSuccessTxt2} =  We hope you will consider getting premium sometime in the future.
${e_paymentOptForPremium} =  CARDS AND UPI
${e_paymentUSDopt} =  USD
${e_paymentINRopt} =  INR
${e_paymentMoreLink} =  More
${e_cardAutoLinkTxt} =  This card will be linked to the subscription and future payments will be charged automatically.
${e_premiumSuccessTxt1} =  Congratulations! You have successfully subscribed!
${e_premiumSuccessTxt2} =  You can manage your plan under the Profile section.
${e_paymentUPIdesc} =  You can only pay using UPI ID linked with either ICICI Bank, HDFC Bank or SBI Bank
${e_paymentUPItxt1} =  UPI ID IS LINKED TO
${e_paymentUPItxt2} =  This is a recurring payment and upto ₹ 2,500 will be charged now. Vested can charge upto ₹ 2,500 on a yearly basis till
${e_upiICICItxt} =  ICICI Bank Change Bank
${e_upiPayTxt} =  PAY USING UPI ID
${e_upiIdTxt} =  UPI ID
${e_upiNoteTxt} =  Please note, you can only complete this payment using BHIM App or PayTM App
${e_multiAssetVestsTxt} =  Multi-Asset Class Vests
${e_aggMultiAssetVests} =  Aggressive
${e_aggMultiAssetVestsTxt} =  Optimized for more aggressive growth while maintaining portfolio efficiency.
${e_modMultiAssetVests} =  Moderate
${e_modMultiAssetVestsTxt} =  Optimized for balanced growth while minimizing volatility.
${e_conMultiAssetVests} =  Conservative
${e_conMultiAssetVestsTxt} =  Optimized for capital preservation.
${e_aggMultiAssetClass} =  Multi-Asset Class - Aggressive
${e_modMultiAssetClass} =  Multi-Asset Class - Moderate
${e_conMultiAssetClass} =  Multi-Asset Class - Conservative
${e_buyingPower} =  Buying Power
${e_previewOrdeBtn} =  Preview Order

# LOCATORS
# Normal Subscription Locators


# Premium Subscription Locators
${vf_A_zeroComInvstUnderBasic} =  xpath=//*[@text='Included' and (./preceding-sibling::* | ./following-sibling::*)[@text='Basic']]
${vf_A_vestUpfrntFeeUnderBasic} =  xpath=//*[@text=' / purchase' and (./preceding-sibling::* | ./following-sibling::*)[@text='Basic']]
${vf_A_accessAddntlVestsUnderBasic} =  xpath=//*[@text='' and (./preceding-sibling::* | ./following-sibling::*)[@text='Basic']]
${vf_A_zeroComInvstUnderPremium} =  xpath=//*[@text='Included' and (./preceding-sibling::* | ./following-sibling::*)[@text='Premium']]
${vf_A_vestUpfrntFeeUnderPremium} =  xpath=//*[@text=' / purchase' and (./preceding-sibling::* | ./following-sibling::*)[@text='Premium']]
${vf_A_accessAddntlVestsUnderPremium} =  xpath=//*[@text=''  and (./preceding-sibling::* | ./following-sibling::*)[@text='Premium']]
${vf_A_currentPlanBtn} =  xpath=//*[@text='Current Plan']
${vf_A_downgradeBtn} =  xpath=//*[@text='Downgrade']
${vf_A_planDowngradeChkBox1} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*/*[@text=''])[1]
${vf_A_planDowngradeChkBox2} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*/*[@text=''])[2]
${vf_A_planDowngradeChkBox3} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*/*[@text=''])[3]
${vf_A_planDowngradeChkBox4} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*/*[@text=''])[4]
${vf_A_feedbackTxtBox} =  xpath=//*[@class='android.widget.EditText']
${vf_A_confirmDowngradeBtn} =  xpath=//*[@text='Confirm Downgrade']
${vf_A_goBackBtn} =  xpath=//*[@text='Go Back']
${vf_A_backtoDashboardBtn} =  xpath=//*[@text='Back to Dashboard']
${vf_A_cardPaymentOptForPremium} =  xpath=//*[@text='Card MasterCard and Visa credit cards']
${vf_A_upiPaymentOptForPremium} =  xpath=//*[@text='UPI Pay using BHIM or PayTM App']
${vf_A_pay2500Btn} =  xpath=//*[@text='PAY ₹ 2,500']
${vf_A_continuePayment} =  xpath=/*[@text='CONTINUE PAYMENT']
${vf_A_upiPaymentICICI} =  xpath=//*[@text='ICICI Bank' and ./*[@class='android.view.View']]
${vf_A_upiPaymentHDFC} =  xpath=//*[@text='HDFC Bank' and ./*[@class='android.view.View']]
${vf_A_upiPaymentSBI} =  xpath=//*[@text='SBI Bank' and ./*[@class='android.view.View']]
${vf_A_enterUPI} =  xpath=(//*[@class='android.view.View' and ./parent::*[@id='user-new-vpa-container-upi']]/*[@class='android.widget.EditText'])[1]
${vf_A_buyBtn} =  xpath=//*[@text='Buy']