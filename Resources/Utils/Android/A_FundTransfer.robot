*** Settings ***

Library     AppiumLibrary

***Keywords***

Signin With New Account- No Funding History
    Signin With Pin Credentials  ${e_emailNoFundHistory}  ${e_pwdNoFundHistory}  ${e_pinNoFundHistory}

Signin With KYC Approved Account For Online Transfer
    Signin With Pin Credentials  ${e_emailKycApprvTransfer}  ${e_pwdKycApprvTransfer}  ${e_pinKycApprvTransfer}

Verify Transfer Landing Screen
    Verify Page Conatin Text  ${e_cashBalance}

Verify Fund Transfer Screen For New Account With No Funding History
    Page Should Not Contain Text  ${e_incmpltDeposits}
    Page Should Not Contain Text  ${e_pendingTransfers}
    Page Should Not Contain Text  ${e_cmpltedTransfers}
    Verify Transfer Landing Screen
    Verify Page Conatin Text  ${e_0CashAmt}
    Log to Console  Verified Cash Balance- $0.00
    Verify Element Visibility  ${vf_A_addFundsBtn}
    Verify Element Visibility  ${vf_A_withdrawalFundsBtn}
    Log to Console  Verified Fund Transfer Screen For New Account With No Funding History!

# Add Funds

Click On Tansfer From Dashboard
    Wait And Click Element On Android  ${vf_A_transfer}

Click On Next Button Under Add Funds Flow
    Wait And Click Element On Android  ${vf_A_nextBtn}

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

Click On Switch Bank Link And Select A Bank
    Click Text  ${e_switchBankLink}
    Wait For Page Conatin Element  ${e_selectYourBankHeading}  5s
    Verify Page Conatin Text  ${e_selectYourBankHeading}
    Verify Page Conatin Text  ${e_selectYourBankDesc1}
    Verify Page Conatin Text  ${e_selectYourBankDesc2}
    Verify Page Conatin Text  ${e_indianBankOpts}
    Verify Element Visibility  ${vf_A_fundOnlineTxtUnderICICI}
    Click Text  ${e_iciciBankOpt}
    Log To Console  Selected Bank - ${e_iciciBankOpt} 
    Wait For Page Conatin Element  ${e_iciciBankOpt}  5s
    Verify Page Conatin Text  ${e_iciciBankOpt}

Click On Continue Button Under Fund Transfer
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_continueBtnUnderFT}

Verify Fund Online Using ICICI Screen
    Wait For Page Conatin Element  ${e_fundOnlineUsingICICI}  5s
    Verify Page Conatin Text  ${e_fundOnlineUsingICICI}

Verify New Entry Created Under Incomplete Deposits
    [Arguments]  ${step}
    Verify Page Conatin Text  ${e_incmpltDeposits}
    Verify Page Conatin Text  ${e_amtUnderIncmpltDeposits}
    Verify Page Conatin Text  ${step}
    Verify Element Visibility  ${vf_A_continueBtn}
    Verify Element Visibility  ${vf_A_removeBtn}
    Log to Console  Verified new entry created under Incomplete Deposits

Verify Upload The Wire Receipt Screen
    Wait For Page Conatin Element  ${e_uploadWireReceipt}  5s
    Verify Page Conatin Text  ${e_uploadWireReceipt}

Fill And Submit A Fund Transfer
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Wait For Page Conatin Element  ${e_howMuchDepositTxt}  5s
    Verify Page Conatin Text  ${e_howMuchDepositTxt}
    Verify Page Conatin Text  ${e_amtToTransferTxt}
    Verify Page Conatin Text  ${e_$Txt}
    Input Text  ${vf_A_amtToTransfer}  ${e_amtToTransfer}
    Log To Console  Amount to Transfer entered - ${e_amtToTransfer} 
    Verify Page Conatin Text  ${e_transferFromTxt}
    Click On Switch Bank Link And Select A Bank
    Click On Next Button Under Add Funds Flow
    Verify Fund Online Using ICICI Screen
    Wait And Click Element On Android  ${vf_A_CloseIcon}
    Log to Console  Clicked on Close icon under Fund Online Using ICICI screen
    Verify Transfer Landing Screen
    Verify New Entry Created Under Incomplete Deposits  ${e_2stepToGo}
    Log to Console  Verified new entry created under Incomplete Deposits
    Click On Continue Button Under Fund Transfer
    Verify Fund Online Using ICICI Screen
    Verify Page Conatin Text  ${e_selectDiffFundTransfer}
    Verify Page Conatin Text  ${e_importantTxt}
    Verify Page Conatin Text  ${e_importantP1}
    Verify Page Conatin Text  ${e_importantP2}
    Verify Page Conatin Text  ${e_feesTxt}
    Verify Page Conatin Text  ${e_feesP1}
    Verify Page Conatin Text  ${e_dwnldInstrctnsBtn}
    Log to Console  User is returned to step 2 of the fund transfer process
    Click On Next Button Under Add Funds Flow
    Verify Upload The Wire Receipt Screen
    Wait And Click Element On Android  ${vf_A_CloseIcon}
    Log to Console  Clicked on Close icon under Upload the Wire Receipt Screen
    Verify Transfer Landing Screen
    Verify New Entry Created Under Incomplete Deposits  ${e_1stepToGo}
    Click On Continue Button Under Fund Transfer
    Verify Upload The Wire Receipt Screen
    Verify Page Conatin Text  ${e_uploadWireReceiptNote}
    Verify Page Conatin Text  ${e_yourReceiptTxt}
    Verify Page Conatin Text  ${e_yourFullName}
    Verify Page Conatin Text  ${e_userName}
    Verify Page Conatin Text  ${e_yourDriveWealthTxt}
    Verify Page Conatin Text  ${e_userDriveWealthID}
    Verify Page Conatin Text  ${e_bankName}
    Verify Page Conatin Text  ${e_iciciBankOpt}
    Verify Page Conatin Text  ${e_amtInUSDTxt}
    Verify Page Conatin Text  ${e_amtUnderIncmpltDeposits}
    Swipe By Percent  70  70  20  20  5000
    Verify Page Conatin Text  ${e_dateOnWireReceiptTxt}
    Click Text  ${e_selectDateTxt}
    Wait For Page Conatin Element  ${e_calenderOkBtn}  5s
    # Work on clicking Today's current date
    Click Text  ${e_todaysDate}
    Click Text  ${e_calenderOkBtn}
    Verify Page Conatin Text  ${e_pwdForPdfTxt}
    Verify Page Conatin Text  ${e_enterPwdTxt}
    Verify Page Conatin Text  ${e_leaveBlankTxt}
    Verify Page Conatin Text  ${e_incmpltTransferTxt}
    Verify Page Conatin Text  ${e_uploadWireReceipt}
    Click Text  ${e_calenderOkBtn}
    # Upload img

    # Test_on_Real img on BS device- 
    Log to Console  Verified and Filled Upload the Wire Receipt for Transfer


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