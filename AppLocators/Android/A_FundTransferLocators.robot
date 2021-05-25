*** Variables ***

# KYC Approved Account with No Fund History
${e_emailNoFundHistory} =  testingVF111+9@gmail.com
${e_pwdNoFundHistory} =  Moolya@123
${e_pinNoFundHistory} =  111111

${e_incmpltDeposits} =  INCOMPLETE DEPOSITS
${e_pendingTransfers} =  PENDING TRANSFERS
${e_cmpltedTransfers} =  COMPLETED TRANSFERS
${e_cashBalance} =  Cash Balance
${e_0CashAmt} =  $0.00

# Add Funds
${e_kycApprovalNeededPopupTxt1} =  You must be KYC approved to initiate a fund transfer.
${e_kycApprovalNeededPopupTxt2} =  Investing in US stocks means investing in US dollars. Your bank may charge international wire fees to transfer funds to your Vested account.


# Withdrawal Funds
${e_kycApprovalNeededPopupTxt3} =  Investing in US stocks means investing in US dollars. Vested charges an $11 withdrawal fee every time you initiate an withdrawal except for premium subscribers who get one free withdrawal annually.

# LOCATORS
${vf_A_transfer} =  xpath=//*[@text='Transfer']

# Add Funds 

${vf_A_addFundsBtn} =  xpath=//*[@text='ADD FUNDS']


# Withdrawal Funds 

${vf_A_withdrawalFundsBtn} =  xpath=//*[@text='WITHDRAW FUNDS']