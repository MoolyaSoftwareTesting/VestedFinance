*** Settings ***

Library     AppiumLibrary


*** Keywords ***
# Before Completion & Instruction Screen
Click on Start/Complete KYC Button
    Click On Element If Visibile  ${vf_A_startKYCBtn}
    Click On Element If Visibile  ${vf_A_CmpltKYCBtn}
    Log To Console  Clicked on Start/Complete KYC Button

Signin With Non KYC Completed User
    Enter Email  ${e_validEmailForKYC}
    Enter Password  ${e_validPasswordForKYC}
    Click On Signin Button
    # Pin should not be asked
    Verify Dashboard Screen

Verify All Steps Under Account Status Screen
    Verify Page Conatin Text  ${e_stepsHeading}
    Verify Page Conatin Text  ${e_step1Submit}
    Verify Page Conatin Text  ${e_step1SubmitTxt}
    Verify Page Conatin Text  ${e_step2Approve}
    Verify Page Conatin Text  ${e_step2ApproveTxt}
    Verify Page Conatin Text  ${e_step3FundAcc}
    Log To Console  Verified all sections under Account Status screen!

Click On Done Button And Verify Screen
    Wait And Click Element On Android  ${vf_A_doneButton}
    Log To Console  Clicked on Done Button
    Verify Dashboard Screen

Verify All Sections And Navigations Under KYC Introduction Screen
    Verify Page Conatin Text  ${e_headingKYC}
    Verify Page Conatin Text  ${e_headingKYCTxt}
    Verify Page Conatin Text  ${e_whatDoYouNeed}
    Verify Page Conatin Text  ${e_whatDoYouNeedP1}
    Verify Page Conatin Text  ${e_whatDoYouNeedP2}
    Verify Page Conatin Text  ${e_whatDoYouNeedP3}
    Verify Page Conatin Text  ${e_howWeUseInfo}
    Verify Page Conatin Text  ${e_howWeUseInfoP1}
    Verify Page Conatin Text  ${e_howWeUseInfoP2}
    Verify Page Conatin Text  ${e_howWeUseInfoP3}
    Verify Page Conatin Text  ${e_whatElseNeedInfo}
    Verify Page Conatin Text  ${e_whatElseNeedInfoTxt}
    Log To Console  Verified all sections under KYC Introduction screen!
    Verify Navigations Under KYC Introduction Screen

# SL43
Verify Account Status Screen
    Verify Element Visibility  ${vf_A_viewAllStepsLink}
    Wait And Click Element On Android  ${vf_A_viewAllStepsLink}
    Log To Console  Clicked on View All Steps Link
    Verify All Steps Under Account Status Screen
    Click On Done Button And Verify Screen
    Wait And Click Element On Android  ${vf_A_viewAllStepsLink}

Click On Back Arrow
    Verify Element Visibility  ${vf_A_backArrow}
    Wait And Click Element On Android  ${vf_A_backArrow}
    Log To Console  Clicked on Back arrow

Verify KYC Introduction Screen
    Sleep  3s
    Verify Page Conatin Text  ${e_headingKYC}
    Verify Page Conatin Text  ${e_headingKYCTxt}
    Log To Console  Verified KYC Introduction Screen!

Click On Back Arrow And Verify Dashboard Screen
    Click On Back Arrow    
    Verify Dashboard Screen

Click On Accept And Continue Button And Verify Basic Details Screen
    Wait And Click Element On Android  ${vf_A_startKYCProcessBtn}
    Log To Console  Clicked on Start KYC Process Button
    Verify KYC Introduction Screen
    Wait And Click Element On Android  ${vf_A_acceptAndContinueBtn}
    Log To Console  Clicked on Accept and Continue Button
    Verify KYC Basic Details Screen

# SL44: Verify Back, Accept and Continue buttons works in KYC intro screen
Verify Navigations Under KYC Introduction Screen
    Click On Back Arrow And Verify Dashboard Screen
    Click On Accept And Continue Button And Verify Basic Details Screen

# Basic Details Screen

Verify KYC Basic Details Screen
    Sleep  2s
    Close Android Keyboard When Selected A Text Field 
    ${e_letsGetToKnowYou1} =  Replace Characters  ${e_letsGetToKnowYou}  '  ’
    Verify Page Conatin Text  ${e_letsGetToKnowYou1}
    Log To Console  Verified KYC Basic Details Screen!

Click On Previous Button
    Wait And Click Element On Android  ${vf_A_previousButton}
    Log To Console  Clicked on Previous Button

Verify Navigations Under KYC Basic Details Screen
    Close Android Keyboard When Selected A Text Field 
    Click On Back Arrow 
    Verify KYC Introduction Screen
    Wait And Click Element On Android  ${vf_A_acceptAndContinueBtn}
    Sleep  2s
    Close Android Keyboard When Selected A Text Field 
    Click On Previous Button
    Verify KYC Introduction Screen
    Sleep  3s
    Wait And Click Element On Android  ${vf_A_acceptAndContinueBtn}
    Log To Console  Verified Back arrow And Previous button- Under KYC Basic Details Screen!


