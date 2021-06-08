*** Settings ***

Library     AppiumLibrary

***Keywords***

Signin With New Account- No Funding History
    Signin With Pin Credentials  ${e_emailNoFundHistory}  ${e_pwdNoFundHistory}  ${e_pinNoFundHistory}

Signin With KYC Approved Account For Online Transfer
    Signin With Pin Credentials  ${e_emailKycApprvTransfer}  ${e_pwdKycApprvTransfer}  ${e_pinKycApprvTransfer}

Signin With KYC Approved Premium Account For 1st Withdrawal
    Signin With Pin Credentials  ${e_emailKycApprvWithdrwl}  ${e_pwdKycApprvWithdrwl}  ${e_pinKycApprvWithdrwl}

Verify Transfer Landing Screen
    Wait For Page Conatin Element  ${e_cashBalance}
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
    Verify Element Visibility  ${vf_A_imgInTransfer}
    Log to Console  Verified Fund Transfer Screen For New Account With No Funding History!

# Add Funds

Click On Tansfer Tab
    Wait For Element Visibility On Android  ${vf_A_transfer}
    Wait And Click Element On Android  ${vf_A_transfer}
    Verify Transfer Landing Screen
    Log to Console  Navigated to Transfer Landing Screen

Click On Next Button Under Add Funds Flow
    Wait For Element Visibility On Android  ${vf_A_nextBtn}
    Wait And Click Element On Android  ${vf_A_nextBtn}

Verify Add Funds For Non KYC Approved Account
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Wait For Page Conatin Element  ${e_kycApprovalNeededPopup}  
    Verify Page Conatin Text  ${e_kycApprovalNeededPopup}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupTxt1}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupTxt2}
    Verify Element Visibility  ${vf_A_notNowBtn}
    Verify Page Conatin Text  ${e_checkStatusBtn}
    Wait And Click Element On Android  ${vf_A_notNowBtn}
    Log to Console  Verified Add Funds For Non KYC Approved Account!

Click On Switch Bank Link And Select A Bank
    [Arguments]  ${bank}  ${fundOnlineTxt}
    Click Text  ${e_switchBankLink}
    Wait For Page Conatin Element  ${e_selectYourBankHeading}  
    Verify Page Conatin Text  ${e_selectYourBankHeading}
    Verify Page Conatin Text  ${e_selectYourBankDesc1}
    Verify Page Conatin Text  ${e_selectYourBankDesc2}
    Verify Page Conatin Text  ${e_indianBankOpts}
    Verify Element Visibility  ${fundOnlineTxt}
    Click Text  ${bank}
    Log To Console  Selected Bank - ${bank} 

Fill Deposit Screen
    Wait For Page Conatin Element  ${e_howMuchDepositTxt}  
    Verify Page Conatin Text  ${e_howMuchDepositTxt}
    Verify Page Conatin Text  ${e_amtToTransferTxt}
    Verify Page Conatin Text  ${e_$Txt}
    Input Text  ${vf_A_amtTxtBox}  ${e_amtToTransfer}
    Verify Page Conatin Text  ${e_transferFromTxt}

Click On Continue Button Under Fund Transfer
    Wait For Element Visibility On Android  ${vf_A_continueBtnUnderFT}
    Wait And Click Element On Android  ${vf_A_continueBtnUnderFT}

Verify User Is Navigated To Fund Online Using ICICI Screen
    Wait For Page Conatin Element  ${e_fundOnlineUsingICICI}  
    Verify Page Conatin Text  ${e_fundOnlineUsingICICI}

Verify Fund Online Screen
    Verify Page Conatin Text  ${e_selectDiffFundTransfer}
    Verify Page Conatin Text  ${e_important}
    Verify Page Conatin Text  ${e_importantP1}
    Verify Page Conatin Text  ${e_importantP2}
    Verify Page Conatin Text  ${e_fees}
    Verify Page Conatin Text  ${e_feesP1}
    Verify Page Conatin Text  ${e_dwnldInstrctnsBtn}
    Click Text  ${e_dwnldInstrctnsBtn}
    Click On Element If Visibile  ${vf_A_allowBtn}
    Verify Page Conatin Text  ${e_success}
    Verify Page Conatin Text  ${e_dwnldedSuccessflly}
    Click Text  ${e_okBtn}
    Wait For Element Visibility On Android  ${vf_A_closeIcon}
    Wait And Click Element On Android  ${vf_A_closeIcon}
    Wait For Page Conatin Element  ${e_dwnldInstrctnsBtn}  
    Log to Console  Verified Fund Online Screen!

Verify New Entry Created Under Incomplete Deposits
    Verify Page Conatin Text  ${e_incmpltDeposits}
    Verify Page Conatin Text  ${e_amtToTransfer}
    Verify Element Visibility  ${vf_A_continueBtnUnderFT}
    Verify Element Visibility  ${vf_A_removeBtn}

Verify User Is Navigated To Upload The Wire Receipt Screen
    Wait For Page Conatin Element  ${e_uploadWireReceipt}  
    Verify Page Conatin Text  ${e_uploadWireReceipt}

Upload Wire Receipt And Verify Success Message
    Wait And Click Element On Android  ${vf_A_chooseFromLib}
    #FOR LOCAL DEVICE
    # Wait And Click Element On Android  ${vf_A_driversLicenseBackImg}
    #FOR BROWSER STACK
    # Wait And Click Element On Android  ${vf_A_hamburgerMenu}
    # Wait And Click Element On Android  ${vf_A_photosSubMenu}
    # Wait For Page Conatin Element  ${e_selectAPhoto}  
    # Wait And Click Element On Android  ${vf_A_picturesFolder}
    # Wait For Page Conatin Element  ${e_selectAPhoto}  
    # Verify Page Conatin Text   ${e_selectAPhoto}
    # Wait And Click Element On Android  ${vf_A_sampleImgOnBS}
    Wait For Element Visibility On Android  ${vf_A_passportImg}
    Wait And Click Element On Android  ${vf_A_passportImg}
    Wait For Page Conatin Element  ${e_receiptUploadSuccessMsg}  
    Verify Page Conatin Text  ${e_receiptUploadSuccessMsg}
    Verify Page Conatin Text  ${e_reUploadRecTxt}
    Log To Console  Uploaded Wire Receipt

