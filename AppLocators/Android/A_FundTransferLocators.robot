*** Variables ***

# KYC Approved Account with No Fund History
${e_emailNoFundHistory} =  testingVF111+9@gmail.com
${e_pwdNoFundHistory} =  Moolya@123
${e_pinNoFundHistory} =  111111

# KYC Approved Account For Online Transfer
${e_emailKycApprvTransfer} =  indrajit+8007@vestedfinance.co
${e_pwdKycApprvTransfer} =  iTestUser1!
${e_pinKycApprvTransfer} =  111111

# KYC Approved Premium Account For 1st Withdrawal
${e_emailKycApprvWithdrwl} =  indrajit+8002@vestedfinance.co
${e_pwdKycApprvWithdrwl} =  iTestUser1!
${e_pinKycApprvWithdrwl} =  111111

${e_incmpltDeposits} =  INCOMPLETE DEPOSITS
${e_pendingTransfers} =  PENDING TRANSFERS
${e_cmpltedTransfers} =  COMPLETED TRANSFERS
${e_cashBalance} =  Cash Balance
${e_0CashAmt} =  $0.00

# Add Funds
${e_kycApprovalNeededPopupTxt1} =  You must be KYC approved to initiate a fund transfer.
${e_kycApprovalNeededPopupTxt2} =  Investing in US stocks means investing in US dollars. Your bank may charge international wire fees to transfer funds to your Vested account.
${e_howMuchDepositTxt} =  HOW MUCH DO YOU WANT TO DEPOSIT?
${e_amtToTransferTxt} =  Amount to transfer
${e_$Txt} =  $
${e_transferFromTxt} =  Transfer from
${e_switchBankLink} =  SWITCH BANK
${e_selectYourBankHeading} =  Select your bank
${e_selectYourBankDesc1} =  This provides bank instructions to fund your Vested account. You transfer funds to our broker-partner DriveWealth, which will then be added to your Vested account. DriveWealth is a member of FINRA and SIPC. Your account is insured up to $500,000 USD. Check out Vested’s license and DriveWealth’s license with the SEC.
${e_selectYourBankDesc2} =  Note: There are fees to transfer funds overseas. Please check with your bank for actual prices.
${e_indianBankOpts} =  INDIAN
${e_iciciBankOpt} =  ICICI Bank
${e_amtDeposited} =  $5.00
${e_2stepToGo} =  2 step to go

# visit the bank
${e_fundOnlineUsingICICI} =  FUND ONLINE USING ICICI MONEY2WORLD
${e_selectAPhoto} =  Select a photo
${vf_A_photosSubMenu} =  xpath=//*[@text='Photos']
${vf_A_sampleImgOnBS} =  xpath=//*[@class='android.view.ViewGroup'][@index=1][contains(@content-desc,'Photo taken on ')]


# All banks
${e_fundInpersonWithBank} =  FUND IN-PERSON WITH BANK VISIT
${e_emailSentText} =  Forms mailed to
${e_sendAgain} =  Send again

${e_VTBTxt1} =  1. Print out and fill in the remaining highlighted sections of the forms we have prepared for you.
${e_VTBTxt2} =  2. Submit the forms at the nearest bank branch and save the wire receipt.