Enter Phone Number
    [Arguments]  ${text}
    Wait And Click Element On Android  ${vf_A_phoneNum}
    Close Android Keyboard When Selected A Text Field
    Input Text  ${vf_A_phoneNum}  ${text}
    Log to Console  Entered Phone number!
    Close Android Keyboard

Select A Gender
    [Arguments]  ${gender}
    Run Keyword If    '${gender}'=='${e_maleGender}'  Click Text  ${e_maleGender}
    ...     ELSE IF   '${gender}'=='${e_femaleGender}'  Click Text  ${e_femaleGender}
    ...     ELSE  Log To Console  Invalid Data
    Log To Console  Clicked on - ${gender} 

# SL48
Verify All Checkboxes
    Verify Page Conatin Text   ${e_chkBx1Txt}
    Verify Page Conatin Text   ${e_chkBx2Txt}
    Verify Page Conatin Text   ${e_chkBx3Txt}
    Verify Page Conatin Text   ${e_chkBx4Txt}
    Wait And Click Element On Android  ${vf_A_chkBx1}
    Wait And Click Element On Android  ${vf_A_chkBx2}
    Sleep  2s
    Close Android Keyboard When Selected A Text Field 
    Wait And Click Element On Android  ${vf_A_chkBx3}
    Sleep  2s
    Close Android Keyboard When Selected A Text Field 
    Swipe By Percent  80  70  20  20  5000
    Click Text  ${e_chkBx3Txt}
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_chkBx4}
    Log to Console  Verified All Checkboxes
    Element Should Be Disabled  ${vf_A_chkBx1}
    Element Should Be Disabled  ${vf_A_chkBx2}
    Element Should Be Disabled  ${vf_A_chkBx3}
    Log to Console  First three Checkboxes are disabled on selecting 4th Checkbox

# SL45, SL50
User Fill All The Fields Under KYC Basic Details Screen And Verify
    Verify Navigations Under KYC Basic Details Screen
    Close Android Keyboard When Selected A Text Field
    Enter Phone Number  ${e_dummyPAN}
    Sleep  2s
    Select A Gender  ${e_maleGender}
    Click On Next Button
    Sleep  2s
    Click On Previous Button
    Sleep  2s
    Log to Console  Verified Checkboxes are optional!
    Close Android Keyboard
    Swipe By Percent  80  70  20  20  5000
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_chkBx4}
    Log to Console  Basic Identity Entered!
    Verify All Checkboxes
    Click On Next Button

# SL47
User Selects Enters Gender Phone Number
    Verify Page Conatin Text  ${e_headingKYC}
    Log to Console  First Page Verified!
    Wait And Click Element On Android  ${vf_A_acceptAndContinueBtn}
    Verify Page Conatin Text   ${e_letsGetToKnowYou}
    Log to Console  Second Page Verified!
    Wait And Click Element On Android  ${vf_A_phoneNum}
    Input Text  ${vf_A_phoneNum}  ${e_dummyPhoneNo}
    Close Android Keyboard
    Sleep  2s
    Click Element  ${vf_A_maleGender}
    Log to Console  Male Selected!


# Investment Profile Screen

Verify KYC Investment Profile Screen
    Sleep  2s
    Verify Page Conatin Text  ${e_investProfileScreen}
    Log To Console  Verified KYC Investment Profile Screen!

Select Option Under Risk tolerance
    [Arguments]  ${option}
    Verify Page Conatin Text  ${e_riskTolerance}
    Verify Page Conatin Text  ${e_riskToleranceOpt1Txt}
    ${e_riskToleranceOpt1Desc1} =  Replace Characters  ${e_riskToleranceOpt1Desc}  ’  '
    Verify Page Conatin Text  ${e_riskToleranceOpt1Desc1}
    Verify Page Conatin Text  ${e_riskToleranceOpt2Txt}
    ${e_riskToleranceOpt2Desc1} =  Replace Characters  ${e_riskToleranceOpt2Desc}  ’  '
    Verify Page Conatin Text  ${e_riskToleranceOpt2Desc1}
    Verify Page Conatin Text  ${e_riskToleranceOpt3Txt}
    ${e_riskToleranceOpt3Desc1} =  Replace Characters  ${e_riskToleranceOpt3Desc}  ’  ' 
    Verify Page Conatin Text  ${e_riskToleranceOpt3Desc1}
    Log To Console  Verified all options with Description under Risk Tolerance section
    Run Keyword If    '${option}'=='${e_riskToleranceOpt1Txt}'  Click Text  ${e_riskToleranceOpt1Txt}
    ...     ELSE IF   '${option}'=='${e_riskToleranceOpt2Txt}'  Click Text  ${e_riskToleranceOpt2Txt}
    ...     ELSE IF   '${option}'=='${e_riskToleranceOpt3Txt}'  Click Text  ${e_riskToleranceOpt3Txt}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option} 