Verify And Fill The Upload Wire Receipt Received Screen
    [Arguments]  ${bankNameTxt}
    Verify Page Conatin Text  ${e_uploadWireReceiptNote}
    Verify Page Conatin Text  ${e_yourReceiptTxt}
    Verify Page Conatin Text  ${e_yourFullName}
    Verify Page Conatin Text  ${e_yourDriveWealthTxt}
    Verify Page Conatin Text  ${e_bankName}
    Verify Page Conatin Text  ${bankNameTxt}
    Verify Page Conatin Text  ${e_amtInUSDTxt}
    Verify Page Conatin Text  ${e_amtToTransfer}
    Swipe By Percent  70  70  20  20  5000
    Verify Page Conatin Text  ${e_dateOnWireReceiptTxt}
    Click Text  ${e_selectDateTxt}
    Wait And Click Element On Android  ${vf_A_calenderOkBtn}
    Verify Page Conatin Text  ${e_pwdForPdfTxt}
    Verify Page Conatin Text  ${e_enterPwdTxt}
    Verify Page Conatin Text  ${e_leaveBlankTxt}
    Verify Page Conatin Text  ${e_incmpltTransferTxt}
    Click Text  ${e_uploadWireReceiptBtn}
    Upload Wire Receipt And Verify Success Message
    Log to Console  Verified, Filled & Uploaded the Wire Receipt for Transfer

Verify And Fill The Upload Wire Receipt Received Screen For Non-Indian Bank
    Verify Page Conatin Text  ${e_uploadWireReceiptNote}
    Verify Page Conatin Text  ${e_yourReceiptTxt}
    Verify Page Conatin Text  ${e_yourFullName}
    Verify Page Conatin Text  ${e_yourDriveWealthTxt}
    Verify Page Conatin Text  ${e_bankName}
    Input Text  ${vf_A_bankNameTxtBoxUndrUploadWireRec}  ${e_iciciUnderBankName}
    Verify Page Conatin Text  ${e_amtInUSDTxt}
    Verify Page Conatin Text  ${e_amtToTransfer}
    Swipe By Percent  70  70  20  20  5000
    Verify Page Conatin Text  ${e_dateOnWireReceiptTxt}
    Click Text  ${e_selectDateTxt}
    Wait And Click Element On Android  ${vf_A_calenderOkBtn}
    Verify Page Conatin Text  ${e_pwdForPdfTxt}
    Verify Page Conatin Text  ${e_enterPwdTxt}
    Verify Page Conatin Text  ${e_leaveBlankTxt}
    Verify Page Conatin Text  ${e_incmpltTransferTxt}
    Click Text  ${e_uploadWireReceiptBtn}
    Upload Wire Receipt And Verify Success Message
    Log to Console  Verified, Filled & Uploaded the Wire Receipt for Transfer

Remove Existing Incomplete Deposits
    FOR  ${i}  IN RANGE  1  10
        ${isElementVisible} =  Run Keyword And Return Status  Verify Element Visibility  ${vf_A_removeBtn}
        IF   ${isElementVisible}
            Wait And Click Element On Android  ${vf_A_removeBtn}
            Wait For Page Conatin Element  ${e_removeDepositTxt}  
            Verify Page Conatin Text  ${e_removeDepositTxt}
            Click Text  ${e_yesBtn}
            Exit For Loop If    ${isElementVisible}
        ELSE
            Swipe By Percent  70  70  40  40  5000
        END
    END


Fill And Remove A Fund Transfer
    Remove Existing Incomplete Deposits
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank  ${e_iciciBankOpt}  ${vf_A_fundOnlineTxtUnderICICI}
    Wait For Page Conatin Element  ${bank}  
    Verify Page Conatin Text  ${bank}
    Click On Next Button Under Add Funds Flow
    Verify User Is Navigated To Fund Online Using ICICI Screen
    Wait And Click Element On Android  ${vf_A_CloseIcon}
    Log to Console  Clicked on Close icon under Fund Online Using ICICI screen
    Verify Transfer Landing Screen
    Verify Page Conatin Text  ${e_2stepToGo}
    Log to Console  Verified New Entry- 2 steps to go
    Verify New Entry Created Under Incomplete Deposits
    Click On Continue Button Under Fund Transfer
    Verify User Is Navigated To Fund Online Using ICICI Screen
    Log to Console  User is returned to step 2 of the fund transfer process
    Verify Fund Online Screen
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify User Is Navigated To Upload The Wire Receipt Screen
    Wait And Click Element On Android  ${vf_A_closeIcon}
    Log to Console  Clicked on Close icon under Upload the Wire Receipt Screen
    Verify Transfer Landing Screen
    Verify Page Conatin Text  ${e_1stepToGo}
    Log to Console  Verified New Entry- 1 steps to go
    Verify New Entry Created Under Incomplete Deposits
    Click On Continue Button Under Fund Transfer
    Verify User Is Navigated To Upload The Wire Receipt Screen
    Wait And Click Element On Android  ${vf_A_closeIconUnderWireRecpt}
    Log to Console  Clicked on Close icon under Upload the Wire Receipt Screen
    Wait For Element Visibility On Android  ${vf_A_removeBtn}
    Wait And Click Element On Android  ${vf_A_removeBtn}
    Wait For Page Conatin Element  ${e_removeDepositTxt}  
    Verify Page Conatin Text  ${e_removeDepositTxt}
    Verify Page Conatin Text  ${e_yesBtn}
    Verify Page Conatin Text  ${e_noBtn} 
    Click Text  ${e_yesBtn}
    Log to Console  Removed A Fund Transfer

Verify Success Screen After Transaction Is Submited Successfully
    Wait For Page Conatin Element  ${e_submitTransferSuccessMsg}  
    Verify Page Conatin Text  ${e_submitTransferSuccessMsg}
    Verify Page Conatin Text  ${e_amtToTransfer}
    Verify Page Conatin Text  ${e_submitTransferSuccessMsg}
    Verify Page Conatin Text  ${e_submitTransferSuccessTxt}
    Verify Page Conatin Text  ${e_backToDashbrdBtnSccsTransfer}
    Log to Console  Verified Success screen after Transaction is submited successfully!

Fill And Submit A Fund Transfer- ICICI Bank Online
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank  ${e_iciciBankOpt}  ${vf_A_fundOnlineTxtUnderICICI}
    Wait For Page Conatin Element  ${e_iciciBankOpt}  
    Verify Page Conatin Text  ${e_iciciBankOpt}
    Click On Next Button Under Add Funds Flow
    Verify User Is Navigated To Fund Online Using ICICI Screen
    Verify Fund Online Screen
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify User Is Navigated To Upload The Wire Receipt Screen
    Verify And Fill The Upload Wire Receipt Received Screen  ${e_iciciUnderBankName}
    Click Text  ${e_submitBtn}
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen

Fill And Submit A Fund Transfer- Axis Bank Online
    Click On Tansfer Tab
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank  ${e_axisBankOpt}  ${vf_A_fundOnlineTxtUnderAxis}
    Wait For Page Conatin Element  ${e_axisBankOpt}  
    Verify Page Conatin Text  ${e_axisBankOpt}
    Click On Next Button Under Add Funds Flow
    Wait For Page Conatin Element  ${e_fundOnlineUsingAxis}  
    Verify Page Conatin Text  ${e_fundOnlineUsingAxis}
    Verify Fund Online Screen
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify User Is Navigated To Upload The Wire Receipt Screen
    Verify And Fill The Upload Wire Receipt Received Screen  ${e_axisUnderBankName}
    Click Text  ${e_submitBtn}
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen
    Click On Tansfer Tab

Fill And Submit A Fund Transfer- HDFC Bank Online
    Click On Tansfer Tab
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank  ${e_hdfcBankOpt}  ${vf_A_fundOnlineTxtUnderHDFC}
    Wait For Page Conatin Element  ${e_hdfcBankOpt}  
    Verify Page Conatin Text  ${e_hdfcBankOpt}
    Click On Next Button Under Add Funds Flow
    Wait For Page Conatin Element  ${e_fundOnlineUsingHDFC}  
    Verify Page Conatin Text  ${e_fundOnlineUsingHDFC}
    Verify Fund Online Screen
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify User Is Navigated To Upload The Wire Receipt Screen
    Verify And Fill The Upload Wire Receipt Received Screen  ${e_hdfcUnderBankName}
    Click Text  ${e_submitBtn}
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen
    Click On Tansfer Tab

Fill And Submit A Fund Transfer- IDFC Bank Online
    Click On Tansfer Tab
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank  ${e_idfcBankOpt}  ${vf_A_fundOnlineTxtUnderIDFC}
    Wait For Page Conatin Element  ${e_idfcBankOpt}  
    Verify Page Conatin Text  ${e_idfcBankOpt}
    Click On Next Button Under Add Funds Flow
    Wait For Page Conatin Element  ${e_fundOnlineUsingIDFC}  
    Verify Page Conatin Text  ${e_fundOnlineUsingIDFC}
    Verify Fund Online Screen
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify User Is Navigated To Upload The Wire Receipt Screen
    Verify And Fill The Upload Wire Receipt Received Screen  ${e_idfcUnderBankName}
    Click Text  ${e_submitBtn}
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen
    Click On Tansfer Tab

Fill And Submit A Fund Transfer- Induslnd Bank Online
    Click On Tansfer Tab
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank  ${e_induslndBankOpt}  ${vf_A_fundOnlineTxtUnderIndusInd}
    Wait For Page Conatin Element  ${e_induslndBankOpt}  
    Verify Page Conatin Text  ${e_induslndBankOpt}
    Click On Next Button Under Add Funds Flow
    Wait For Page Conatin Element  ${e_fundOnlineUsingIndusInd}  
    Verify Page Conatin Text  ${e_fundOnlineUsingIndusInd}
    Verify Fund Online Screen
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify User Is Navigated To Upload The Wire Receipt Screen
    Verify And Fill The Upload Wire Receipt Received Screen  ${e_indusIndUnderBankName}
    Click Text  ${e_submitBtn}
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen
    Click On Tansfer Tab

Fill And Submit A Fund Transfer- Kotak Bank Online
    Click On Tansfer Tab
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank  ${e_kotakBankOpt}  ${vf_A_fundOnlineTxtUnderKotak}
    Wait For Page Conatin Element  ${e_kotakMahindraBankOpt}  
    Verify Page Conatin Text  ${e_kotakMahindraBankOpt}
    Click On Next Button Under Add Funds Flow
    Wait For Page Conatin Element  ${e_fundOnlineUsingKotak}  
    Verify Page Conatin Text  ${e_fundOnlineUsingKotak}
    Verify Fund Online Screen
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify User Is Navigated To Upload The Wire Receipt Screen
    Verify And Fill The Upload Wire Receipt Received Screen  ${e_kotakUnderBankName}
    Click Text  ${e_submitBtn}
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen
    Click On Tansfer Tab

Verify Account, Beneficiary And Bank Information
    Verify Page Conatin Text  ${e_nonIndianBankP1}
    Verify Page Conatin Text  ${e_nonIndianBankA1}
    Verify Page Conatin Text  ${e_nonIndianBankP2}
    Verify Page Conatin Text  ${e_nonIndianBankA2}
    Verify Page Conatin Text  ${e_nonIndianBankAccInfo}
    Verify Page Conatin Text  ${e_nonIndianBankCredit}
    Wait And Click Element On Android  ${vf_A_accInfoCopyIcon1}
    Verify Page Conatin Text  ${e_nonIndianBankAccInfoTxt}
    Verify Page Conatin Text  ${e_nonIndianBankBenInfo}
    Verify Page Conatin Text  ${e_nonIndianBankBenInfoName}
    Verify Page Conatin Text  ${e_nonIndianBankBenInfoNameTxt}
    Wait And Click Element On Android  ${vf_A_accInfoCopyIcon2}
    Swipe By Percent  80  70  20  20  5000
    Verify Page Conatin Text  ${e_nonIndianBankAccNum}
    Verify Page Conatin Text  ${e_nonIndianBankAccNumTxt}
    Wait And Click Element On Android  ${vf_A_accInfoCopyIcon3}
    Verify Page Conatin Text  ${e_nonIndianBankAddrs}
    Verify Page Conatin Text  ${e_nonIndianBankAddrsTxt1}
    Verify Page Conatin Text  ${e_nonIndianBankAddrsTxt2}
    Wait And Click Element On Android  ${vf_A_accInfoCopyIcon4}
    Verify Page Conatin Text  ${e_nonIndianBankEmail}
    Verify Page Conatin Text  ${e_nonIndianBankEmailTxt}
    Wait And Click Element On Android  ${vf_A_accInfoCopyIcon5}
    Verify Page Conatin Text  ${e_nonIndianBankPhnNum}
    Verify Page Conatin Text  ${e_nonIndianBankPhnNumTxt}
    Wait And Click Element On Android  ${vf_A_accInfoCopyIcon6}
    Verify Page Conatin Text  ${e_nonIndianBankInfo}
    Verify Page Conatin Text  ${e_nonIndianBankInfoName}
    Verify Page Conatin Text  ${e_nonIndianBankInfoNameTxt}
    Wait And Click Element On Android  ${vf_A_accInfoCopyIcon7}
    Verify Page Conatin Text  ${e_nonIndianBankInfoRouNum}
    Verify Page Conatin Text  ${e_nonIndianBankInfoRouNumTxt}
    Wait And Click Element On Android  ${vf_A_accInfoCopyIcon8}
    Swipe By Percent  80  70  20  20  5000
    Verify Page Conatin Text  ${e_nonIndianBankInfoSwiftCode}
    Verify Page Conatin Text  ${e_nonIndianBankInfoSwiftCodeTxt}
    Wait And Click Element On Android  ${vf_A_accInfoCopyIcon9}
    Verify Page Conatin Text  ${e_nonIndianBankAddrs}
    Verify Page Conatin Text  ${e_nonIndianBankInfoAddrsTxt}
    Wait And Click Element On Android  ${vf_A_accInfoCopyIcon10}
    Verify Page Conatin Text  ${e_nonIndianBankP3}
    Verify Page Conatin Text  ${e_nonIndianBankA3}
    Swipe By Percent  80  70  20  20  5000
    Verify Page Conatin Text  ${e_important}
    Verify Page Conatin Text  ${e_importantP1}
    Verify Page Conatin Text  ${e_importantP2}
    Verify Page Conatin Text  ${e_fees}
    Verify Page Conatin Text  ${e_feesP1}
    Log to Console  Verified Account, Beneficiary And Bank Information!

