*** Settings ***

Library     AppiumLibrary

*** Keywords ***
User Navigates To Fund Transfer Page
    Wait And Click Element On Android  ${vf_A_transfer}
    Log to Console  Transfer Clicked
    Verify Page Conatin Text   ${vf_A_transfer}
    Log to Console  Transfer Heading text verified
    Element Should Be Visible   ${vf_A_addFundsBtn}
    Log to Console  Add funds button verified
    Verify Page Conatin Text   ${e_withdrawFunds}
    Log to Console  Withdraw funds button verified
    Verify Page Conatin Text   ${e_cashBalance}
    Log to Console  Cash balance text verified
    # Incomplete deposits
    Verify Page Conatin Text   ${e_incompleteDeposits}
    Log to Console  Incomplete deposits text verified
    Verify Page Conatin Text   ${e_continue}
    Log to Console  Continue text verified
    Verify Page Conatin Text   ${e_remove}
    Log to Console  Remove text verified
    # Completed transfer
    Verify Page Conatin Text   ${e_completedTransfers}
    Log to Console  Completed transfers text verified
    Verify Page Conatin Text   ${e_depositSuccess}
    Log to Console  Deposit Successful text verified
    # Pending transaction



User Adds Funds With Already Selected Bank
    Wait And Click Element On Android  ${vf_A_transfer}
    Verify Page Conatin Text   ${vf_A_transfer}
    Element Should Be Visible   ${vf_A_addFundsBtn}
    Log to Console  Add funds button verified
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Wait For Page Conatin Element  ${e_addFundsHeading}  5s
    Verify Page Conatin Text   ${e_amtToTransfer}
    Verify Page Conatin Text   ${e_transferFrom}
    Verify Page Conatin Text   ${e_switchBank}
    Click Text  ${e_switchBank}
    Wait For Page Conatin Element  ${e_selectYourBank}  5s
    Verify Page Conatin Text   ${e_slctBankTxt}
    Verify Page Conatin Text   ${e_slctBankNote}
    Verify Page Conatin Text   ${e_slctBanikNote}
    Verify Page Conatin Text   ${e_indian}
    Verify All Bank Names

User Adds Funds By Choosing A Bank
    Wait And Click Element On Android  ${vf_A_transfer}
    Verify Page Conatin Text   ${vf_A_transfer}
    Element Should Be Visible   ${vf_A_addFundsBtn}
    Log to Console  Add funds button verified
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Wait For Page Conatin Element  ${e_addFundsHeading}  5s
    Verify Page Conatin Text   ${e_amtToTransfer}
    Verify Page Conatin Text   ${e_transferFrom}
    Verify Page Conatin Text   ${e_switchBank}
    Element Should Be Visible   ${vf_A_selctBank}
    Wait And Click Element On Android  ${vf_A_selctBank}
    Wait For Page Conatin Element  ${e_selectYourBank}  5s
    Verify Page Conatin Text   ${e_slctBankTxt}
    Verify Page Conatin Text   ${e_slctBankNote}
    Verify Page Conatin Text   ${e_indian}
    Verify All Bank Names
    Click Text  ${e_HDFCBank}
    

Verify All Bank Names
    Verify Page Conatin Text   ${e_AxisBank}
    Verify Page Conatin Text   ${e_ICICIBank}
    Verify Page Conatin Text   ${e_HDFCBank}
    Verify Page Conatin Text   ${e_IDFCBank}
    Verify Page Conatin Text   ${e_InduslandBank}
    Verify Page Conatin Text   ${e_KotakBank}
    Swipe By Percent  90  90  10  10  3000
    Verify Page Conatin Text   ${e_YesBank}
    Verify Page Conatin Text   ${e_BankOfBaroda}
    Verify Page Conatin Text   ${e_CitiBank}
    Verify Page Conatin Text   ${e_HSBCBank}
    Verify Page Conatin Text   ${e_SBI}
    Verify Page Conatin Text   ${e_PNB}
    Verify Page Conatin Text   ${e_OtherBank}
    Verify Page Conatin Text   ${e_international}
    Verify Page Conatin Text   ${e_nonIndianBank}
    Swipe By Percent  90  10  10  90  3000