Select Option Under Investing Frequency
    [Arguments]  ${option}
    Swipe By Percent  80  70  20  20  5000
    Verify Page Conatin Text  ${e_investingFrequency}
    Verify Page Conatin Text  ${e_investingFrequencyOpt1Txt}
    Verify Page Conatin Text  ${e_investingFrequencyOpt2Txt}
    Verify Page Conatin Text  ${e_investingFrequencyOpt3Txt}
    Log To Console  Verified all options under Investing Frequency section
    Run Keyword If    '${option}'=='${e_investingFrequencyOpt1Txt}'  Click Text  ${e_investingFrequencyOpt1Txt}
    ...     ELSE IF   '${option}'=='${e_investingFrequencyOpt2Txt}'  Click Text  ${e_investingFrequencyOpt2Txt}
    ...     ELSE IF   '${option}'=='${e_investingFrequencyOpt3Txt}'  Click Text  ${e_investingFrequencyOpt3Txt}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option} 

Select Option Under Investing Experience
    [Arguments]  ${option}
    Swipe By Percent  80  70  20  40  5000
    Verify Page Conatin Text  ${e_investingExperience}
    Verify Page Conatin Text  ${e_investingExperienceOpt1Txt}
    Verify Page Conatin Text  ${e_investingExperienceOpt2Txt}
    Verify Page Conatin Text  ${e_investingExperienceOpt3Txt}
    Verify Page Conatin Text  ${e_investingExperienceOpt4Txt}
    Verify Page Conatin Text  ${e_investingExperienceOpt5Txt}
    Log To Console  Verified all options under Investing Experience section
    Run Keyword If    '${option}'=='${e_investingExperienceOpt1Txt}'  Click Text  ${e_investingExperienceOpt1Txt}
    ...     ELSE IF   '${option}'=='${e_investingExperienceOpt2Txt}'  Click Text  ${e_investingExperienceOpt2Txt}
    ...     ELSE IF   '${option}'=='${e_investingExperienceOpt3Txt}'  Click Text  ${e_investingExperienceOpt3Txt}
    ...     ELSE IF   '${option}'=='${e_investingExperienceOpt4Txt}'  Click Text  ${e_investingExperienceOpt4Txt}
    ...     ELSE IF   '${option}'=='${e_investingExperienceOpt5Txt}'  Click Text  ${e_investingExperienceOpt5Txt}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option}

Select Option Under Yearly Income 
    [Arguments]  ${option}
    Swipe By Percent  80  70  20  20  5000
    Verify Page Conatin Text  ${e_yearlyIncome}
    Verify Page Conatin Text  ${e_yearlyIncomeOpt1Txt}
    Verify Page Conatin Text  ${e_yearlyIncomeOpt2Txt}
    Verify Page Conatin Text  ${e_yearlyIncomeOpt3Txt}
    Verify Page Conatin Text  ${e_yearlyIncomeOpt4Txt}
    Log To Console  Verified all options under Yearly Income section
    Run Keyword If    '${option}'=='${e_yearlyIncomeOpt1Txt}'  Click Text  ${e_yearlyIncomeOpt1Txt}
    ...     ELSE IF   '${option}'=='${e_yearlyIncomeOpt2Txt}'  Click Text  ${e_yearlyIncomeOpt2Txt}
    ...     ELSE IF   '${option}'=='${e_yearlyIncomeOpt3Txt}'  Click Text  ${e_yearlyIncomeOpt3Txt}
    ...     ELSE IF   '${option}'=='${e_yearlyIncomeOpt4Txt}'  Click Text  ${e_yearlyIncomeOpt4Txt}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option}
 
Select Option Under Liquid Net Worth
    [Arguments]  ${option}
    Swipe By Percent  60  70  30  20  5000
    Verify Page Conatin Text  ${e_liquidNetWorth}
    Verify Page Conatin Text  ${e_liquidNetWorthOpt1Txt}
    Verify Page Conatin Text  ${e_liquidNetWorthOpt2Txt}
    Verify Page Conatin Text  ${e_liquidNetWorthOpt3Txt}
    Verify Page Conatin Text  ${e_liquidNetWorthOpt4Txt}
    Log To Console  Verified all options under Liquid Net Worth section
    Run Keyword If    '${option}'=='${e_liquidNetWorthOpt1Txt}'  Click Text  ${e_liquidNetWorthOpt1Txt}
    ...     ELSE IF   '${option}'=='${e_liquidNetWorthOpt2Txt}'  Click Text  ${e_liquidNetWorthOpt2Txt}
    ...     ELSE IF   '${option}'=='${e_liquidNetWorthOpt3Txt}'  Click Text  ${e_liquidNetWorthOpt3Txt}
    ...     ELSE IF   '${option}'=='${e_liquidNetWorthOpt4Txt}'  Click Text  ${e_liquidNetWorthOpt4Txt}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option}