${e_selectDiffFundTransfer} =  SELECT A DIFFERENT FUNDS TRANSFER METHOD
${e_importantTxt} =  Important
${e_importantP1} =  Funds from 3rd parties are not accepted.
${e_importantP2} =  The name on your bank account must be an exact match to the name listed on the government ID you have provided us.
${e_feesTxt} =  Fees
${e_feesP1} =  Your bank may charge fees to transfer funds overseas. Please check with your bank as the fees may vary.
${e_dwnldInstrctnsBtn} =  DOWNLOAD INSTRUCTIONS
${e_uploadWireReceipt} =  UPLOAD THE WIRE RECEIPT YOU RECEIVED FOR THE TRANSFER
${e_1stepToGo} =  1 step to go
${e_uploadWireReceiptNote} =  Note: Banks may take a few days to send you a wire receipt.
${e_yourReceiptTxt} =  OUR RECEIPT SHOULD CONTAIN:
${e_yourFullName} =  Your full name
${e_yourDriveWealthTxt} =  Your DriveWealth ID (if you have entered it)
${e_bankName} =  Bank Name
${e_iciciUnderBankName} =  ICICI BANK
${e_amtInUSDTxt} =  Amount Transferred in USD
${e_dateOnWireReceiptTxt} =  Date on the wire receipt
${e_selectDateTxt} =  Select date
${e_calenderOkBtn} =  OK
${e_pwdForPdfTxt} =  Password for Swift Copy in case of PDF file
${e_enterPwdTxt} =  Enter Password
${e_leaveBlankTxt} =  Leave Blank if PDF is not password protected
${e_incmpltTransferTxt} =  Incomplete information may cause delay in transfer.
${e_uploadWireReceiptBtn} =  UPLOAD WIRE RECEIPT
${e_receiptUploadSuccessMsg} =  Wire Receipt Uploaded
${e_reUploadRecTxt} =  Re-Upload Receipt
${e_removeDepositTxt} =  Are you sure you want to remove this deposit?
${e_yesBtn} =  Yes
${e_noBtn} =  No
${e_submitBtn} =  Submit
${e_submitTransferSuccessMsg} =  Thank you for completing your transfer!
${e_submitTransferSuccessTxt} =  will be deposited in your bank in 3-5 business days.
${e_backToDashbrdBtnSccsTransfer} =  BACK TO DASHBOARD
${e_11amtToWithdraw} =  11
${e_9amtToWithdraw} =  9
${e_11amtToWithdrawErrMsg} =  Withdrawal requests must be more than $11.00 to be processed
${e_spclCharAmtToWithdraw} =  ..
${e_spclCharAmtToWithdrawErrMsg} =  Enter valid amount
${e_15amtToWithdraw} =  15
${e_withdrwlDetails} =  Withdrawal Details
${e_OtherBanksDetails1} =  1. Visit your bank branch and request an A2 and a declaration form.
${e_OtherBanksTxt1} =  RBI regulation requires you to fill these forms to fund your Vested account.
${e_OtherBanksDetails2} =  2. Fill in the forms with DriveWealth as the beneficiary.
${e_OtherBanksTxt2} =  Your funds are transferred to our broker-partner DriveWealth before they can be deposited into your Vested account.
${e_OtherBanksDetails3} =  3. Get a wire receipt from your bank
${e_OtherBanksTxt3} =  Your wire receipt helps us keep track of your deposit.
${e_accInfo} =  ACCOUNT INFORMATION
${e_furtherCredit} =  Further Credit To (IMPORTANT!)
${e_DWInfoTxt} =  This is your unique DriveWealth Account Number. Add this to the Futher Credit To, Memo, or Additional Notes section.
${e_beneInfo} =  BENEFICIARY INFORMATION
${e_accInfoName} =  Name
${e_accNum} =  Account Number
${e_beneInfoAddress} =  Address
${e_beneInfoEmail} =  Email
${e_beneInfoPhNo} =  Phone Number
${e_bankInfo} =  BANK INFORMATION
${e_routingNum} =  Routing Number (ABA)
${e_swiftCode} =  SWIFT Code
${e_nextBtn2} =  NEXT


# Withdrawal Funds
${e_kycApprovalNeededPopupTxt3} =  Investing in US stocks means investing in US dollars. Vested charges an $11 withdrawal fee every time you initiate an withdrawal except for premium subscribers who get one free withdrawal annually.
${e_withdrawalProcess} =  Withdrawal Process
${e_settledCash} =  Settled Cash
${e_settledCashAmt} =  $0.00
${e_amtToWithdraw} =  Amount to Withdraw
${e_withdrawProcessNote} =  Note: Drivewealth charges a $11 withdrawal fee. Intermediary banks may charge additional fees on top of this amount.
${e_proceedBtn} =  Proceed

# From Thiru's Methods
# general
${e_cashBalance} =  Cash Balance
${e_completedTransfers} =  COMPLETED TRANSFERS
${e_depositSuccess} =  Deposit - Successful
${e_incompleteDeposits} =  INCOMPLETE DEPOSITS
${e_continue} =  CONTINUE
${e_remove} =  REMOVE

# Add funds page
${e_addFundsHeading} =  HOW MUCH DO YOU WANT TO DEPOSIT?
${e_amtToTransfer} =  5
${e_transferFrom} =  Transfer from
${e_switchBank} =  SWITCH BANK