Fill And Submit A Fund Transfer- Non Indian Bank
    Click On Tansfer Tab
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click Text  ${e_switchBankLink}
    Wait For Page Conatin Element  ${e_selectYourBankHeading}  
    Verify Page Conatin Text  ${e_selectYourBankHeading}
    Verify Page Conatin Text  ${e_selectYourBankDesc1}
    Verify Page Conatin Text  ${e_selectYourBankDesc2}
    Verify Page Conatin Text  ${e_indianBankOpts}
    Swipe By Percent  80  70  20  20  5000
    Swipe By Percent  80  70  20  20  5000
    Click Text  ${e_nonIndianBankOpt}
    Log To Console  Selected Bank - ${e_nonIndianBankOpt} 
    Wait For Page Conatin Element  ${e_nonIndianBankOpt}  
    Verify Page Conatin Text  ${e_nonIndianBankOpt}
    Click On Next Button Under Add Funds Flow
    Wait For Page Conatin Element  ${e_fundOnlineUsingNonIndian}  
    Verify Page Conatin Text  ${e_fundOnlineUsingNonIndian}
    Verify Account, Beneficiary And Bank Information
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify User Is Navigated To Upload The Wire Receipt Screen
    Verify And Fill The Upload Wire Receipt Received Screen For Non-Indian Bank
    Click Text  ${e_submitBtn}
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen
    Click On Tansfer Tab

# Visit The Bank Scenarios

Select Bank From Select Your Bank Screen
    [Arguments]  ${option}
    Wait For Element Visibility On Android  ${vf_A_selBankStateDropdown}
    Wait And Click Element On Android  ${vf_A_selBankStateDropdown}
    Wait For Element Visibility On Android  ${option}
    FOR  ${i}  IN RANGE  1  10
        ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${option}
        IF   ${isElementVisible}
            Wait For Element Visibility On Android  ${option}
            Click Element  ${option}
            Exit For Loop If    ${isElementVisible}
        ELSE
            Swipe By Percent  70  80  40  75  5000
        END
    END

Click On Switch Bank Link And Select A Bank For Deposit
    [Arguments]  ${bank}
    Click Text  ${e_switchBankLink}
    Wait For Page Conatin Element  ${e_selectYourBankHeading}
    Verify Page Conatin Text  ${e_selectYourBankHeading}
    Verify Page Conatin Text  ${e_selectYourBankDesc1}
    Verify Page Conatin Text  ${e_selectYourBankDesc2}
    Verify Page Conatin Text  ${e_indianBankOpts}
    FOR  ${i}  IN RANGE  1  3
        ${isElementVisible} =  Run Keyword And Return Status  Verify Page Conatin Text  ${bank}
        IF   ${isElementVisible}
            Click Text  ${bank}
            Log To Console  Selected Bank - ${bank}
            Exit For Loop If    ${isElementVisible}
        ELSE
            Swipe By Percent  80  80  20  20  3000
        END
    END
    Wait For Page Conatin Element  ${bank} 
    Verify Page Conatin Text  ${bank}

Verify Fund Online Screen - Visit The Bank
    Wait For Page Conatin Element  ${e_selectDiffFundTransfer}  
    Verify Page Conatin Text  ${e_selectDiffFundTransfer}
    Verify Page Conatin Text  ${e_important}
    Verify Page Conatin Text  ${e_importantP1}
    Verify Page Conatin Text  ${e_importantP2}
    Verify Page Conatin Text  ${e_fees}
    Verify Page Conatin Text  ${e_feesP1}
    Verify Page Conatin Text  ${e_dwnldInstrctnsBtn}
    Log to Console  Verified Fund Online Screen!

Switch to Fund In-Persom With Bank Method
    Click Text  ${e_selectDiffFundTransfer}
    Wait For Page Conatin Element   ${e_fundInpersonWithBank}
    Click Text  ${e_fundInpersonWithBank}
    Wait For Page Conatin Element   ${e_VTBTxt1} 
    Verify Page Conatin Text   ${e_VTBTxt1}
    Verify Page Conatin Text   ${e_VTBTxt1}

Verify Fund Online Screen - Visit The Bank - Direct Method
    Wait For Page Conatin Element  ${e_fundInpersonWithBank}  
    Verify Page Conatin Text  ${e_fundInpersonWithBank}
    Verify Page Conatin Text  ${e_important}
    Verify Page Conatin Text  ${e_importantP1}
    Verify Page Conatin Text  ${e_importantP2}
    Verify Page Conatin Text  ${e_fees}
    Verify Page Conatin Text  ${e_feesP1}
    Log to Console  Verified Fund Online Screen!

Switch to Fund In-Persom With Bank Method - Direct Method
    Wait For Page Conatin Element   ${e_fundInpersonWithBank} 
    Click Text  ${e_fundInpersonWithBank}
    Wait For Page Conatin Element   ${e_VTBTxt1}  
    Verify Page Conatin Text   ${e_VTBTxt1}
    Verify Page Conatin Text   ${e_VTBTxt1}

Email Forms To The Registered Email Id
    Wait For Element Visibility On Android   ${vf_A_emailFormsBtn}
    Element Should Be Enabled  ${vf_A_emailFormsBtn}
    Wait And Click Element On Android  ${vf_A_emailFormsBtn}
    Wait For Page Conatin Element  ${e_emailSentText}  
    Verify Page Conatin Text   ${e_emailSentText}
    Verify Page Conatin Text   ${e_sendAgain}