Select Option Under Total Net Worth
    [Arguments]  ${option}
    Swipe By Percent  80  70  20  20  5000
    Verify Page Conatin Text  ${e_totalNetWorth}
    Verify Page Conatin Text  ${e_totalNetWorthOpt1Txt}
    Verify Page Conatin Text  ${e_totalNetWorthOpt2Txt}
    Verify Page Conatin Text  ${e_totalNetWorthOpt3Txt}
    Verify Page Conatin Text  ${e_totalNetWorthOpt4Txt}
    Log To Console  Verified all options under Total Net Worth section
    Run Keyword If    '${option}'=='${e_totalNetWorthOpt1Txt}'  Click Text  ${e_totalNetWorthOpt1Txt}
    ...     ELSE IF   '${option}'=='${e_totalNetWorthOpt2Txt}'  Click Text  ${e_totalNetWorthOpt2Txt}
    ...     ELSE IF   '${option}'=='${e_totalNetWorthOpt3Txt}'  Click Text  ${e_totalNetWorthOpt3Txt}
    ...     ELSE IF   '${option}'=='${e_totalNetWorthOpt4Txt}'  Click Text  ${e_totalNetWorthOpt4Txt}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option}

Select Option Under Primary Source Dropdown
    [Arguments]  ${option}
    Swipe By Percent  70  70  20  20  5000
    Verify Page Conatin Text  ${e_primarySource}
    Log To Console  Verified Primary Source section
    Wait And Click Element On Android  ${vf_A_primarySrcDropdown}
    Sleep  3s
    Click Text  ${option}

    # Verify all options pending
    # ${isOptionVisible} =  Run Keyword And Return Status  Verify Element Visibility  ${option}
    # IF  ${isOptionVisible}
    #     Click Text  ${option}

    Log To Console  Clicked on option - ${option}

Select Option Under Number Of Deposits And Withdrawals
    [Arguments]  ${option}
    Verify Page Conatin Text  ${e_depositsAndWithdrawals}
    Verify Page Conatin Text  ${e_depositsAndWithdrawalsOpt1Txt}
    Verify Page Conatin Text  ${e_depositsAndWithdrawalsOpt2Txt}
    Verify Page Conatin Text  ${e_depositsAndWithdrawalsOpt3Txt}
    Log To Console  Verified all options under Number Of Deposits And Withdrawals section
    Run Keyword If    '${option}'=='${e_depositsAndWithdrawalsOpt1Txt}'  Click Text  ${e_depositsAndWithdrawalsOpt1Txt}
    ...     ELSE IF   '${option}'=='${e_depositsAndWithdrawalsOpt2Txt}'  Click Text  ${e_depositsAndWithdrawalsOpt2Txt}
    ...     ELSE IF   '${option}'=='${e_depositsAndWithdrawalsOpt3Txt}'  Click Text  ${e_depositsAndWithdrawalsOpt3Txt}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option}

Select Option Under Money Deposit
    [Arguments]  ${option}
    Swipe By Percent  80  70  20  20  5000
    Verify Page Conatin Text  ${e_moneyDeposit}
    Verify Page Conatin Text  ${e_moneyDepositOpt1Txt}
    Verify Page Conatin Text  ${e_moneyDepositOpt2Txt}
    Verify Page Conatin Text  ${e_moneyDepositOpt3Txt}
    Log To Console  Verified all options under Money Deposit section
    Run Keyword If    '${option}'=='${e_moneyDepositOpt1Txt}'  Click Text  ${e_moneyDepositOpt1Txt}
    ...     ELSE IF   '${option}'=='${e_moneyDepositOpt2Txt}'  Click Text  ${e_moneyDepositOpt2Txt}
    ...     ELSE IF   '${option}'=='${e_moneyDepositOpt3Txt}'  Click Text  ${e_moneyDepositOpt3Txt}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option}

Select Option Under Investments Made
    [Arguments]  ${option}
    Swipe By Percent  80  70  20  20  5000
    Verify Page Conatin Text  ${e_investmentsMade}
    Verify Page Conatin Text  ${e_investmentsMadeOpt1Txt}
    Verify Page Conatin Text  ${e_investmentsMadeOpt2Txt}
    Verify Page Conatin Text  ${e_investmentsMadeOpt3Txt}
    Log To Console  Verified all options under Investments Made section
    Run Keyword If    '${option}'=='${e_investmentsMadeOpt1Txt}'  Click Text  ${e_investmentsMadeOpt1Txt}
    ...     ELSE IF   '${option}'=='${e_investmentsMadeOpt2Txt}'  Click Text  ${e_investmentsMadeOpt2Txt}
    ...     ELSE IF   '${option}'=='${e_investmentsMadeOpt3Txt}'  Click Text  ${e_investmentsMadeOpt3Txt}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option}

