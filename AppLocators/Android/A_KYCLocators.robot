*** Variables ***
#  Test data or expected values
# KYC Not Completed Credential
${e_validEmailForKYC} =  asha.kharat+19@moolya.com
${e_validPasswordForKYC} =  Moolya@123

# Before Completion & Instruction Screen
${e_stepsHeading} =  Complete 3 simple steps to start investing in US stocks and ETFs
${e_step1Submit} =  Submit your KYC
${e_step1SubmitTxt} =  Have your government ID and proof of address accessible.
${e_step2Approve} =  KYC Approved
${e_step2ApproveTxt} =  It takes 1-3 business days to review.
${e_step3FundAcc} =  Fund your account
${e_headingKYC} =  KYC
${e_headingKYCTxt} =  Complete the process in less than 5 minutes
${e_whatDoYouNeed} =  What do you need for KYC?
${e_whatDoYouNeedP1} =  Background information (name, address, date of birth, etc.)
${e_whatDoYouNeedP2} =  Proof of ID
${e_whatDoYouNeedP3} =  Proof of Address
${e_howWeUseInfo} =  How do we use your information?
${e_howWeUseInfoP1} =  Perform KYC checks that meet US regulatory requirements
${e_howWeUseInfoP2} =  Verify and protect your identity
${e_howWeUseInfoP3} =  File tax forms to prevent double taxation
${e_whatElseNeedInfo} =  What else do we need your information for?
${e_whatElseNeedInfoTxt} =  The information you provide allows us to comply with US federal laws to obtain, verify, and record information that identifies each person who opens an account. Doing so will help the US government in their fight against global terrorism and money laundering.

# Basic Details Screen
${e_letsGetToKnowYou} =  Let’s get to know you.
${e_dummyPhoneNo} =  9998887770
${e_maleGender} =  Male
${e_femaleGender} =  Female
${e_chkBx1Txt} =  I work at a US brokerage firm, or am a family member of an individual who works at a US brokerage firm
${e_chkBx2Txt} =  I am a politically exposed person or public official, or am a family member of a politically exposed person or public official
${e_chkBx3Txt} =  I am a director, an officer, or own at least 10% of a US-listed public company’s equities
${e_chkBx4Txt} =  None of the these apply to me

# Investment Profile Screen
${e_investProfileScreen} =  Let’s build your investment profile.
${e_riskTolerance} =  Risk tolerance
${e_riskToleranceOpt1Txt} =  Low
${e_riskToleranceOpt1Desc} =  I’m comfortable accepting lower returns for more stability.
${e_riskToleranceOpt2Txt} =  Moderate
${e_riskToleranceOpt2Desc} =  I’m looking for growth. Moderate gains or losses along the way are fine.
${e_riskToleranceOpt3Txt} =  High
${e_riskToleranceOpt3Desc} =  I’m comfortable accepting higher risk for higher returns.
${e_investingFrequency} =  How often do you plan to invest in companies?
${e_investingFrequencyOpt1Txt} =  Several times a week
${e_investingFrequencyOpt2Txt} =  Once a month
${e_investingFrequencyOpt3Txt} =  Once every 6 months
${e_investingExperience} =  Investing experience
${e_investingExperienceOpt1Txt} =  0 to 1 year
${e_investingExperienceOpt2Txt} =  1 to 2 years
${e_investingExperienceOpt3Txt} =  3 to 5 years
${e_investingExperienceOpt4Txt} =  5 to 10 years
${e_investingExperienceOpt5Txt} =  10+ years
${e_yearlyIncome} =  Yearly income
${e_yearlyIncomeOpt1Txt} =  0 to 10 lakh rupees
${e_yearlyIncomeOpt2Txt} =  10 to 25 lakh rupees
${e_yearlyIncomeOpt3Txt} =  25 to 50 lakh rupees
${e_yearlyIncomeOpt4Txt} =  50+ lakh rupees
${e_liquidNetWorth} =  Liquid net worth (stocks + bank balance)
${e_liquidNetWorthOpt1Txt} =  0 - 5 lakh rupees
${e_liquidNetWorthOpt2Txt} =  5 - 10 lakh rupees
${e_liquidNetWorthOpt3Txt} =  10 - 30 lakh rupees
${e_liquidNetWorthOpt4Txt} =  30+ lakh rupees
${e_totalNetWorth} =  Total net worth (liquid net worth + all other assets)
${e_totalNetWorthOpt1Txt} =  0 to 10 lakh rupees
${e_totalNetWorthOpt2Txt} =  10 to 30 lakh rupees
${e_totalNetWorthOpt3Txt} =  30 to 1 crore rupees
${e_totalNetWorthOpt4Txt} =  1+ crore rupees
${e_primarySource} =  What is your primary source of investment?
${e_primarySourceOpt1Txt} =  Employment
${e_primarySourceOpt2Txt} =  Gift
${e_primarySourceOpt3Txt} =  Inheritance / Trust
${e_primarySourceOpt4Txt} =  Investment Proceeds
${e_primarySourceOpt5Txt} =  Savings
${e_primarySourceOpt6Txt} =  Retirement Funds
${e_primarySourceOpt7Txt} =  Gambling
${e_primarySourceOpt8Txt} =  Legal Settlement
${e_primarySourceOpt9Txt} =  Spouse / Parent
${e_primarySourceOpt10Txt} =  Unemployment / Disability
${e_primarySourceOpt11Txt} =  Rollover
${e_primarySourceOpt12Txt} =  Rental Income
${e_primarySourceOpt13Txt} =  Sale of Business
${e_primarySourceOpt14Txt} =  Insurance Proceeds
${e_depositsAndWithdrawals} =  In the next 12 months, how many deposits and withdrawals do you plan to make with your Vested account?
${e_depositsAndWithdrawalsOpt1Txt} =  0 to 5
${e_depositsAndWithdrawalsOpt2Txt} =  6 to 10
${e_depositsAndWithdrawalsOpt3Txt} =  11+
${e_moneyDeposit} =  In the next 12 months, how much money do you plan to deposit into your Vested account?
${e_moneyDepositOpt1Txt} =  0 to 50,000 rupees
${e_moneyDepositOpt2Txt} =  50,000 to 1 lakh rupees
${e_moneyDepositOpt3Txt} =  1+ lakh rupees
${e_investmentsMade} =  In the last 12 months, how many investments have you made?
${e_investmentsMadeOpt1Txt} =  0 to 5
${e_investmentsMadeOpt2Txt} =  6 to 10
${e_investmentsMadeOpt3Txt} =  11+