Verify And Fill The Upload Wire Receipt Received Screen - Visit The Bank
    [Arguments]  ${bank}
    Verify Page Conatin Text  ${e_uploadWireReceiptNote}
    Verify Page Conatin Text  ${e_yourReceiptTxt}
    Verify Page Conatin Text  ${e_yourFullName}
    Verify Page Conatin Text  ${e_yourDriveWealthTxt}
    Verify Page Conatin Text  ${e_bankName}
    Verify Page Conatin Text  ${bank}
    Verify Page Conatin Text  ${e_amtInUSDTxt}
    Swipe By Percent  80  80  20  50  3000
    Verify Page Conatin Text  ${e_dateOnWireReceiptTxt}
    Click Text  ${e_selectDateTxt}
    Wait And Click Element On Android  ${vf_A_calenderOkBtn}
    Verify Page Conatin Text  ${e_pwdForPdfTxt}
    Swipe By Percent  80  80  20  50  3000
    Verify Page Conatin Text  ${e_enterPwdTxt}
    Verify Page Conatin Text  ${e_leaveBlankTxt}
    Verify Page Conatin Text  ${e_incmpltTransferTxt}
    Click Text  ${e_uploadWireReceiptBtn}
    Upload Wire Receipt And Verify Success Message
    Log to Console  Verified, Filled & Uploaded the Wire Receipt for Transfer

User Visits The Bank - Axis Bank
    Click On Tansfer Tab
    Wait For Element Visibility On Android  ${vf_A_addFundsBtn}
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank For Deposit  ${e_AxisBank}
    Click On Next Button Under Add Funds Flow
    Verify Fund Online Screen - Visit The Bank
    Switch to Fund In-Persom With Bank Method
    Email Forms To The Registered Email Id
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify And Fill The Upload Wire Receipt Received Screen - Visit The Bank  ${e_AxisBank1}
    Wait For Element Visibility On Android  ${vf_A_submit}  
    Wait And Click Element On Android  ${vf_A_submit}
    Log to Console  Submit button clicked
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen

User Visits The Bank - ICICI Bank
    Click On Tansfer Tab
    Wait For Element Visibility On Android  ${vf_A_addFundsBtn}
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank For Deposit  ${e_ICICIBank}
    Click On Next Button Under Add Funds Flow
    Verify Fund Online Screen - Visit The Bank
    Switch to Fund In-Persom With Bank Method
    Email Forms To The Registered Email Id
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify And Fill The Upload Wire Receipt Received Screen - Visit The Bank  ${e_ICICIBank1}
    Wait For Element Visibility On Android  ${vf_A_submit}  
    Wait And Click Element On Android  ${vf_A_submit}
    Log to Console  Submit button clicked
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen

User Visits The Bank - HDFC Bank
    Click On Tansfer Tab
    Wait For Element Visibility On Android  ${vf_A_addFundsBtn}
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank For Deposit  ${e_HDFCBank}
    Click On Next Button Under Add Funds Flow
    Verify Fund Online Screen - Visit The Bank
    Switch to Fund In-Persom With Bank Method
    Email Forms To The Registered Email Id
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify And Fill The Upload Wire Receipt Received Screen - Visit The Bank  ${e_HDFCBank1}
    Wait For Element Visibility On Android  ${vf_A_submit}  
    Wait And Click Element On Android  ${vf_A_submit}
    Log to Console  Submit button clicked
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen

User Visits The Bank - KOTAK Bank
    Click On Tansfer Tab
    Wait For Element Visibility On Android  ${vf_A_addFundsBtn}
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank For Deposit - Kotak Bank
    Click On Next Button Under Add Funds Flow
    Verify Fund Online Screen - Visit The Bank
    Switch to Fund In-Persom With Bank Method
    Email Forms To The Registered Email Id
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify And Fill The Upload Wire Receipt Received Screen - Visit The Bank  ${e_KotakBank1}
    Wait For Element Visibility On Android  ${vf_A_submit}  
    Wait And Click Element On Android  ${vf_A_submit}
    Log to Console  Submit button clicked
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen

Click On Switch Bank Link And Select A Bank For Deposit - Kotak Bank
    Click Text  ${e_switchBankLink}
    Wait For Page Conatin Element  ${e_selectYourBankHeading}  
    Verify Page Conatin Text  ${e_selectYourBankHeading}
    Verify Page Conatin Text  ${e_selectYourBankDesc1}
    Verify Page Conatin Text  ${e_selectYourBankDesc2}
    Verify Page Conatin Text  ${e_indianBankOpts}
    Click Text  ${e_KotakBank}
    Log To Console  Selected Bank - ${e_KotakBank}
    Wait For Page Conatin Element  ${e_KotakBankFull}  
    Verify Page Conatin Text  ${e_KotakBankFull}

User Visits The Bank - Yes Bank
    Click On Tansfer Tab
    Wait For Element Visibility On Android  ${vf_A_addFundsBtn}
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank For Deposit  ${e_YesBank}
    Click On Next Button Under Add Funds Flow
    Verify Fund Online Screen - Visit The Bank - Direct Method
    Switch to Fund In-Persom With Bank Method - Direct Method
    Email Forms To The Registered Email Id
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify And Fill The Upload Wire Receipt Received Screen - Visit The Bank  ${e_YesBank1}
    Wait For Element Visibility On Android  ${vf_A_submit}  
    Wait And Click Element On Android  ${vf_A_submit}
    Log to Console  Submit button clicked
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen

User Visits The Bank - Bank Of Baroda
    Click On Tansfer Tab
    Wait For Element Visibility On Android  ${vf_A_addFundsBtn}
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank For Deposit  ${e_BankOfBaroda}
    Click On Next Button Under Add Funds Flow
    Verify Fund Online Screen - Visit The Bank - Direct Method
    Switch to Fund In-Persom With Bank Method - Direct Method
    Email Forms To The Registered Email Id
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify And Fill The Upload Wire Receipt Received Screen - Visit The Bank  ${e_BankOfBaroda1}
    Wait For Element Visibility On Android  ${vf_A_submit}  
    Wait And Click Element On Android  ${vf_A_submit}
    Log to Console  Submit button clicked
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen

User Visits The Bank - Citi Bank
    Click On Tansfer Tab
    Wait For Element Visibility On Android  ${vf_A_addFundsBtn}
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank For Deposit - Citi Bank
    Click On Next Button Under Add Funds Flow
    Verify Fund Online Screen - Visit The Bank - Direct Method
    Switch to Fund In-Persom With Bank Method - Direct Method
    Email Forms To The Registered Email Id
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify And Fill The Upload Wire Receipt Received Screen - Visit The Bank  ${e_CitiBank1}
    Wait For Element Visibility On Android  ${vf_A_submit}  
    Wait And Click Element On Android  ${vf_A_submit}
    Log to Console  Submit button clicked
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen

Click On Switch Bank Link And Select A Bank For Deposit - Citi Bank
    Click Text  ${e_switchBankLink}
    Wait For Page Conatin Element  ${e_selectYourBankHeading}  
    Verify Page Conatin Text  ${e_selectYourBankHeading}
    Verify Page Conatin Text  ${e_selectYourBankDesc1}
    Verify Page Conatin Text  ${e_selectYourBankDesc2}
    Verify Page Conatin Text  ${e_indianBankOpts}
    Swipe By Percent  80  80  20  20  3000
    Click Text  ${e_CitiBank}
    Log To Console  Selected Bank - ${e_CitiBank}
    Wait For Page Conatin Element  ${e_CitiBankFull}  
    Verify Page Conatin Text  ${e_CitiBankFull}

User Visits The Bank - HSBC Bank
    Click On Tansfer Tab
    Wait For Element Visibility On Android  ${vf_A_addFundsBtn}
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank For Deposit  ${e_HSBCBank}
    Click On Next Button Under Add Funds Flow
    Verify Fund Online Screen - Visit The Bank - Direct Method
    Switch to Fund In-Persom With Bank Method - Direct Method
    Email Forms To The Registered Email Id
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify And Fill The Upload Wire Receipt Received Screen - Visit The Bank  ${e_HSBCBank1}
    Wait For Element Visibility On Android  ${vf_A_submit}  
    Wait And Click Element On Android  ${vf_A_submit}
    Log to Console  Submit button clicked
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen

User Visits The Bank - SBI Bank
    Click On Tansfer Tab
    Wait For Element Visibility On Android  ${vf_A_addFundsBtn}
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank For Deposit - SBI Bank
    Click On Next Button Under Add Funds Flow
    Verify Fund Online Screen - Visit The Bank - Direct Method
    Switch to Fund In-Persom With Bank Method - Direct Method
    Email Forms To The Registered Email Id
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify And Fill The Upload Wire Receipt Received Screen - Visit The Bank  ${e_SBI1}
    Wait For Element Visibility On Android  ${vf_A_submit}  
    Wait And Click Element On Android  ${vf_A_submit}
    Log to Console  Submit button clicked
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen

Click On Switch Bank Link And Select A Bank For Deposit - SBI Bank
    Click Text  ${e_switchBankLink}
    Wait For Page Conatin Element  ${e_selectYourBankHeading}  
    Verify Page Conatin Text  ${e_selectYourBankHeading}
    Verify Page Conatin Text  ${e_selectYourBankDesc1}
    Verify Page Conatin Text  ${e_selectYourBankDesc2}
    Verify Page Conatin Text  ${e_indianBankOpts}
    Swipe By Percent  80  80  20  20  3000
    Click Text  ${e_SBI}
    Log To Console  Selected Bank - ${e_SBI}
    Wait For Page Conatin Element  ${e_SBIBankFull}  
    Verify Page Conatin Text  ${e_SBIBankFull}

User Visits The Bank - PNB Bank
    Click On Tansfer Tab
    Wait For Element Visibility On Android  ${vf_A_addFundsBtn}
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank For Deposit  ${e_PNB}
    Click On Next Button Under Add Funds Flow
    Verify Fund Online Screen - Visit The Bank - Direct Method
    Switch to Fund In-Persom With Bank Method - Direct Method
    Email Forms To The Registered Email Id
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}
    Verify And Fill The Upload Wire Receipt Received Screen - Visit The Bank  ${e_PNB1}
    Wait For Element Visibility On Android  ${vf_A_submit}  
    Wait And Click Element On Android  ${vf_A_submit}
    Log to Console  Submit button clicked
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen

User Visits The Bank - Other Indian Bank
    Click On Tansfer Tab
    Wait For Element Visibility On Android  ${vf_A_addFundsBtn}
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Fill Deposit Screen
    Click On Switch Bank Link And Select A Bank For Deposit  ${e_OtherBank}
    Click On Next Button Under Add Funds Flow
    Verify Fund Online Screen - Visit The Bank - Other Bank
    Other Bank Fund In Person Screen - Next Button
    Verify And Fill The Upload Wire Receipt Received Screen - Other Bank
    Wait For Element Visibility On Android  ${vf_A_submit}  
    Wait And Click Element On Android  ${vf_A_submit}
    Log to Console  Submit button clicked
    Verify Success Screen After Transaction Is Submited Successfully
    Click Text  ${e_backToDashbrdBtnSccsTransfer}
    Verify Dashboard Screen

Verify Fund Online Screen - Visit The Bank - Other Bank
    Wait For Page Conatin Element  ${e_fundInpersonWithBank}  
    Verify Page Conatin Text  ${e_fundInpersonWithBank}
    Verify Page Conatin Text  ${e_OtherBanksDetails1}
    Verify Page Conatin Text  ${e_OtherBanksTxt1}
    Verify Page Conatin Text  ${e_OtherBanksDetails2}
    Verify Page Conatin Text  ${e_OtherBanksTxt2}
    Verify Page Conatin Text  ${e_accInfo}
    Verify Page Conatin Text  ${e_furtherCredit}
    Verify Page Conatin Text  ${e_DWInfoTxt}
    Verify Page Conatin Text  ${e_accNum}
    Swipe By Percent  80  80  20  20  3000
    Verify Page Conatin Text  ${e_beneInfoEmail}
    Verify Page Conatin Text  ${e_beneInfoPhNo}
    Verify Page Conatin Text  ${e_bankInfo}
    Verify Page Conatin Text  ${e_routingNum}
    Verify Page Conatin Text  ${e_swiftCode}
    Swipe By Percent  80  80  20  20  3000
    Verify Page Conatin Text  ${e_OtherBanksDetails3}
    Verify Page Conatin Text  ${e_OtherBanksTxt3}
    Verify Page Conatin Text  ${e_important}
    Verify Page Conatin Text  ${e_importantP1}
    Verify Page Conatin Text  ${e_importantP2}
    Verify Page Conatin Text  ${e_fees}
    Verify Page Conatin Text  ${e_feesP1}
    Log to Console  Verified Fund Online Screen!

Other Bank Fund In Person Screen - Next Button
    Wait For Element Visibility On Android  ${vf_A_nextBtnUndrFundOnline}
    Wait And Click Element On Android  ${vf_A_nextBtnUndrFundOnline}