# SL51: Verify if Previous button and Back arrow works
Verify Navigations Under KYC Investment Profile Screen
    Click On Back Arrow 
    Verify KYC Basic Details Screen
    Click On Next Button
    Click On Previous Button
    Verify KYC Basic Details Screen
    Click On Next Button
    Log To Console  Verified Back arrow And Previous button- Under KYC Investment Profile Screen!

User Fill All The Fields Under KYC Investment Profile Screen And Verify
    Verify Navigations Under KYC Investment Profile Screen
    Select Option Under Risk tolerance  ${e_riskToleranceOpt1Txt}
    Select Option Under Investing Frequency  ${e_investingFrequencyOpt1Txt}
    Select Option Under Investing Experience  ${e_investingExperienceOpt1Txt}
    Select Option Under Yearly Income  ${e_yearlyIncomeOpt1Txt}
    Select Option Under Liquid Net Worth  ${e_liquidNetWorthOpt1Txt}
    Select Option Under Total Net Worth  ${e_totalNetWorthOpt1Txt}
    Select Option Under Primary Source Dropdown  ${e_primarySourceOpt1Txt}
    Select Option Under Number Of Deposits And Withdrawals  ${e_depositsAndWithdrawalsOpt1Txt}
    Select Option Under Money Deposit  ${e_moneyDepositOpt1Txt}
    Select Option Under Investments Made  ${e_investmentsMadeOpt2Txt}
    Click On Next Button

# Identity Screen

Verify Identity Screen
    Sleep  2s
    Verify Page Conatin Text  ${e_letsVerifyYourIdentity}
    Log To Console  Verified KYC Identity Screen!

Click On Upload Document Button
    Swipe By Percent  90  70  20  20  5000
    Swipe By Percent  90  70  20  20  5000
    Swipe By Percent  90  70  20  20  5000
    Verify Element Visibility  ${vf_A_uploadDocBtn}
    Wait And Click Element On Android  ${vf_A_uploadDocBtn}
    Log To Console  Clicked on Upload Document Button

# SL57
Verify Options Under Marital Status
    Verify Page Conatin Text   ${e_maritalStatusTxt}
    Wait And Click Element On Android  ${vf_A_stsSingle}
    Wait And Click Element On Android  ${vf_A_stsDivorced}
    Wait And Click Element On Android  ${vf_A_stsMarried}
    Wait And Click Element On Android  ${vf_A_stsWidowed}
    Wait And Click Element On Android  ${vf_A_stsDomPtnr}
    Log to Console  Verified All options under Marital Status section!

# SL59
Verify Options Under Employment Type
    Verify Page Conatin Text   ${e_employmentTxt}
    Wait And Click Element On Android  ${vf_A_empEmployed}
    Wait And Click Element On Android  ${vf_A_empRtd}
    Wait And Click Element On Android  ${vf_A_empStdnt}
    Wait And Click Element On Android  ${vf_A_empSlfEmp}
    Wait And Click Element On Android  ${vf_A_empUnemp}
    Log to Console  Verified all options under Employment Type section!

Select Option Under Marital status
    [Arguments]  ${option}
    Run Keyword If    '${option}'=='${vf_A_stsSingle}'  Click Text  ${vf_A_stsSingle}
    ...     ELSE IF   '${option}'=='${vf_A_stsDivorced}'  Click Text  ${vf_A_stsDivorced}
    ...     ELSE IF   '${option}'=='${vf_A_stsMarried}'  Click Text  ${vf_A_stsMarried}
    ...     ELSE IF   '${option}'=='${vf_A_stsWidowed}'  Click Text  ${vf_A_stsWidowed}
    ...     ELSE IF   '${option}'=='${vf_A_stsDomPtnr}'  Click Text  ${vf_A_stsDomPtnr}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option} 

Select Option Under Employment Type
    [Arguments]  ${option}
    Run Keyword If    '${option}'=='${vf_A_empEmployed}'  Click Text  ${vf_A_empEmployed}
    ...     ELSE IF   '${option}'=='${vf_A_empRtd}'  Click Text  ${vf_A_empRtd}
    ...     ELSE IF   '${option}'=='${vf_A_empStdnt}'  Click Text  ${vf_A_empStdnt}
    ...     ELSE IF   '${option}'=='${vf_A_empSlfEmp}'  Click Text  ${vf_A_empSlfEmp}
    ...     ELSE IF   '${option}'=='${vf_A_empUnemp}'  Click Text  ${vf_A_empUnemp}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option} 

