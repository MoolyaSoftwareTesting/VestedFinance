*** Variables ***

# KYC Approved Account with No Fund History
${e_emailNoFundHistory} =  testingVF111+9@gmail.com
${e_pwdNoFundHistory} =  Moolya@123
${e_pinNoFundHistory} =  111111

# KYC Approved Account For Online Transfer
${e_emailKycApprvTransfer} =  indrajit+8007@vestedfinance.co
${e_pwdKycApprvTransfer} =  iTestUser1!
${e_pinKycApprvTransfer} =  111111

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
${e_amtToTransfer} =  5
${e_transferFromTxt} =  Transfer from
${e_switchBankLink} =  SWITCH BANK
${e_selectYourBankHeading} =  Select your bank
${e_selectYourBankDesc1} =  This provides bank instructions to fund your Vested account. You transfer funds to our broker-partner DriveWealth, which will then be added to your Vested account. DriveWealth is a member of FINRA and SIPC. Your account is insured up to $500,000 USD. Check out Vested’s license and DriveWealth’s license with the SEC.
${e_selectYourBankDesc2} =  Note: There are fees to transfer funds overseas. Please check with your bank for actual prices.
${e_indianBankOpts} =  INDIAN
${e_iciciBankOpt} =  ICICI Bank
${e_amtUnderIncmpltDeposits} =  $5.00
${e_2stepToGo} =  2 step to go
${e_fundOnlineUsingICICI} =  FUND ONLINE USING ICICI MONEY2WORLD
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
${e_userName} =  DEFNEY TEST
${e_yourDriveWealthTxt} =  Your DriveWealth ID (if you have entered it)
${e_userDriveWealthID} =  VTSA000009
${e_bankName} =  Bank Name
${e_amtInUSDTxt} =  Amount Transferred in USD
${e_dateOnWireReceiptTxt} =  Date on the wire receipt
${e_selectDateTxt} =  Select date
${e_todaysDate} =  26
${e_calenderOkBtn} =  OK
${e_pwdForPdfTxt} =  Password for Swift Copy in case of PDF file
${e_enterPwdTxt} =  Enter Password
${e_leaveBlankTxt} =  Leave Blank if PDF is not password protected
${e_incmpltTransferTxt} =  Incomplete information may cause delay in transfer.
${e_uploadWireReceipt} =  UPLOAD WIRE RECEIPT


# Withdrawal Funds
${e_kycApprovalNeededPopupTxt3} =  Investing in US stocks means investing in US dollars. Vested charges an $11 withdrawal fee every time you initiate an withdrawal except for premium subscribers who get one free withdrawal annually.

# LOCATORS
${vf_A_transfer} =  xpath=//*[@text='Transfer']

# Add Funds 

${vf_A_addFundsBtn} =  xpath=//*[@text='ADD FUNDS']
${vf_A_amtToTransfer} =  xpath=//*[@class='android.widget.EditText']
${vf_A_fundOnlineTxtUnderICICI} =  xpath=//*[@text='Fund online' and (./preceding-sibling::* | ./following-sibling::*)[@text='ICICI Bank']]
${vf_A_previousBtn} =  xpath=//*[@text='PREVIOUS']
${vf_A_nextBtn} =  xpath=//*[@text='NEXT']
${vf_A_continueBtnUnderFT} =  (//*[@text='CONTINUE'])[1]
${vf_A_removeBtn} =  (//*[@text='REMOVE'])[1]

# Withdrawal Funds 

${vf_A_withdrawalFundsBtn} =  xpath=//*[@text='WITHDRAW FUNDS']