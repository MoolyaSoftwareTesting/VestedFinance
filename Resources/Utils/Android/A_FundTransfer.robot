*** Settings ***

Library     AppiumLibrary

***Keywords***

Signin With New Account- No Funding History
    Signin With Pin Credentials  ${e_emailNoFundHistory}  ${e_pwdNoFundHistory}  ${e_pinNoFundHistory}

Verify Fund Transfer Screen For New Account With No Funding History
    Page Should Not Contain Text  ${e_incmpltDeposits}
    Page Should Not Contain Text  ${e_pendingTransfers}
    Page Should Not Contain Text  ${e_cmpltedTransfers}
    Verify Page Conatin Text  ${e_cashBalance}
    Verify Page Conatin Text  ${e_0CashAmt}
    Log to Console  Verified Cash Balance- $0.00
    Verify Element Visibility  ${vf_A_addFundsBtn}
    Verify Element Visibility  ${vf_A_withdrawalFundsBtn}
    Log to Console  Verified Fund Transfer Screen For New Account With No Funding History!

# Add Funds

Click On Tansfer From Dashboard
    Wait And Click Element On Android  ${vf_A_transfer}

Verify Add Funds For Non KYC Approved Account
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Wait For Page Conatin Element  ${e_kycApprovalNeededPopup}  5s
    Verify Page Conatin Text  ${e_kycApprovalNeededPopup}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupTxt1}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupTxt2}
    Verify Element Visibility  ${vf_A_notNowBtn}
    Verify Page Conatin Text  ${e_checkStatusBtn}
    Wait And Click Element On Android  ${vf_A_notNowBtn}
    Log to Console  Verified Add Funds For Non KYC Approved Account!

# Withdrawal Funds

Verify Withdrawal Funds For Non KYC Approved Account
    Wait And Click Element On Android  ${vf_A_withdrawalFundsBtn}
    Wait For Page Conatin Element  ${e_kycApprovalNeededPopup}  5s
    Verify Page Conatin Text  ${e_kycApprovalNeededPopup}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupTxt1}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupTxt3}
    Verify Element Visibility  ${vf_A_notNowBtn}
    Verify Page Conatin Text  ${e_checkStatusBtn}
    Wait And Click Element On Android  ${vf_A_notNowBtn}
    Log to Console  Verified Withdrawal Funds For Non KYC Approved Account!