# SL61
User Fill All the Fields under KYC Identity Screen And Verify
    Verify Identity Screen
    Verify Options Under Marital Status
    Select Option Under Marital status  ${vf_A_stsSingle}
    Verify Page Conatin Text   ${e_countryTxt}
    Log to Console  Country Text Verified!
    Verify Page Conatin Text   ${e_India}
    Verify Page Conatin Text   ${e_Other}
    Log to Console  Verified Country section and Options!
    Swipe By Percent  60  70  20  20  5000
    Verify Options Under Employment Type
    Select Option Under Employment Type  ${vf_A_empStdnt}
    Swipe By Percent  70  70  20  20  5000
    Verify Page Conatin Text   ${e_docVerTxt}
    Log to Console  Document Verification section Text Verified!
    #Scroll Down On Android  ${vf_A_verChkBx}
    Wait And Click Element On Android  ${vf_A_verChkBx}
    Log to Console  Confirm Checkbox Clicked!

# Document Upload

Verify Description, Upload Options And Images Under Proof Of Identification Popup
    Verify Page Conatin Text  ${e_docUploadPOIHeading}
    Verify Page Conatin Text  ${e_docUploadPOIDesc1}
    Verify Page Conatin Text  ${e_docUploadDesc2}
    Log To Console  Verified Heading and Description under Proof Of Identification Popup!
    # Recheck- Unable to scroll
    # Verify Element Visibility  ${vf_A_aadhaarPOIOption}
    # Verify Element Visibility  ${vf_A_aadhaarPOIOptionImg}
    # Log To Console  Verified Aadhar option
    # Verify Element Visibility  ${vf_A_driversLicensePOIOption}
    # Verify Element Visibility  ${vf_A_driversLicenseOptionImg}
    # Log To Console  Verified Drivers License option
    # Swipe By Percent  90  50  20  20  5000
    # Verify Element Visibility  ${vf_A_panCardPOIOption}
    # Verify Element Visibility  ${vf_A_panCardOptionImg}
    # Log To Console  Verified PAN card option
    # Swipe By Percent  90  70  20  20  5000
    # Verify Element Visibility  ${vf_A_passportPOIOption}
    # Verify Element Visibility  ${vf_A_passportOptionImg}
    # Log To Console  Verified Passport option
    # Log To Console  Verified all Proof Of Identification upload options & their images!

Click On Close Icon
    Wait And Click Element On Android  ${vf_A_uploadDocCloseIcon}
    Log To Console  Clicked on Close icon
    ${isPopupVisible} =  Run Keyword And Return Status  Verify Page Conatin Text  ${e_docUploadPOIHeading}
    IF   ${isPopupVisible}  
        Log To Console  Proof Of Identification Popup is Not Closed!
    ELSE   
        Log To Console  Proof Of Identification Popup Closed!
    END

Verify Proof Of Address Popup After Front Aadhaar Uploaded As Proof Of Identification
    Verify Page Conatin Text  ${e_docUploadPOAHeading}
    Verify Page Conatin Text  ${e_docUploadPOADesc1}
    Log To Console  Verified Heading and Description under Proof Of Address Popup!
    # Recheck- Unable to scroll
    # Verify Element Visibility  ${vf_A_backAadhaarPOAOption}
    # Verify Element Visibility  ${vf_A_backAadhaarPOAOptionImg}
    # Log To Console  Verified Aadhar Back side
    # Verify Element Visibility  ${vf_A_bankStmtPOAOption}
    # Verify Element Visibility  ${vf_A_bankStmtPOAOptionImg}
    # Log To Console  Verified Bank statement
    # Swipe By Percent  90  50  20  20  5000
    # Verify Element Visibility  ${vf_A_driverLicenseFsPOAOption}
    # Verify Element Visibility  ${vf_A_driverLicenseFsPOAOptionImg}
    # Log To Console  Verified all Proof Of Address upload options & their images!

Click On Aadhaar And Verify Popup
    Wait And Click Element On Android  ${vf_A_aadhaarPOIOption}
    Verify Page Conatin Text  ${e_docUploadVerifyPOIHeading}
    Verify Page Conatin Text  ${e_aadhaarPOIDesc}
    Log To Console  Proof Of Identification Popup for Aadhaar id displayed
    Verify Page Conatin Text  ${e_docUploadDesc2}
    Verify Element Visibility  ${vf_A_aadhaarImgInAadhaarPopup}
    Log To Console  Verified Heading, Image and Description!
    Verify Element Visibility  ${vf_A_confirmBtn}
    Verify Element Visibility  ${vf_A_selectAnotherDocBtn}
    Log To Console  Verified Confirm and Select Another Document button!

Click On Aadhaar Back Side And Verify Popup
    Scroll Down On Android  ${vf_A_backAadhaarPOAOption}
    Wait And Click Element On Android  ${vf_A_backAadhaarPOAOption}
    Verify Page Conatin Text  ${e_docUploadVerifyPOAHeading}
    Verify Page Conatin Text  ${e_aadhaarBackSidePOADesc}
    Log To Console  Proof Of Address Popup for Aadhaar back side displayed
    Verify Page Conatin Text  ${e_docUploadDesc2}
    Verify Element Visibility  ${vf_A_aadhaarImgInAadhaarPopup}
    Log To Console  Verified Heading, Image and Description!
    Verify Element Visibility  ${vf_A_confirmBtn}
    Verify Element Visibility  ${vf_A_selectAnotherDocBtn}
    Log To Console  Verified Confirm and Select Another Document button!

