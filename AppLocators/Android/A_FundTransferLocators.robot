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

# Locators
${vf_A_addFundsBtn} =  xpath=//*[@text='ADD FUNDS']
${vf_A_selctBank} =  xpath=(//*[@class='android.view.ViewGroup'])[36]