# Identity Screen
${e_letsVerifyYourIdentity} =  Let’s verify your identity
${e_docVerTxt} =  The US Government requires Vested and its broker partner to collect your government ID and proof of address for identity verification purposes. Vested will use this information to open your Vested account. Your information will not be sold or used for advertisements. Read more here.
${e_maritalStatusTxt} =  Marital status
${e_stsSingle} =  Single
${e_stsDivorced} =  Divorced
${e_stsMarried} =  Married
${e_stsWidowed} =  Widowed
${e_stsDomPtnr} =  Domestic partner
${e_employmentTxt} =  Employment
${e_empEmployed} =  Employed
${e_empRtd} =  Retired
${e_empStdnt} =  Student
${e_empSlfEmp} =  Self-Employed
${e_empUnemp} =  Unemployed
${e_countryTxt} =  What country do you primarily file taxes in?
${e_India} =  India
${e_Other} =  Other

# Document Upload
${e_docUploadPOIHeading} =  Document Upload: Proof of Identification
${e_docUploadPOIDesc1} =  To prevent fund transfer delays, please upload one proof of ID where the name on the ID is an exact match to the name on the bank account you intend to fund your Vested account with.
${e_docUploadDesc2} =  If none of the documents meet the criteria set above, please contact us at help@vestedfinance.co to help you with your KYC.
${e_docUploadVerifyPOIHeading} =  Document Upload: Verify Proof of Identification
${e_aadhaarPOIDesc} =  I’ve verified that the name on my Aadhaar is an exact match to the name on the bank account I intend to fund my Vested account with (including spaces, spelling, order of words, and abbreviations).
${e_aadhaarPOIPopupHeading} =  Document Upload: Please upload your Aadhaar
${e_aadhaarPOIPopupDesc} =  Document Requirements
${e_aadhaarPOIPopupP1} =  Full Name (must be an exact match to the name on your bank account)
${e_aadhaarPOIPopupP2} =  Full Birthdate (dd/mm/yyyy)
${e_aadhaarPOIPopupP3} =  Aadhaar Number
${e_aadhaarPOIPopupP4} =  Full Address
${e_aadhaarFrontUploadSuccessMsg} =  Front side of Aadhaar uploaded successfully.
${e_aadhaarBackUploadPopupHeading} =  Document Upload: Please upload the back side of your Aadhaar
${e_aadhaarBackUploadPopupDesc} =  Document Requirements
${e_aadhaarBackUploadPopupP1} =  Full Address
${e_aadhaarBackUploadPopupP2} =  Aadhaar Number
${e_docUploadSuccessMsg} =  Document Uploaded
${e_aadhaarPoiUploadedSuccessMsg} =  Proof of ID: Aadhaar Uploaded Successfully
${e_aadhaarPoaUploadedSuccessMsg} =  Proof of Address: Aadhaar Uploaded Successfully
${e_panNumber} =  PAN number
${e_dummyPAN} =  9999789478
${e_docUploadPOAHeading} =  Document Upload: Proof of Address
${e_docUploadPOADesc1} =  Select a document to upload as proof of address.
${e_docUploadVerifyPOAHeading} =  Document Upload: Verify Proof of Address
${e_aadhaarBackSidePOADesc} =  I’ve verified that the name on my Aadhaar (back side) is an exact match to the name on the bank account I intend to fund my Vested account with (including spaces, spelling, order of words, and abbreviations).