Click On Confirm Button And Verify Aadhaar Popup
    Wait And Click Element On Android  ${vf_A_confirmBtn}
    Verify Page Conatin Text  ${e_aadhaarPOIPopupHeading}
    Log To Console  Document Upload- Please upload your Aadhaar Popup is displayed
    Verify Page Conatin Text  ${e_aadhaarPOIPopupDesc}
    Verify Page Conatin Text  ${e_aadhaarPOIPopupP1}
    Verify Page Conatin Text  ${e_aadhaarPOIPopupP2}
    Verify Page Conatin Text  ${e_aadhaarPOIPopupP3}
    Verify Page Conatin Text  ${e_aadhaarPOIPopupP4}
    Verify Element Visibility  ${vf_A_aadhaarImgInAadhaarPopup}
    Log To Console  Verified Heading, Image and Document Requirement Points!
    Verify Element Visibility  ${vf_A_uploadBtn}
    Verify Element Visibility  ${vf_A_selectAnotherDocBtn}
    Log To Console  Verified Upload and Select Another Document button!

Click On Upload Button
    Wait And Click Element On Android  ${vf_A_uploadBtn}
    Log To Console  Clicked on Upload Button

Verify Upload Back Side Of Aadhaar Popup Under Proof Of Identification
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupHeading}
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupDesc}
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupP1}
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupP2}
    Verify Element Visibility  ${vf_A_aadhaarImgInAadhaarPopup}
    Verify Element Visibility  ${vf_A_uploadBtn}
    Log To Console  Verified Description, Image and Upload button in Back side Aadhaar upload Popup!

Verify Upload Back Side Of Aadhaar Popup Under Proof Of Address
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupHeading}
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupDesc}
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupP1}
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupP2}
    Verify Element Visibility  ${vf_A_aadhaarImgInAadhaarPOIpopup}
    Verify Element Visibility  ${vf_A_uploadBtn}
    Verify Element Visibility  ${vf_A_selectAnotherDocBtn}
    Log To Console  Verified Description, Image and Upload buttons in Back side Aadhaar upload Popup!

Click On Confirm Button And Verify Aadhaar Back Side Popup
    Wait And Click Element On Android  ${vf_A_confirmBtn}
    Verify Upload Back Side Of Aadhaar Popup Under Proof Of Address

Upload Front Side Of Aadhaar And Verify Success Message
    Wait And Click Element On Android  ${vf_A_chooseFromLib}
    Wait And Click Element On Android  ${vf_A_aadhaarFrontImg}
    Sleep  5s
    Verify Page Conatin Text  ${e_aadhaarFrontUploadSuccessMsg}
    Log To Console  Verified Front Side Aadhaar upload Success Message!

Upload Back Side Of Aadhaar And Verify Success Message
    Wait And Click Element On Android  ${vf_A_chooseFromLib}
    Wait And Click Element On Android  ${vf_A_aadhaarBackImg}
    Sleep  3s
    Verify Page Conatin Text  ${e_docUploadSuccessMsg}
    Log To Console  Uploaded Back side of Aadhaar
    Log To Console  Verified Document Uploaded Success Message!

Verify POI Uploaded Success Message
    [Arguments]  ${poiSuccessMsg}
    Verify Page Conatin Text  ${poiSuccessMsg}
    Log To Console  Verified POI Uploaded Success Message!
    
Verify POA Uploaded Success Message
    [Arguments]  ${poaSuccessMsg}
    Verify Page Conatin Text  ${poaSuccessMsg}
    Log To Console  Verified POA Uploaded Success Message!

Verify PAN field
    Verify Page Conatin Text  ${e_panNumber}
    Verify Element Visibility  ${vf_A_panTextbox}
    Log To Console  PAN field displayed!

User Enter Valid PAN Number In PAN Field
    Verify PAN field
    Input Text  ${vf_A_panTextbox}  ${e_dummyPAN}
    Log To Console  Entered PAN number!

# SL62: Upload Document button under Document Verification section and Close pop up
Verify Document Upload In Proof Of Identification Popup
    Click On Upload Document Button
    Click On Close Icon

# SL63: Select Aadhaar to upload document as Proof Of Identification
Select Aadhaar And Verify Popups
    Click On Upload Document Button
    # Recheck
    Verify Description, Upload Options And Images Under Proof Of Identification Popup
    Click On Aadhaar And Verify Popup
    Click On Confirm Button And Verify Aadhaar Popup

