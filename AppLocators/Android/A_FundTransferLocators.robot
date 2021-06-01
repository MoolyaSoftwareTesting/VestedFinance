*** Variables ***

# Variables
${e_cashBalance} =  Cash Balance
${e_completedTransfers} =  COMPLETED TRANSFERS
${e_depositSuccess} =  Deposit - Successful
${e_incompleteDeposits} =  INCOMPLETE DEPOSITS
${e_continue} =  CONTINUE
${e_remove} =  REMOVE

# Add funds page
${e_addFundsHeading} =  HOW MUCH DO YOU WANT TO DEPOSIT?
${e_amtToTransfer} =  Amount to transfer
${e_transferFrom} =  Transfer from
${e_switchBank} =  SWITCH BANK

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
${e_IDFCBank} =  IDFC Bank
${e_InduslandBank} =  InduslandBank
${e_KotakBank} =  Kotak Bank
${e_YesBank} =  Yes Bank
${e_BankOfBaroda} =  Bank Of Baroda
${e_CitiBank} =  Citi Bank
${e_HSBCBank} =  HSBC Bank
${e_SBI} =  SBI Bank
${e_PNB} =  Punjab National Bank
${e_OtherBank} =  Other Indian Bank
${e_nonIndianBank} =  Non-Indian Bank



# Locators
${vf_A_addFundsBtn} =  xpath=//*[@text='ADD FUNDS']
${vf_A_selctBank} =  xpath=(//*[@class='android.view.ViewGroup'])[36]