# Plan Payment
${e_cardPayment} =  Card Visa, MasterCard, RuPay & More
${e_upiPayment} =  UPI Instant payment using UPI App
${e_netBankingPayment} =  Netbanking All Indian banks
${e_walletPayment} =  Wallet Mobikwik & More
${e_cardNum} =  5104 0600 0000 0008
${e_cvv} =  123
${e_expiry} =  0223
${e_hldrName} =  Thiru
${e_399Txt} =  ₹ 399
${e_feeTxt} =  Account Opening Fee
${e_newAccMailId} =  thiruvengadam.s+1@moolya.com
${e_newAccPwd} =  Thiru!99

# LOCATORS
# Before Completion & Instruction Screen Locators
${vf_A_viewAllStepsLink} =  xpath=//*[@text='View all steps']
${vf_A_doneButton} =  xpath=//*[@text='DONE']
${vf_A_startKYCBtn} =  xpath=//*[@text='Start KYC']
${vf_A_backArrow} =  xpath=//*[@text='chevron_left']
${vf_A_startKYCProcessBtn} =  xpath=//*[@text='Start KYC process']
${vf_A_CmpltKYCBtn} =  xpath=//*[@text='Complete KYC']
${vf_A_acceptAndContinueBtn} =  xpath=//*[@text='ACCEPT AND CONTINUE']

# Basic Details Screen Locators
${vf_A_basicDetailsScreen} =  xpath=//*[@text='Let’s get to know you.']
${vf_A_previousButton} =  xpath=//*[@text='Previous']
${vf_A_nextButton} =  xpath=//*[@text='Next']
${vf_A_phoneNum} =  xpath=//*[@class='android.widget.EditText']
${vf_A_chkBx1} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]/*/*[@text=''])[1]
${vf_A_chkBx2} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]/*/*[@text=''])[2]
${vf_A_chkBx3} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]/*/*[@text=''])[3]
${vf_A_chkBx4} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]/*/*[@text=''])[4]
${vf_A_chkBx4Txt} =  xpath=//*[@text='None of the these apply to me']


# Investment Profile Screen Locators
${vf_A_primarySrcDropdown} =  xpath=//*[@text='arrow_drop_down']

# Identity Screen Locators
${vf_A_cntryIndia} =  xpath=//*[@text='India']
${vf_A_verChkBx} =  xpath=//*[@text='']
${vf_A_upldDoc} =  xpath=//*[@text='UPLOAD DOCUMENT']