# SL68: Click on Upload button and Upload Front + Back side of Aadhaar card
User Upload Good Front And Back Side Of Aadhaar As Proof Of Identification And Verify
    Click On Upload Button
    Upload Front Side Of Aadhaar And Verify Success Message
    Verify Upload Back Side Of Aadhaar Popup Under Proof Of Identification
    Click On Upload Button
    Upload Back Side Of Aadhaar And Verify Success Message
    Verify POI Uploaded Success Message  ${e_aadhaarPoiUploadedSuccessMsg}
    Verify POA Uploaded Success Message  ${e_aadhaarPoaUploadedSuccessMsg}
    Verify PAN field

# SL71: Upload only Good Front side of Aadhaar as POI
Upload Front Side Of Aadhaar As Proof Of Identification And Verify
    Click On Upload Button
    Upload Front Side Of Aadhaar And Verify Success Message
    Click On Close Icon
    Verify POI Uploaded Success Message  ${e_aadhaarPoiUploadedSuccessMsg}

# SL73: Upload Good Back side Aadhaar as POA, after Front Aadhaar uploaded as POI
Upload Back Side Of Aadhaar As Proof Of Address And Verify
    Click On Upload Button
    # Recheck
    Verify Proof Of Address Popup After Front Aadhaar Uploaded As Proof Of Identification
    Click On Aadhaar Back Side And Verify Popup
    Click On Confirm Button And Verify Aadhaar Back Side Popup
    Click On Upload Button
    Upload Back Side Of Aadhaar And Verify Success Message
    Verify POA Uploaded Success Message  ${e_aadhaarPoaUploadedSuccessMsg}

Upload Good Front And Back Side Of Aadhaar
    Verify Document Upload In Proof Of Identification Popup
    Select Aadhaar And Verify Popups
    User Upload Good Front And Back Side Of Aadhaar As Proof Of Identification And Verify
    User Enter Valid PAN Number In PAN Field
    Click On Next Button

Upload Aadhaar Front As Proof Of Identification And Back side As Proof Of Address
    Upload Front Side Of Aadhaar As Proof Of Identification And Verify
    Upload Back Side Of Aadhaar As Proof Of Address And Verify
    User Enter Valid PAN Number In PAN Field
    Click On Next Button

# Plan Payment screen

Verify Plan Payment Screen
    Sleep  2s
    Verify Page Conatin Text  ${vf_A_payText}
    Log to Console  Verified Plan Payment Screen!


# SL114
Verify Sections And Navigations Under KYC Plan Payment Screen
    Verify Plan Payment Screen
    Click On Back Arrow 
    Sleep  2s
    Verify Identity Screen
    Click On Next Button
    Sleep  3s
    Click On Previous Button
    Sleep  2s
    Verify Identity Screen
    Click On Next Button
    Sleep  2s
    Verify Plan Payment Screen
    Log To Console  Verified Back arrow And Previous button- Under KYC Plan Payment Screen!
    Make Payment Using Card Information

# SL114
Make Payment Using Card Information
    Swipe By Percent  50  70  20  20  5000
    Wait And Click Element On Android  ${vf_A_slctBtn}
    Log to Console  Select Button Clicked!
    Sleep  5s
    Verify Page Conatin Text   ${e_feeTxt}
    Verify Page Conatin Text   ${e_399Txt}
    Wait And Click Element On Android  ${vf_A_phnTxtFld}
    Close Android Keyboard When Selected A Text Field
    Input Text  ${vf_A_phnFld}  ${e_dummyPhoneNo}
    Log to Console  Phone Number Entered!
    Close Android Keyboard
    Wait And Click Element On Android  ${vf_A_mailTxtFld}
    Enter Email  ${e_newAccMailId}
    Close Android Keyboard
    Log to Console  Email Id Entered!
    Wait And Click Element On Android  ${vf_A_proceedBtn}
    Sleep  2s
    Verify Page Conatin Text   ${e_cardPayment}
    Verify Page Conatin Text   ${e_upiPayment}
    Verify Page Conatin Text   ${e_netBankingPayment}
    Verify Page Conatin Text   ${e_walletPayment}
    Wait And Click Element On Android  ${vf_A_cardPayment}
    Input Text  ${vf_A_cardNumTxtFld}  ${e_cardNum}
    Log to Console  Card Number Entered!
    Wait And Click Element On Android  ${vf_A_expiryTxt}
    Input Text  ${vf_A_expiryTxtFld}  ${e_expiry}
    Log to Console  Expiry Entered!
    Wait And Click Element On Android  ${vf_A_nameTxt}
    Input Text  ${vf_A_nameTxtFld}  ${e_hldrName}
    Log to Console  Name Entered!
    Wait And Click Element On Android  ${vf_A_cvvTxt}
    Input Text  ${vf_A_cvvTxtFld}  ${e_cvv}
    Log to Console  CVV Entered!
    Wait And Click Element On Android  ${vf_A_pay399Btn}
    Log to Console  Pay Button Clicked!
    Sleep  2s
    Log Source

# Signature screen

# Dashboard Card KYC Completion