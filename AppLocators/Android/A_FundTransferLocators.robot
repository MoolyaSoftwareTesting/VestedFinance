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
${e_axisBankOpt} =  Axis Bank
${e_hdfcBankOpt} =  HDFC Bank
${e_idfcBankOpt} =  IDFC First Bank
${e_indusIndBankOpt} =  IndusInd Bank
${e_kotakBankOpt} =  Kotak Bank
${e_nonIndianBankOpt} =  Non-Indian Bank
${e_amtDeposited} =  $5.00
${e_2stepToGo} =  2 step to go
${e_fundOnlineUsingICICI} =  FUND ONLINE USING ICICI MONEY2WORLD
${e_fundOnlineUsingAxis} =  FUND ONLINE USING AXIS NETBANKING
${e_fundOnlineUsingHDFC} =  FUND ONLINE USING HDFC NETBANKING
${e_fundOnlineUsingIDFC} =  FUND ONLINE USING IDFC NETBANKING
${e_fundOnlineUsingIndusInd} =  FUND ONLINE USING INDUSIND NETBANKING
${e_fundOnlineUsingKotak} =  FUND ONLINE USING KOTAK NETBANKING
${e_fundOnlineUsingNonIndian} =  FUND ONLINE USING NON-INDIAN NETBANKING
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

# Withdrawal Funds
${e_kycApprovalNeededPopupTxt3} =  Investing in US stocks means investing in US dollars. Vested charges an $11 withdrawal fee every time you initiate an withdrawal except for premium subscribers who get one free withdrawal annually.
${e_withdrawalProcess} =  Withdrawal Process
${e_settledCash} =  Settled Cash
${e_settledCashAmt} =  $0.00
${e_amtToWithdraw} =  Amount to Withdraw
${e_withdrawProcessNote} =  Note: Drivewealth charges a $11 withdrawal fee. Intermediary banks may charge additional fees on top of this amount.
${e_proceedBtn} =  Proceed
${e_beneficiaryName} =  Beneficiary Name
${e_accountNum} =  Account Number
${e_reEntrAccountNum} =  Re-Enter Account Number
${e_selAccountType} =  Select Account Type
${e_accountType} =  Account Type
${e_accountTypeCurrent} =  Current
${e_accountTypeSavings} =  Savings
${e_swiftCode} =  SWIFT Code
${e_reTypeSwiftCode} =  Re-Type SWIFT Code
${e_bankAddress} =  Bank Address
${e_bankCity} =  Bank City
${e_bankZipCode} =  Bank Zip Code
${e_bankZipCodeErrMsg} =  Bank Zip Code is required
${e_bankCityErrMsg} =  Bank City is required
${e_bankCountryErrMsg} =  Select Bank Country is required
${e_bankAddrsErrMsg} =  Bank Address is required
${e_bankNameErrMsg} =  Bank Name is required
${e_reTypeSwiftCodeErrMsg} =  Re-Type SWIFT Code is required
${e_swiftCodeErrMsg} =  SWIFT Code is required
${e_accountTypeErrMsg} =  Account Type is required
${e_reEntrAccountNumErrMsg} =  Re-Enter Account Number is required
${e_accountNumErrMsg} =  Account Number is required
${e_beneficiaryNameErrMsg} =  Beneficiary Name is required
${e_beneficiaryNameInput} =  Abcd xyz
${e_accountNumInput} =  5555522222
${e_swiftCodeInput} =  123456
${e_bankNameInput} =  ICICI
${e_bankAddressInput} =  Bangalore
${e_bankCountryInput} =  India
${e_bankStateInput} =  Karnataka
${e_bankCityInput} =  Bangalore
${e_bankZipCodeInput} =  560100
${e_withdrwlConfirmtn} =  Withdrawal Confirmation


# LOCATORS
${vf_A_transfer} =  xpath=//*[@text='Transfer']
${vf_A_imgInTransfer} =  xpath=//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup'] and (./preceding-sibling::* | ./following-sibling::*)[@text='Cash Balance']]

# Add Funds 
${vf_A_addFundsBtn} =  xpath=//*[@text='ADD FUNDS']
${vf_A_amtTxtBox} =  xpath=//*[@class='android.widget.EditText']
${vf_A_fundOnlineTxtUnderICICI} =  xpath=//*[@text='Fund online' and (./preceding-sibling::* | ./following-sibling::*)[@text='ICICI Bank']]
${vf_A_fundOnlineTxtUnderAxis} =  xpath=//*[@text='Fund online' and (./preceding-sibling::* | ./following-sibling::*)[@text='Axis Bank']]
${vf_A_fundOnlineTxtUnderHDFC} =  xpath=//*[@text='Fund online' and (./preceding-sibling::* | ./following-sibling::*)[@text='HDFC Bank']]
${vf_A_fundOnlineTxtUnderIDFC} =  xpath=//*[@text='Fund online' and (./preceding-sibling::* | ./following-sibling::*)[@text='IDFC First Bank']]
${vf_A_fundOnlineTxtUnderIndusInd} =  xpath=//*[@text='Fund online' and (./preceding-sibling::* | ./following-sibling::*)[@text='IndusInd Bank']]
${vf_A_fundOnlineTxtUnderKotak} =  xpath=//*[@text='Fund online' and (./preceding-sibling::* | ./following-sibling::*)[@text='Kotak Bank']]
${vf_A_previousBtn} =  xpath=//*[@text='PREVIOUS']
${vf_A_nextBtn} =  xpath=//*[@text='NEXT']
${vf_A_continueBtnUnderFT} =  xpath=(//*[@text='CONTINUE'])[1]
${vf_A_removeBtn} =  xpath=(//*[@text='REMOVE'])[1]
${vf_A_nextBtnUndrFundOnline} =  xpath=//*[@text='NEXT' and ./parent::*[(./preceding-sibling::* | ./following-sibling::*)[./*[@text='chevron_left']]]]

# Withdrawal Funds 

${vf_A_withdrawalFundsBtn} =  xpath=//*[@text='WITHDRAW FUNDS']
${vf_A_backArrowInWithdrwl} =  xpath=//*[@text='']
${vf_A_beneficiaryNameTxtBox} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*[@class='android.widget.EditText'])[1]
${vf_A_accNumTxtBox} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*[@class='android.widget.EditText'])[2]
${vf_A_reEtnrAccNumTxtBox} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*[@class='android.widget.EditText'])[3]
${vf_A_accTypeDropdown} =  xpath=//*[@text='']
${vf_A_swiftCodeTxtBox} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*[@class='android.widget.EditText'])[4]
${vf_A_reTypeSwiftCodeTxtBox} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*[@class='android.widget.EditText'])[5]
${vf_A_bankNameTxtBox} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*[@class='android.widget.EditText'])[6]
${vf_A_bankAddrsTxtBox} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*[@class='android.widget.EditText'])[7]
${vf_A_selBankCountryTxt} =  xpath=(//*[@text='Select Bank Country'])[1]
${vf_A_selBankCountryDropdown} =  xpath=(//*[@text='Select Bank Country'])[2]
${vf_A_selBankStateTxt} =  xpath=(//*[@text='Select Bank State'])[1]
${vf_A_selBankStateDropdown} =  xpath=(//*[@text='Select Bank State'])[2]
${vf_A_bankCityTxtBox} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*[@class='android.widget.EditText'])[8]
${vf_A_bankZipCodeTxtBox} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]]/*[@class='android.widget.EditText'])[9]
${vf_A_continueBtnUndrWithdrwlDet} =  xpath=//*[@text='Continue']