# Document Upload Locators
${vf_A_uploadDocBtn} =  xpath=//*[@text='UPLOAD DOCUMENT']
${vf_A_uploadDocCloseIcon} =  xpath=//*[@text='close']
${vf_A_aadhaarPOIOption} =  xpath=//*[@text='Aadhaar']
${vf_A_aadhaarPOIOptionImg} =  xpath=//*[@class='android.widget.ImageView' and ./parent::*[@class='android.view.ViewGroup'] and (./preceding-sibling::* | ./following-sibling::*)[@text='Aadhaar']]
${vf_A_driversLicensePOIOption} =  xpath=//*[@text=concat('Driver', "'", 's license')]
${vf_A_driversLicenseOptionImg} =  xpath=//*[@class='android.widget.ImageView' and ./parent::*[@class='android.view.ViewGroup'] and (./preceding-sibling::* | ./following-sibling::*)[@text=concat('Driver', "'", 's license')]]
${vf_A_panCardOption} =  xpath=//*[@text='PAN card']
${vf_A_panCardPOIOptionImg} =  xpath=//*[@class='android.widget.ImageView' and ./parent::*[@class='android.view.ViewGroup'] and (./preceding-sibling::* | ./following-sibling::*)[@text='PAN card']]
${vf_A_passportOption} =  xpath=//*[@text='Passport']
${vf_A_passportPOIOptionImg} =  xpath=//*[@class='android.widget.ImageView' and ./parent::*[@class='android.view.ViewGroup'] and (./preceding-sibling::* | ./following-sibling::*)[@text='Passport']]
${vf_A_confirmBtn} =  xpath=//*[@text='CONFIRM']
${vf_A_selectAnotherDocBtn} =  xpath=//*[@text='SELECT ANOTHER DOCUMENT']
${vf_A_aadhaarImgInAadhaarPopup} =  xpath=//*[@class='android.widget.ImageView' and ./parent::*[@class='android.view.ViewGroup']]
${vf_A_uploadBtn} =  xpath=//*[@text='UPLOAD']
${vf_A_chooseFromLib} =  xpath=//*[@text='Choose from Library...']
${vf_A_aadhaarFrontImg} =  xpath=//*[@text='AadhaarFront.jpg']
${vf_A_aadhaarBackImg} =  xpath=//*[@text='AadhaarBack.jpg']
${vf_A_panTextbox} =  xpath=//*[@class='android.widget.EditText']
${vf_A_backAadhaarPOAOption} =  xpath=//*[@text='Aadhaar (back side)']
${vf_A_backAadhaarPOAOptionImg} =  xpath=//*[@class='android.widget.ImageView' and ./parent::*[@class='android.view.ViewGroup'] and (./preceding-sibling::* | ./following-sibling::*)[@text='Aadhaar (back side)']]
${vf_A_bankStmtPOAOption} =  xpath=//*[@text='Bank statement']
${vf_A_bankStmtPOAOptionImg} =  xpath=//*[@class='android.widget.ImageView' and ./parent::*[@class='android.view.ViewGroup'] and (./preceding-sibling::* | ./following-sibling::*)[@text='Bank statement']]
${vf_A_driverLicenseFsPOAOption} =  xpath=//*[@text=concat('Driver', "'", 's license (front side)')]
${vf_A_driverLicenseFsPOAOptionImg} =  xpath=//*[@class='android.widget.ImageView' and ./parent::*[@class='android.view.ViewGroup'] and (./preceding-sibling::* | ./following-sibling::*)[@text=concat('Driver', "'", 's license (front side)')]]

# Plan Payment screen Locators
${vf_A_payText} =  Choose a plan that suits you best
${vf_A_slctBtn} =  xpath=//*[@text='Select']
${vf_A_chsPlanBtn} =  xpath=//*[@text='Choose Plan']
${vf_A_phnTxtFld} =  xpath=//*[@text='Phone']
${vf_A_phnFld} =  xpath=(//*[@class='android.widget.EditText'])[2]
${vf_A_mailTxtFld} =  xpath=//*[@text='Email']
${vf_A_mailFld} =  xpath=(//*[@class='android.widget.EditText'])[3]
${vf_A_proceedBtn} =  xpath=//*[@text='PROCEED']
${vf_A_cardPayment} =  xpath=//*[@text='Card Visa, MasterCard, RuPay & More']
${vf_A_cardNumTxt} =  xpath=//*[@text='Card Number']
${vf_A_cardNumTxtFld} =  xpath=(//*[@class='android.widget.EditText'])[1]
${vf_A_nameTxt} =  xpath=//*[@text=concat('Card Holder', "'", 's name')]
${vf_A_nameTxtFld} =  xpath=(//*[@class='android.widget.EditText'])[3]
${vf_A_expiryTxt} =  xpath=//*[@text='Expiry']
${vf_A_expiryTxtFld} =  xpath=(//*[@class='android.widget.EditText'])[2]
${vf_A_cvvTxt} =  xpath=//*[@text='CVV']
${vf_A_cvvTxtFld} =  xpath=(//*[@class='android.widget.EditText'])[4]
${vf_A_pay399Btn} =  xpath=//*[@text='PAY ₹ 399']

# Signature screen Locators

# Dashboard Card KYC Completion Locators 