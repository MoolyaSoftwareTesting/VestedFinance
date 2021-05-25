*** Settings ***

Library     AppiumLibrary

***Keywords***

# Add Funds

Click On Tansfer From Dashboard Screen
    Wait And Click Element On Android  ${vf_A_transfer}

Verify Add Funds for Non KYC Approved Account
    Wait And Click Element On Android  ${vf_A_addFundsBtn}

# Withdrawal Funds

Verify Withdrawal Funds for Non KYC Approved Account
    Wait And Click Element On Android  ${vf_A_withdrawalFundsBtn}