# Bank Names
# Switch Bank
${e_selectYourBank} =  Select your Bank
${e_slctBankTxt} =  This provides bank instructions to fund your Vested account. You transfer funds to our broker-partner DriveWealth, which will then be added to your Vested account. DriveWealth is a member of FINRA and SIPC. Your account is insured up to $500,000 USD. Check out Vested’s license and DriveWealth’s license with the SEC.
${e_slctBankNote} =  Note: There are fees to transfer funds overseas. Please check with your bank for actual prices. 
${e_indian} =  INDIAN
${e_international} =  INTERNATIONAL
# Bank names
${e_AxisBank} =  Axis Bank
${e_ICICIBank} =  ICICI Bank
${e_HDFCBank} =  HDFC Bank
${e_IDFCBank} =  IDFC First Bank
${e_InduslandBank} =  Indusland Bank
${e_KotakBank} =  Kotak Bank
${e_KotakBankFull} =  Kotak Mahindra Bank
${e_YesBank} =  Yes Bank
${e_BankOfBaroda} =  Bank of Baroda
${e_CitiBank} =  Citi Bank
${e_CitiBankFull} =  Citibank
${e_HSBCBank} =  HSBC Bank
${e_SBI} =  SBI Bank
${e_SBIBankFull} =  State Bank of India
${e_PNB} =  Punjab National Bank
${e_OtherBank} =  Other Indian Bank
${e_nonIndianBank} =  Non-Indian Bank
${e_sampleBank} =  Sample Bank
# Bank names in caps - wire receipt
${e_AxisBank1} =  AXIS BANK
${e_ICICIBank1} =  ICICI BANK
${e_HDFCBank1} =  HDFC BANK
${e_IDFCBank1} =  IDFC FIRST BANK
${e_InduslandBank1} =  INDUSLAND BANK
${e_KotakBank1} =  KOTAK MAHINDRA BANK
${e_YesBank1} =  YES BANK
${e_BankOfBaroda1} =  BANK OF BARODA
${e_CitiBank1} =  CITIBANK
${e_HSBCBank1} =  HSBC BANK
${e_SBI1} =  STATE BANK OF INDIA
${e_PNB1} =  PUNJAB NATIONAL BANK
${e_OtherBank1} =  Other Indian Bank


# LOCATORS
${vf_A_transfer} =  xpath=//*[@text='Transfer']
${vf_A_imgInTransfer} =  xpath=//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup'] and (./preceding-sibling::* | ./following-sibling::*)[@text='Cash Balance']]

# Add Funds 
${vf_A_addFundsBtn} =  xpath=//*[@text='ADD FUNDS']
${vf_A_amtTxtBox} =  xpath=//*[@class='android.widget.EditText']
${vf_A_fundOnlineTxtUnderICICI} =  xpath=//*[@text='Fund online' and (./preceding-sibling::* | ./following-sibling::*)[@text='ICICI Bank']]
${vf_A_previousBtn} =  xpath=//*[@text='PREVIOUS']
${vf_A_nextBtn} =  xpath=//*[@text='NEXT']
${vf_A_continueBtnUnderFT} =  xpath=(//*[@text='CONTINUE'])[1]
${vf_A_removeBtn} =  xpath=(//*[@text='REMOVE'])[1]
${vf_A_nextBtnUndrFundOnline} =  xpath=//*[@text='NEXT' and ./parent::*[(./preceding-sibling::* | ./following-sibling::*)[./*[@text='chevron_left']]]]
${vf_A_selctBank} =  xpath=(//*[@class='android.view.ViewGroup'])[36]

# visit the bank
${vf_A_emailFormsBtn} =  xpath=//*[@text='EMAIL FORMS']
${vf_A_samplePicturesFolder} =  xpath=//*[@text='6 items']
${vf_A_imgOnBS} =  xpath=//*[@class='android.view.ViewGroup'][@index=1][contains(@content-desc,'Photo taken on ')]
${vf_A_submit} =  xpath=//*[@text='Submit']
${vf_A_enterBankName} =  xpath=(//*[@class='android.widget.EditText'])[2]

# Withdrawal Funds 
${vf_A_withdrawalFundsBtn} =  xpath=//*[@text='WITHDRAW FUNDS']
${vf_A_backArrowInWithdrwl} =  xpath=//*[@text='']