Verify And Fill The Upload Wire Receipt Received Screen - Other Bank
    Verify Page Conatin Text  ${e_uploadWireReceiptNote}
    Verify Page Conatin Text  ${e_yourReceiptTxt}
    Verify Page Conatin Text  ${e_yourFullName}
    Verify Page Conatin Text  ${e_yourDriveWealthTxt}
    Verify Page Conatin Text  ${e_bankName}
    Wait For Element Visibility On Android   ${vf_A_enterBankName}
    Input Text  ${vf_A_enterBankName}  ${e_sampleBank}
    Verify Page Conatin Text  ${e_amtInUSDTxt}
    Swipe By Percent  80  80  20  20  3000
    Verify Page Conatin Text  ${e_dateOnWireReceiptTxt}
    Click Text  ${e_selectDateTxt}
    Wait And Click Element On Android  ${vf_A_calenderOkBtn}
    Verify Page Conatin Text  ${e_pwdForPdfTxt}
    Verify Page Conatin Text  ${e_enterPwdTxt}
    Verify Page Conatin Text  ${e_leaveBlankTxt}
    Verify Page Conatin Text  ${e_incmpltTransferTxt}
    Click Text  ${e_uploadWireReceiptBtn}
    Upload Wire Receipt And Verify Success Message    


# Withdrawal Funds

Click On Withdrawal Funds Button
    Wait And Click Element On Android  ${vf_A_withdrawalFundsBtn}

Verify Withdrawal Funds For Non KYC Approved Account
    Click On Withdrawal Funds Button
    Wait For Page Conatin Element  ${e_kycApprovalNeededPopup}  
    Verify Page Conatin Text  ${e_kycApprovalNeededPopup}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupTxt1}
    Verify Page Conatin Text  ${e_kycApprovalNeededPopupTxt3}
    Verify Element Visibility  ${vf_A_notNowBtn}
    Verify Page Conatin Text  ${e_checkStatusBtn}
    Wait And Click Element On Android  ${vf_A_notNowBtn}
    Log to Console  Verified Withdrawal Funds For Non KYC Approved Account!

Verify Content In Withdrawal Process Screen
    Wait For Page Conatin Element  ${e_withdrawalProcess}  
    Verify Page Conatin Text  ${e_withdrawalProcess}
    Verify Page Conatin Text  ${e_settledCash}
    Verify Page Conatin Text  ${e_amtToWithdraw}
    Verify Element Visibility  ${vf_A_amtTxtBox}
    Verify Page Conatin Text  ${e_proceedBtn}

Click On Withdraw Funds And Verify Withdrawal Amount Screen
    Click On Withdrawal Funds Button
    Verify Content In Withdrawal Process Screen
    Verify Page Conatin Text  ${e_settledCashAmt}
    Verify Page Conatin Text  ${e_withdrawProcessNote}
    Verify Page Conatin Text  ${e_wtdrwPrcsBtn}
    Log to Console  Verified Withdrawal Amount Screen!

Verify First Withdrawal
    Click On Withdrawal Funds Button
    Verify Content In Withdrawal Process Screen
    Page Should Not Contain Text  ${e_withdrawProcessNote}
    Log to Console  Verified First Withdrawal Amount Screen!

Verify Withdrawal Amount Field Validation 
    Verify Element Visibility  ${vf_A_amtTxtBox}
    Click Text  ${e_proceedBtn}
    Wait For Page Conatin Element  ${e_proceedError}  
    Verify Page Conatin Text   ${e_proceedError}
    Clear Text  ${vf_A_amtTxtBox}
    Input Text  ${vf_A_amtTxtBox}  ${e_11amtToWithdraw} 
    Click Text  ${e_proceedBtn}
    Wait For Page Conatin Element  ${e_11amtToWithdrawErrMsg}  
    Verify Page Conatin Text  ${e_11amtToWithdrawErrMsg}
    Clear Text  ${vf_A_amtTxtBox}
    Input Text  ${vf_A_amtTxtBox}  ${e_9amtToWithdraw} 
    Click Text  ${e_proceedBtn}
    Wait For Page Conatin Element  ${e_11amtToWithdrawErrMsg}  
    Verify Page Conatin Text  ${e_11amtToWithdrawErrMsg}
    Clear Text  ${vf_A_amtTxtBox}
    Input Text  ${vf_A_amtTxtBox}  ${e_spclCharAmtToWithdraw} 
    Click Text  ${e_proceedBtn}
    Wait For Page Conatin Element  ${e_spclCharAmtToWithdrawErrMsg}  
    Verify Page Conatin Text  ${e_spclCharAmtToWithdrawErrMsg}
    Clear Text  ${vf_A_amtTxtBox}
    Input Text  ${vf_A_amtTxtBox}  ${e_15amtToWithdraw} 
    Click Text  ${e_proceedBtn}
    Wait For Page Conatin Element  ${e_withdrwlDetails}  
    Verify Page Conatin Text  ${e_withdrwlDetails}
    Log to Console  Verified all Validations for Withdrawal Amount!

Verify All The Fields Under Withdrawal Details Screen
    Verify Page Conatin Text  ${e_beneficiaryName}
    Verify Element Visibility  ${vf_A_beneficiaryNameTxtBox}
    Verify Page Conatin Text  ${e_accountNum}
    Verify Element Visibility  ${vf_A_accNumTxtBox}
    Verify Page Conatin Text  ${e_reEntrAccountNum}
    Verify Element Visibility  ${vf_A_reEtnrAccNumTxtBox}
    Verify Page Conatin Text  ${e_selAccountType}
    Verify Page Conatin Text  ${e_accountType}
    Verify Element Visibility  ${vf_A_accTypeDropdown}
    Verify Page Conatin Text  ${e_swiftCode}
    Verify Element Visibility  ${vf_A_swiftCodeTxtBox}
    Verify Page Conatin Text  ${e_reTypeSwiftCode}
    Verify Element Visibility  ${vf_A_reTypeSwiftCodeTxtBox}
    Swipe By Percent  80  70  20  20  5000
    Verify Page Conatin Text  ${e_bankName}
    Verify Element Visibility  ${vf_A_bankNameTxtBox}
    Verify Page Conatin Text  ${e_bankAddress}
    Verify Element Visibility  ${vf_A_bankAddrsTxtBox}
    Verify Element Visibility  ${vf_A_selBankCountryTxt}
    Verify Element Visibility  ${vf_A_selBankCountryDropdown}
    Verify Element Visibility  ${vf_A_accTypeDropdown}
    Swipe By Percent  80  70  20  20  5000
    Verify Page Conatin Text  ${e_bankCity}
    Verify Element Visibility  ${vf_A_bankCityTxtBox}
    Verify Page Conatin Text  ${e_bankZipCode}
    Verify Element Visibility  ${vf_A_bankZipCodeTxtBox}
    Log to Console  Verified all Fields under Withdrawal Details!

