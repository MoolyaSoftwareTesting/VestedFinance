*** Settings ***

Library     AppiumLibrary

***Keywords***

Signin With New Account- No Funding History


# Add Funds

Click On Tansfer From Dashboard
    Wait And Click Element On Android  ${vf_A_transfer}

Verify Add Funds for Non KYC Approved Account
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Wait For Page Conatin Element  ${e_kycApprovalNeededPopup}  5s
    Verify Page Conatin Text  ${e_kycApprovalNeededPopup}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupTxt1}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupTxt2}
    Verify Element Visibility  ${vf_A_notNowBtn}
    Verify Page Conatin Text  ${e_checkStatusBtn}
    Wait And Click Element On Android  ${vf_A_notNowBtn}

# Withdrawal Funds

Verify Withdrawal Funds for Non KYC Approved Account
    Wait And Click Element On Android  ${vf_A_withdrawalFundsBtn}
    Wait For Page Conatin Element  ${e_kycApprovalNeededPopup}  5s
    Verify Page Conatin Text  ${e_kycApprovalNeededPopup}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupTxt1}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupTxt3}
    Verify Element Visibility  ${vf_A_notNowBtn}
    Verify Page Conatin Text  ${e_checkStatusBtn}
    Wait And Click Element On Android  ${vf_A_notNowBtn}