Click On Continue Button And Verify Error Messages
    Wait And Click Element On Android  ${vf_A_continueBtnUndrWithdrwlDet}
    Swipe By Percent  80  70  20  20  5000
    Verify Page Conatin Text  ${e_bankZipCodeErrMsg}
    Verify Page Conatin Text  ${e_bankCityErrMsg}
    Verify Page Conatin Text  ${e_bankCountryErrMsg}
    Verify Page Conatin Text  ${e_bankAddrsErrMsg}
    Verify Page Conatin Text  ${e_bankNameErrMsg}
    Swipe By Percent  20  20  80  70  5000
    Verify Page Conatin Text  ${e_reTypeSwiftCodeErrMsg}
    Verify Page Conatin Text  ${e_swiftCodeErrMsg}
    Verify Page Conatin Text  ${e_accountTypeErrMsg}
    Swipe By Percent  20  20  80  70  5000
    Verify Page Conatin Text  ${e_reEntrAccountNumErrMsg}
    Verify Page Conatin Text  ${e_accountNumErrMsg}
    Verify Page Conatin Text  ${e_beneficiaryNameErrMsg}
    Log to Console  Verified Error Messagess under all feilds!

Select Bank Country
    [Arguments]  ${option}
    Wait For Element Visibility On Android  ${vf_A_selBankCountryDropdown}
    Wait And Click Element On Android  ${vf_A_selBankCountryDropdown}
    Wait For Element Visibility On Android  ${option}
    FOR  ${i}  IN RANGE  1  45
        ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${option}
        IF   ${isElementVisible}
            Wait For Element Visibility On Android  ${option}
            Wait And Click Element On Android  ${option}
            Exit For Loop If  ${isElementVisible}
        ELSE
            Swipe By Percent  70  85  40  65  5000
        END
    END

Select Bank State
    [Arguments]  ${option}
    Wait For Element Visibility On Android  ${vf_A_selBankStateDropdown}
    Wait And Click Element On Android  ${vf_A_selBankStateDropdown}
    Wait For Element Visibility On Android  ${option}
    FOR  ${i}  IN RANGE  1  10
        ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${option}
        IF   ${isElementVisible}
            Wait For Element Visibility On Android  ${option}
            Click Element  ${option}
            Exit For Loop If    ${isElementVisible}
        ELSE
            Swipe By Percent  70  80  40  75  5000
        END
    END

Fill All The Withdrawal Details And Continue
    Swipe By Percent  20  20  80  70  5000
    Input Text  ${vf_A_beneficiaryNameTxtBox}  ${e_beneficiaryNameInput} 
    Input Text  ${vf_A_accNumTxtBox}  ${e_accountNumInput} 
    Input Text  ${vf_A_reEtnrAccNumTxtBox}  ${e_accountNumInput} 
    Wait And Click Element On Android  ${vf_A_accTypeDropdown}
    Wait For Page Conatin Element  ${e_accountTypeSavings}  
    Verify Page Conatin Text  ${e_accountTypeCurrent}
    Verify Page Conatin Text  ${e_accountTypeSavings}
    Click Text  ${e_accountTypeSavings}
    Input Text  ${vf_A_swiftCodeTxtBox}  ${e_swiftCodeInput} 
    Wait For Element Visibility On Android  ${vf_A_reTypeSwiftCodeTxtBox}
    Input Text  ${vf_A_reTypeSwiftCodeTxtBox}  ${e_swiftCodeInput} 
    Swipe By Percent  80  80  20  10  5000
    Input Text  ${vf_A_bankNameTxtBox}  ${e_bankNameInput} 
    Wait For Element Visibility On Android  ${vf_A_bankAddrsTxtBox}
    Input Text  ${vf_A_bankAddrsTxtBox}  ${e_bankAddressInput} 
    Select Bank Country  ${vf_A_bankCountryInput} 
    Verify Element Visibility  ${vf_A_selBankStateTxt}
    Verify Element Visibility  ${vf_A_selBankStateDropdown}
    Select Bank State  ${vf_A_bankStateInput} 
    Swipe By Percent  80  80  20  10  5000
    Input Text  ${vf_A_bankCityTxtBoxForFilling}  ${e_bankCityInput} 
    Wait For Element Visibility On Android  ${vf_A_bankZipCodeTxtBoxForFilling}
    Input Text  ${vf_A_bankZipCodeTxtBoxForFilling}  ${e_bankZipCodeInput} 
    Log to Console  Filled all the feilds under Withdrawal Details screen
    Wait And Click Element On Android  ${vf_A_continueBtnUndrWithdrwlDet}
    Verify Page Conatin Text  ${e_withdrwlConfirmtn}

Verify Withdrawal Details Feilds Validation
    Verify All The Fields Under Withdrawal Details Screen
    Click On Continue Button And Verify Error Messages
    Fill All The Withdrawal Details And Continue

Verify Second Withdrawal
    Click On Withdrawal Funds Button
    Verify Content In Withdrawal Process Screen
    Verify Page Conatin Text   ${e_withdrawProcessNote}
    Log to Console  Verified Second Withdrawal Amount Screen!


User Adds Funds With Already Selected Bank
    Wait And Click Element On Android  ${vf_A_transfer}
    Verify Page Conatin Text   ${vf_A_transfer}
    Element Should Be Visible   ${vf_A_addFundsBtn}
    Log to Console  Add funds button verified
    Wait And Click Element On Android  ${vf_A_addFundsBtn}
    Wait For Page Conatin Element  ${e_addFundsHeading}
    Verify Page Conatin Text   ${e_amtToTransfer}
    Verify Page Conatin Text   ${e_transferFrom}
    Verify Page Conatin Text   ${e_switchBank}
    Click Text  ${e_switchBank}
    Wait For Page Conatin Element  ${e_selectYourBank} 
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
    Wait For Page Conatin Element  ${e_addFundsHeading} 
    Verify Page Conatin Text   ${e_amtToTransfer}
    Verify Page Conatin Text   ${e_transferFrom}
    Verify Page Conatin Text   ${e_switchBank}
    Element Should Be Visible   ${vf_A_selctBank}
    Wait And Click Element On Android  ${vf_A_selctBank}
    Wait For Page Conatin Element  ${e_selectYourBank} 
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
    Swipe By Percent  80  80  20  20  3000
    Verify Page Conatin Text   ${e_YesBank}
    Verify Page Conatin Text   ${e_BankOfBaroda}
    Verify Page Conatin Text   ${e_CitiBank}
    Verify Page Conatin Text   ${e_HSBCBank}
    Verify Page Conatin Text   ${e_SBI}
    Verify Page Conatin Text   ${e_PNB}
    Verify Page Conatin Text   ${e_OtherBank}
    Verify Page Conatin Text   ${e_international}
    Verify Page Conatin Text   ${e_nonIndianBank}
    Swipe By Percent  80  20  20  80  3000

