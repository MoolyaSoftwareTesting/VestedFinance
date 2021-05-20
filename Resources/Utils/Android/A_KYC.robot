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

Verify All Steps Under Account Status Screen Before KYC
    Verify Page Conatin Text  ${e_stepsHeading}
    Verify Page Conatin Text  ${e_step1Submit}
    Verify Page Conatin Text  ${e_step1SubmitTxtBeforeKYC}
    Verify Page Conatin Text  ${e_step2Approve}
    Verify Page Conatin Text  ${e_step2ApproveTxtBeforeKYC}
    Verify Page Conatin Text  ${e_step3FundAcc}
    Log To Console  Verified all sections under Account Status screen Before KYC!

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
    Verify All Steps Under Account Status Screen Before KYC
    Click On Done Button And Verify Screen
    Wait And Click Element On Android  ${vf_A_viewAllStepsLink}

Click On Back Arrow
    Verify Element Visibility  ${vf_A_backArrow}
    Wait And Click Element On Android  ${vf_A_backArrow}
    Log To Console  Clicked on Back arrow

Verify KYC Introduction Screen
    Sleep  3s
    Wait For Page Conatin Element  ${e_headingKYC}  5s  
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
    Go Back On Android
    ${e_letsGetToKnowYou1} =  Replace Characters  ${e_letsGetToKnowYou}  '  ’
    Verify Page Conatin Text  ${e_letsGetToKnowYou1}
    Log To Console  Verified KYC Basic Details Screen!

Click On Previous Button
    Wait And Click Element On Android  ${vf_A_previousButton}
    Log To Console  Clicked on Previous Button

Verify Navigations Under KYC Basic Details Screen
    Go Back On Android
    Click On Back Arrow 
    Verify KYC Introduction Screen
    Wait And Click Element On Android  ${vf_A_acceptAndContinueBtn}
    Sleep  2s
    Go Back On Android
    Click On Previous Button
    Verify KYC Introduction Screen
    Sleep  3s
    Wait And Click Element On Android  ${vf_A_acceptAndContinueBtn}
    Log To Console  Verified Back arrow And Previous button- Under KYC Basic Details Screen!


Enter Phone Number
    [Arguments]  ${text}
    Sleep  2s
    Go Back On Android
    Wait And Click Element On Android  ${vf_A_phoneNum}
    Go Back On Android
    Input Text  ${vf_A_phoneNum}  ${text}
    Log to Console  Entered Phone number!
    Close Android Keyboard

Select A Gender
    [Arguments]  ${gender}
    Run Keyword If    '${gender}'=='${e_maleGender}'  Click Text  ${e_maleGender}
    ...     ELSE IF   '${gender}'=='${e_femaleGender}'  Click Text  ${e_femaleGender}
    ...     ELSE  Log To Console  Invalid Data
    Log To Console  Clicked on Gender- ${gender} 

# SL48
Verify All Checkboxes
    Verify Page Conatin Text   ${e_chkBx1Txt}
    Verify Page Conatin Text   ${e_chkBx2Txt}
    Verify Page Conatin Text   ${e_chkBx3Txt}
    Verify Page Conatin Text   ${e_chkBx4Txt}
    Wait And Click Element On Android  ${vf_A_chkBx1}
    Wait And Click Element On Android  ${vf_A_chkBx2}
    Sleep  2s
    Go Back On Android 
    Wait And Click Element On Android  ${vf_A_chkBx3}
    Sleep  2s
    Go Back On Android
    Swipe By Percent  80  70  20  20  5000
    Close Android Keyboard
    Click Text  ${e_chkBx3Txt}
    Verify Element Visibility  ${vf_A_chkBx4} 
    Sleep  2s
    Wait For Element Visibility On Android  ${vf_A_chkBx4} 
    Wait And Click Element On Android  ${vf_A_chkBx4}
    Log to Console  Verified All Checkboxes
    Element Should Be Disabled  ${vf_A_chkBx1}
    Element Should Be Disabled  ${vf_A_chkBx2}
    Element Should Be Disabled  ${vf_A_chkBx3}
    Log to Console  First three Checkboxes are disabled on selecting 4th Checkbox

# SL45, SL50
User Fill All The Fields Under KYC Basic Details Screen And Verify
    Verify Navigations Under KYC Basic Details Screen
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
    Wait For Element Visibility On Android  ${vf_A_chkBx4} 
    Wait And Click Element On Android  ${vf_A_chkBx4}
    # Pending: SL48
    # Verify All Checkboxes
    Log To Console  Filled KYC Basic Details Screen!
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
    Sleep  5s
    Verify Page Conatin Text  ${e_investProfileScreenHeading}
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
    # Swipe By Percent  70  70  20  20  5000
    Sleep  5s
    Verify Page Conatin Text  ${e_primarySource}
    Log To Console  Verified Primary Source section
    Wait And Click Element On Android  ${vf_A_primarySrcDropdown}
    Sleep  3s    
    FOR  ${i}  IN RANGE  1  4
        ${isElementVisible} =  Run Keyword And Return Status  Element Should Be Visible  ${option}    
        IF   ${isElementVisible}
            Wait For Element Visibility On Android  ${option}
            Click Element  ${option}
            Log To Console  Clicked on option - ${option}
        ELSE
            Swipe By Percent  70  70  40  40  5000
        END
    END
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
    Sleep  2s
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
    Select Option Under Primary Source Dropdown  ${vf_A_primarySourceOpt1Txt}
    Select Option Under Number Of Deposits And Withdrawals  ${e_depositsAndWithdrawalsOpt1Txt}
    Select Option Under Money Deposit  ${e_moneyDepositOpt1Txt}
    Select Option Under Investments Made  ${e_investmentsMadeOpt2Txt}
    Log To Console  Filled KYC Investment Profile Screen!
    Click On Next Button

# Identity Screen

Verify Identity Screen
    Sleep  2s
    Verify Page Conatin Text  ${e_identityScreenHeading}
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
    Click Text  ${e_stsSingle}
    Click Text  ${e_stsDivorced}
    Click Text  ${e_stsMarried}
    Click Text  ${e_stsWidowed}
    Click Text  ${e_stsDomPtnr}
    Log to Console  Verified All options under Marital Status section!

# SL59
Verify Options Under Employment Type
    Verify Page Conatin Text   ${e_employmentTxt}
    Click Text  ${e_empEmployed}
    Click Text  ${e_empRtd}
    Click Text  ${e_empStdnt}
    Click Text  ${e_empSlfEmp}
    Click Text  ${e_empUnemp}
    Log to Console  Verified all options under Employment Type section!

Select Option Under Marital status
    [Arguments]  ${option}
    Run Keyword If    '${option}'=='${e_stsSingle}'  Click Text  ${e_stsSingle}
    ...     ELSE IF   '${option}'=='${e_stsDivorced}'  Click Text  ${e_stsDivorced}
    ...     ELSE IF   '${option}'=='${e_stsMarried}'  Click Text  ${e_stsMarried}
    ...     ELSE IF   '${option}'=='${e_stsWidowed}'  Click Text  ${e_stsWidowed}
    ...     ELSE IF   '${option}'=='${e_stsDomPtnr}'  Click Text  ${e_stsDomPtnr}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option} 

Select Option Under Employment Type
    [Arguments]  ${option}
    Run Keyword If    '${option}'=='${e_empEmployed}'  Click Text  ${e_empEmployed}
    ...     ELSE IF   '${option}'=='${e_empRtd}'  Click Text  ${e_empRtd}
    ...     ELSE IF   '${option}'=='${e_empStdnt}'  Click Text  ${e_empStdnt}
    ...     ELSE IF   '${option}'=='${e_empSlfEmp}'  Click Text  ${e_empSlfEmp}
    ...     ELSE IF   '${option}'=='${e_empUnemp}'  Click Text  ${e_empUnemp}
    ...     ELSE  Log To Console  Invalid Option
    Log To Console  Clicked on option - ${option} 

Verify Navigations Under KYC Identity Screen
    Click On Back Arrow 
    Verify KYC Investment Profile Screen
    Click On Next Button
    Sleep  3s
    Click On Previous Button
    Verify KYC Investment Profile Screen
    Click On Next Button
    Log To Console  Verified Back arrow And Previous button- Under KYC Identity Screen!

# SL61
User Fill All the Fields under KYC Identity Screen And Verify
    Verify Identity Screen
    Verify Navigations Under KYC Identity Screen
    Verify Options Under Marital Status
    Select Option Under Marital status  ${e_stsSingle}
    Verify Page Conatin Text   ${e_countryTxt}
    Log to Console  Country Text Verified!
    Verify Page Conatin Text   ${e_India}
    Verify Page Conatin Text   ${e_Other}
    Log to Console  Verified Country section and Options!
    Swipe By Percent  60  70  20  20  5000
    Verify Options Under Employment Type
    Select Option Under Employment Type  ${e_empStdnt}
    Swipe By Percent  70  70  20  20  5000
    Verify Page Conatin Text   ${e_docVerTxt}
    Log to Console  Document Verification section Text Verified!
    Wait And Click Element On Android  ${vf_A_verChkBx}
    Log to Console  Confirm Checkbox Clicked!

# Document Upload

Verify Description, Upload Options And Images Under POI Popup
    Verify Page Conatin Text  ${e_docUploadPOIHeading}
    Verify Page Conatin Text  ${e_docUploadPOIDesc1}
    Verify Page Conatin Text  ${e_docUploadDesc2}
    Log To Console  Verified Heading and Description under Proof Of Identification Popup!
    Verify Element Visibility  ${vf_A_aadhaarPOIOption}
    Verify Element Visibility  ${vf_A_aadhaarPOIOptionImg}
    Verify Element Visibility  ${vf_A_driversLicensePOIOption}
    Verify Element Visibility  ${vf_A_driversLicenseOptionImg}
    Swipe By Percent  85  85  30  30  5000
    Verify Element Visibility  ${vf_A_panCardOption}
    Verify Element Visibility  ${vf_A_panCardPOIOptionImg}
    Swipe By Percent  85  85  30  30  5000
    Verify Element Visibility  ${vf_A_passportOption}
    Verify Element Visibility  ${vf_A_passportPOIOptionImg}
    Log To Console  Verified all Proof Of Identification upload options & their images!

Click On Close Icon
    Wait And Click Element On Android  ${vf_A_CloseIcon}
    Log To Console  Clicked on Close icon
    ${isPopupVisible} =  Run Keyword And Return Status  Verify Page Conatin Text  ${e_docUploadPOIHeading}
    IF   ${isPopupVisible}  
        Log To Console  Proof Of Identification Popup is Not Closed!
    ELSE   
        Log To Console  Proof Of Identification Popup Closed!
    END

Verify POA Popup After Front Aadhaar Uploaded As POI
    Verify Page Conatin Text  ${e_docUploadPOAHeading}
    Verify Page Conatin Text  ${e_docUploadPOADesc1}
    Log To Console  Verified Heading and Description under Proof Of Address Popup!
    Verify Element Visibility  ${vf_A_backAadhaarPOAOption}
    Verify Element Visibility  ${vf_A_backAadhaarPOAOptionImg}
    Verify Element Visibility  ${vf_A_bankStmtPOAOption}
    Verify Element Visibility  ${vf_A_bankStmtPOAOptionImg}
    Swipe By Percent  85  85  30  30  5000
    Verify Element Visibility  ${vf_A_driverLicenseFsPOAOption}
    Verify Element Visibility  ${vf_A_driverLicenseFsPOAOptionImg}
    Log To Console  Verified all Proof Of Address upload options & their images!

Verify POA Popup After Front Drivers License Uploaded As POI
    Verify Page Conatin Text  ${e_docUploadPOAHeading}
    Verify Page Conatin Text  ${e_docUploadPOADesc1}
    Log To Console  Verified Heading and Description under Proof Of Address Popup!
    Verify Element Visibility  ${vf_A_AadhaarPOAOption}
    Verify Element Visibility  ${vf_A_AadhaarPOAOptionImg}
    Verify Element Visibility  ${vf_A_bankStmtPOAOption}
    Verify Element Visibility  ${vf_A_bankStmtPOAOptionImg}
    Swipe By Percent  85  85  30  30  5000
    Verify Element Visibility  ${vf_A_driverLicenseBsPOAOption}
    Verify Element Visibility  ${vf_A_driverLicenseBsPOAOptionImg}
    Log To Console  Verified all Proof Of Address upload options & their images!

Verify Confirm Button Is Displayed
    Verify Element Visibility  ${vf_A_confirmBtn}

Verify Select Another Document Button Is Displayed
    Verify Element Visibility  ${vf_A_selectAnotherDocBtn}

Verify Image Is Displayed In Popup
    Verify Element Visibility  ${vf_A_imgInPopUp}

Verify Upload Button Is Displayed
    Verify Element Visibility  ${vf_A_uploadBtn}

Click On Confirm Button
    Wait And Click Element On Android  ${vf_A_confirmBtn}
    
Click On Upload Button
    Wait And Click Element On Android  ${vf_A_uploadBtn}
    Log To Console  Clicked on Upload Button

Click On Aadhaar As POI And Verify Popup
    Wait And Click Element On Android  ${vf_A_aadhaarPOIOption}
    Verify Page Conatin Text  ${e_docUploadVerifyPOIHeading}
    Verify Page Conatin Text  ${e_aadhaarPOIDesc}
    Log To Console  Proof Of Identification Popup for Aadhaar id displayed
    Verify Page Conatin Text  ${e_docUploadDesc2}
    Verify Image Is Displayed In Popup
    Log To Console  Verified Heading, Image and Description!
    Verify Confirm Button Is Displayed
    Verify Select Another Document Button Is Displayed
    Log To Console  Verified Confirm and Select Another Document button!

Click On Drivers License As POI And Verify Popup
    Wait And Click Element On Android  ${vf_A_driversLicensePOIOption}
    Verify Page Conatin Text  ${e_docUploadVerifyPOIHeading}
    Verify Page Conatin Text  ${e_driversLicensePOIDesc}
    Log To Console  Proof Of Identification Popup for Drivers License displayed
    Verify Page Conatin Text  ${e_docUploadDesc2}
    Verify Image Is Displayed In Popup
    Log To Console  Verified Heading, Image and Description!
    Verify Confirm Button Is Displayed
    Verify Select Another Document Button Is Displayed
    Log To Console  Verified Confirm and Select Another Document button!

Click On Aadhaar Back Side As POA And Verify Popup
    Wait And Click Element On Android  ${vf_A_backAadhaarPOAOption}
    Verify Page Conatin Text  ${e_docUploadVerifyPOAHeading}
    Verify Page Conatin Text  ${e_aadhaarBackSidePOADesc}
    Log To Console  Proof Of Address Popup for Aadhaar back side displayed
    Verify Page Conatin Text  ${e_docUploadDesc2}
    Verify Image Is Displayed In Popup
    Log To Console  Verified Heading, Image and Description!
    Verify Confirm Button Is Displayed
    Verify Select Another Document Button Is Displayed
    Log To Console  Verified Confirm and Select Another Document button!

Click On Bank Statement As POA And Verify Popup
    Wait And Click Element On Android  ${vf_A_bankStmtPOAOption}
    Verify Page Conatin Text  ${e_docUploadVerifyPOAHeading}
    Verify Page Conatin Text  ${e_bankStmtPOADesc}
    Log To Console  Proof Of Address Popup for Bank Statement displayed
    Verify Page Conatin Text  ${e_docUploadDesc2}
    Verify Image Is Displayed In Popup
    Log To Console  Verified Heading, Image and Description!
    Verify Confirm Button Is Displayed
    Verify Select Another Document Button Is Displayed
    Log To Console  Verified Confirm and Select Another Document button!

Click On Back Side Of Drivers License As POA And Verify Popup
    Wait And Click Element On Android  ${vf_A_driverLicenseBsPOAOption}
    Verify Page Conatin Text  ${e_docUploadVerifyPOAHeading}
    Verify Page Conatin Text  ${e_driversLicenseBsPOADesc}
    Log To Console  Proof Of Address Popup for Bank Statement displayed
    Verify Page Conatin Text  ${e_docUploadDesc2}
    Verify Image Is Displayed In Popup
    Log To Console  Verified Heading, Image and Description!
    Verify Confirm Button Is Displayed
    Verify Select Another Document Button Is Displayed
    Log To Console  Verified Confirm and Select Another Document button!

Click On Confirm Button And Verify Aadhaar Popup
    Click On Confirm Button
    Verify Page Conatin Text  ${e_aadhaarPOIPopupHeading}
    Log To Console  Document Upload- Please upload your Aadhaar Popup is displayed
    Verify Page Conatin Text  ${e_docReqUploadPopupDesc}
    Verify Page Conatin Text  ${e_docReqPOIPopupP1}
    Verify Page Conatin Text  ${e_docReqPOIPopupP2}
    Verify Page Conatin Text  ${e_aadhaarDocReqPOIPopupP3}
    Verify Page Conatin Text  ${e_docReqPOIPopupP3}
    Verify Image Is Displayed In Popup
    Log To Console  Verified Heading, Image and Document Requirement Points!
    Verify Upload Button Is Displayed
    Verify Select Another Document Button Is Displayed
    Log To Console  Verified Upload and Select Another Document button!

Click On Confirm Button And Verify Drivers License Popup
    Click On Confirm Button
    Verify Page Conatin Text  ${e_driversLicensePOIPopupHeading}
    Log To Console  Document Upload- Please upload Front side of Drivers License Popup is displayed
    Verify Page Conatin Text  ${e_docReqUploadPopupDesc}
    Verify Page Conatin Text  ${e_docReqPOIPopupP1}
    Verify Page Conatin Text  ${e_docReqPOIPopupP2}
    Verify Page Conatin Text  ${e_docReqPOIPopupP3}
    Verify Image Is Displayed In Popup
    Log To Console  Verified Heading, Image and Document Requirement Points!
    Verify Upload Button Is Displayed
    Verify Select Another Document Button Is Displayed
    Log To Console  Verified Upload and Select Another Document button!

Verify Upload Back Side Of Aadhaar Popup Under POI
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupHeading}
    Verify Page Conatin Text  ${e_docReqUploadPopupDesc}
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupP1}
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupP2}
    Verify Image Is Displayed In Popup
    Verify Upload Button Is Displayed
    Log To Console  Verified Description, Image and Upload button in Back side Aadhaar upload Popup!

Verify Upload Back Side Of Drivers License Popup Under POI
    Verify Page Conatin Text  ${e_driversLicenseBackUploadPopupHeading}
    Verify Page Conatin Text  ${e_docReqUploadPopupDesc}
    Verify Page Conatin Text  ${e_clearPictureP1}
    Verify Image Is Displayed In Popup
    Verify Upload Button Is Displayed
    Log To Console  Verified Description, Image and Upload button in Back side Drivers License upload Popup!

Verify Upload Back Side Of Aadhaar Popup Under POA
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupHeading}
    Verify Page Conatin Text  ${e_docReqUploadPopupDesc}
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupP1}
    Verify Page Conatin Text  ${e_aadhaarBackUploadPopupP2}
    Verify Image Is Displayed In Popup
    Verify Upload Button Is Displayed
    Verify Select Another Document Button Is Displayed
    Log To Console  Verified Description, Image and Upload buttons in Back side Aadhaar upload Popup!

Verify Upload Bank Statement Popup Under POA
    Verify Page Conatin Text  ${e_bankStmtUploadPopupHeading}
    Verify Page Conatin Text  ${e_docReqUploadPopupDesc}
    Verify Page Conatin Text  ${e_bankStmtUploadPopupP1}
    Verify Page Conatin Text  ${e_bankStmtUploadPopupP2}
    Verify Page Conatin Text  ${e_bankStmtUploadPopupP3}
    Verify Image Is Displayed In Popup
    Verify Upload Button Is Displayed
    Verify Select Another Document Button Is Displayed
    Log To Console  Verified Description, Image and Upload buttons in Bank Statement upload Popup!

Verify Upload Back Side Of Drivers License Popup Under POA
    Verify Page Conatin Text  ${e_driversLicenseBsUploadPopupHeading}
    Verify Page Conatin Text  ${e_docReqUploadPopupDesc}
    Verify Page Conatin Text  ${e_clearPictureP1}
    Verify Image Is Displayed In Popup
    Verify Upload Button Is Displayed
    Verify Select Another Document Button Is Displayed
    Log To Console  Verified Description, Image and Upload buttons in Back Side Of Drivers License upload Popup!

Upload Front Side Of Aadhaar And Verify Success Message
    Wait And Click Element On Android  ${vf_A_chooseFromLib}
    Wait And Click Element On Android  ${vf_A_aadhaarFrontImg}
    Wait Until Page Contains  ${e_aadhaarFrontUploadSuccessMsg}  10s
    Verify Page Conatin Text  ${e_aadhaarFrontUploadSuccessMsg}
    Log To Console  Verified Front Side Aadhaar uploaded Success Message!

Upload Back Side Of Aadhaar And Verify Success Message
    Wait And Click Element On Android  ${vf_A_chooseFromLib}
    Wait And Click Element On Android  ${vf_A_aadhaarBackImg}
    Verify Page Conatin Text  ${e_docUploadSuccessMsg} 
    Verify Element Visibility  ${vf_A_docUploadSuccessMsg}
    Log To Console  Uploaded Back side of Aadhaar
    Log To Console  Verified Document Uploaded Success Message!

Upload Front Side Of Drivers License And Verify Success Message
    Wait And Click Element On Android  ${vf_A_chooseFromLib}
    Wait And Click Element On Android  ${vf_A_driversLicenseFrontImg}
    Wait Until Page Contains  ${e_driversLicenseFrontUploadSuccessMsg}  5s
    Verify Page Conatin Text  ${e_driversLicenseFrontUploadSuccessMsg}
    Log To Console  Verified Front Side Drivers License uploaded Success Message!

Upload Full Aadhaar As POI And Verify Success Message
    Wait And Click Element On Android  ${vf_A_chooseFromLib}
    Wait And Click Element On Android  ${vf_A_aadhaarFullImg}
    Verify Page Conatin Text  ${e_docUploadSuccessMsg} 
    Verify Element Visibility  ${vf_A_docUploadSuccessMsg}
    Log To Console  Uploaded Full Aadhaar
    Log To Console  Verified Document Uploaded Success Message!

Upload Bank Statement As POA And Verify Success Message
    Wait And Click Element On Android  ${vf_A_chooseFromLib}
    Wait And Click Element On Android  ${vf_A_bankStmtImg}
    Verify Page Conatin Text  ${e_docUploadSuccessMsg}
    Verify Element Visibility  ${vf_A_docUploadSuccessMsg}
    Log To Console  Uploaded Bank Statement
    Log To Console  Verified Document Uploaded Success Message!

Upload Back Side Of Drivers License And Verify Success Message
    Wait And Click Element On Android  ${vf_A_chooseFromLib}
    Wait And Click Element On Android  ${vf_A_driversLicenseBackImg}
    Verify Page Conatin Text  ${e_docUploadSuccessMsg}
    Verify Element Visibility  ${vf_A_docUploadSuccessMsg}
    Log To Console  Uploaded Back Side Of Drivers License
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

Enter Valid PAN Number In PAN Field
    Verify PAN field
    Input Text  ${vf_A_panTextbox}  ${e_dummyPAN}
    Log To Console  Entered PAN number!

# SL62
Verify Document Upload In POI Popup
    Click On Upload Document Button
    Click On Close Icon

# SL63
Select Aadhaar As POI And Verify Popups
    Click On Upload Document Button
    Verify Description, Upload Options And Images Under POI Popup
    Swipe By Percent  30  30  85  85  5000
    Click On Aadhaar As POI And Verify Popup
    Click On Confirm Button And Verify Aadhaar Popup

# SL77 
Select Drivers License As POI And Verify Popups
    Click On Upload Document Button
    Verify Description, Upload Options And Images Under POI Popup
    Swipe By Percent  30  30  85  85  5000
    Click On Drivers License As POI And Verify Popup
    Click On Confirm Button And Verify Drivers License Popup

# SL68
Upload Front And Back Side Of Aadhaar As POI And Verify
    Click On Upload Button
    Upload Front Side Of Aadhaar And Verify Success Message
    Verify Upload Back Side Of Aadhaar Popup Under POI
    Click On Upload Button
    Upload Back Side Of Aadhaar And Verify Success Message
    Verify POI Uploaded Success Message  ${e_aadhaarPOIUploadedSuccessMsg}
    Verify POA Uploaded Success Message  ${e_aadhaarPOAUploadedSuccessMsg}
    Verify PAN field

# SL71
Upload Front Side Of Aadhaar As POI And Verify
    Click On Upload Button
    Upload Front Side Of Aadhaar And Verify Success Message
    Click On Close Icon
    Verify POI Uploaded Success Message  ${e_aadhaarPOIUploadedSuccessMsg}

# SL79
Upload Front Side Of Drivers License As POI And Verify
    Click On Upload Button
    Upload Front Side Of Drivers License And Verify Success Message
    Click On Close Icon
    Verify POI Uploaded Success Message  ${e_driversLicensePOIUploadedSuccessMsg}

# SL81
Upload Front And Back Side Of Drivers License As POI And Verify
    Click On Upload Button
    Upload Front Side Of Drivers License And Verify Success Message
    Verify Upload Back Side Of Drivers License Popup Under POI
    Click On Upload Button
    Upload Back Side Of Drivers License And Verify Success Message
    Verify POI Uploaded Success Message  ${e_driversLicensePOIUploadedSuccessMsg}
    Verify POA Uploaded Success Message  ${e_driversLicensePOAUploadedSuccessMsg}
    Verify PAN field

# SL65
Upload Full Aadhaar As POI And Verify
    Click On Upload Button
    Upload Full Aadhaar As POI And Verify Success Message
    Verify POI Uploaded Success Message  ${e_aadhaarPOIUploadedSuccessMsg}
    Verify POA Uploaded Success Message  ${e_aadhaarPOAUploadedSuccessMsg}
    Verify PAN field

# SL73
Upload Back Side Of Aadhaar As POA And Verify
    Click On Upload Button
    Verify POA Popup After Front Aadhaar Uploaded As POI
    Swipe By Percent  30  30  85  85  5000
    Click On Aadhaar Back Side As POA And Verify Popup
    Click On Confirm Button
    Verify Upload Back Side Of Aadhaar Popup Under POA
    Click On Upload Button
    Upload Back Side Of Aadhaar And Verify Success Message
    Verify POA Uploaded Success Message  ${e_aadhaarPOAUploadedSuccessMsg}
    Verify PAN field

# SL76
Upload Bank Statement As POA And Verify
    Click On Upload Button
    Verify POA Popup After Front Aadhaar Uploaded As POI
    Click On Bank Statement As POA And Verify Popup
    Click On Confirm Button
    Verify Upload Bank Statement Popup Under POA
    Click On Upload Button
    Upload Bank Statement As POA And Verify Success Message
    Verify POA Uploaded Success Message  ${e_bankStmtPOAUploadedSuccessMsg}
    Verify PAN field

# SL80
Upload Back Side Of Drivers License As POA And Verify
    Click On Upload Button
    Verify POA Popup After Front Drivers License Uploaded As POI
    Click On Back Side Of Drivers License As POA And Verify Popup
    Click On Confirm Button
    Verify Upload Back Side Of Drivers License Popup Under POA
    Click On Upload Button
    Upload Back Side Of Drivers License And Verify Success Message
    Verify POA Uploaded Success Message  ${e_driversLicensePOAUploadedSuccessMsg}
    Verify PAN field

Upload Front And Back Side Of Aadhaar As POI
    Verify Document Upload In POI Popup
    Select Aadhaar As POI And Verify Popups
    Upload Front And Back Side Of Aadhaar As POI And Verify
    Enter Valid PAN Number In PAN Field
    Log To Console  Filled KYC Identity Screen!
    Click On Next Button

Upload Aadhaar Front As POI And Back side As POA
    Select Aadhaar As POI And Verify Popups
    Upload Front Side Of Aadhaar As POI And Verify
    Upload Back Side Of Aadhaar As POA And Verify
    User Enter Valid PAN Number In PAN Field
    Click On Next Button

Upload Full Aadhaar As POI
    Select Aadhaar As POI And Verify Popups
    Upload Full Aadhaar As POI And Verify
    Enter Valid PAN Number In PAN Field
    Log To Console  Filled KYC Identity Screen!
    Click On Next Button

Upload Aadhaar Front As POI And Bank Statement As POA
    Select Aadhaar As POI And Verify Popups
    Upload Front Side Of Aadhaar As POI And Verify
    Upload Bank Statement As POA And Verify
    User Enter Valid PAN Number In PAN Field
    Click On Next Button

Upload Drivers License Front As POI And Back side As POA
    Select Drivers License As POI And Verify Popups
    Upload Front Side Of Drivers License As POI And Verify
    Upload Back Side Of Drivers License As POA And Verify
    User Enter Valid PAN Number In PAN Field
    Click On Next Button

Upload Front And Back Side Of Drivers License As POI
    Select Drivers License As POI And Verify Popups
    Upload Front And Back Side Of Drivers License As POI And Verify
    Enter Valid PAN Number In PAN Field
    Log To Console  Filled KYC Identity Screen!
    Click On Next Button


# Plan Payment screen

Verify Plan Payment Screen
    Sleep  5s
    Verify Page Conatin Text  ${vf_A_payText}
    # Verify Element Visibility  ${vf_A_planPymntToggleBtn}
    Log to Console  Verified Plan Payment Screen!

# SL51: Verify if Previous button and Back arrow works
Verify Navigations Under KYC Plan Payment Screen
    Click On Back Arrow 
    Sleep  2s
    Verify Identity Screen
    Click On Next Button
    Sleep  3s
    Click On Previous Button
    Sleep  3s
    Verify Identity Screen
    Click On Next Button
    Sleep  2s
    Verify Plan Payment Screen
    Log To Console  Verified Back arrow And Previous button- Under KYC Plan Payment Screen!

Enter Phone Number And Email For Payment
    Sleep  5s
    # Go Back On Android
    Wait For Page Conatin Element  ${e_feeTxt}  10s
    Verify Page Conatin Text   ${e_feeTxt}
    Verify Page Conatin Text   ${e_399Txt}
    Log To Console  Verified Account opening Fee!
    Wait And Click Element On Android  ${vf_A_phnTxtFld}
    Sleep  3s
    Go Back On Android
    Input Text  ${vf_A_phnFld}  ${e_dummyPhoneNo}
    Log to Console  Phone Number Entered!
    Sleep  3s
    Go Back On Android
    Wait And Click Element On Android  ${vf_A_mailTxtFld}
    Go Back On Android
    Input Text  ${vf_A_mailFld}  ${e_newAccMailId}
    Log to Console  Email Id Entered!
    Go Back On Android
    Wait And Click Element On Android  ${vf_A_proceedBtn}

Enter Card Details For Payment
    Verify Page Contains Element On Android  ${vf_A_cardPaymentOpt}
    Verify Page Contains Element On Android  ${vf_A_upiPaymentOpt}
    Verify Page Contains Element On Android  ${vf_A_netBankingPaymentOpt}
    Verify Page Contains Element On Android  ${vf_A_walletPaymentOpt}
    Log to Console  Verified all Payment options!
    Wait And Click Element On Android  ${vf_A_cardPaymentOpt}
    Click On Element If Visibile  ${vf_A_skipSavedCardLink}
    Sleep  3s
    Go Back On Android
    Input Text  ${vf_A_cardNumTxtFld}  ${e_cardNum}
    Log to Console  Card Number Entered!
    Wait And Click Element On Android  ${vf_A_expiryTxt}
    Input Text  ${vf_A_expiryTxtFld}  ${e_expiry}
    Log to Console  Expiry Entered!
    Sleep  2s
    Go Back On Android
    Wait And Click Element On Android  ${vf_A_nameTxt}
    Sleep  3s
    Go Back On Android
    Sleep  2s
    Input Text  ${vf_A_nameTxtFld}  ${e_hldrName}
    Log to Console  Name Entered!
    Wait And Click Element On Android  ${vf_A_cvvTxt}
    Input Text  ${vf_A_cvvTxtFld}  ${e_cvv}
    Log to Console  CVV Entered!
    Wait And Click Element On Android  ${vf_A_rememberCardCheckbox}
    Wait And Click Element On Android  ${vf_A_pay399Btn}
    Log to Console  Pay Button Clicked!

# SL114
Make Payment Using Card Information
    Swipe By Percent  50  70  20  20  5000
    Wait And Click Element On Android  ${vf_A_slctBtn}
    Log to Console  Clicked on Select Button!
    Sleep  5s
    Enter Phone Number And Email For Payment
    Enter Card Details For Payment
    Sleep  5s
    Click On Element If Visibile  ${vf_A_skipSavingCardLink}
    Wait And Click Element On Android  ${vf_A_successBtn}
    Log to Console  Successfully Completed the Payment Using Card!

# SL114
Verify Sections And Navigations Under KYC Plan Payment Screen
    Sleep  2s
    Verify Plan Payment Screen
    Verify Navigations Under KYC Plan Payment Screen
    Make Payment Using Card Information

# Signature screen

Verify Signature Screen
    Sleep  5s
    Verify Page Conatin Text  ${e_signatureScreenHeading}
    Log to Console  Verified Signature Screen!

Verify Navigations Under KYC Signature Screen
    Click On Back Arrow 
    Verify Plan Payment Screen
    Click On Next Button
    Sleep  3s
    Click On Previous Button
    Verify Plan Payment Screen
    Click On Next Button
    Log To Console  Verified Back arrow And Previous button- Under KYC Signature Screen!

Verify Tax Form Information Section And Link
    Verify Page Conatin Text  ${e_taxFormInfoHeading}
    Verify Page Conatin Text  ${e_taxFormInfoDesc}
    Click Text  ${e_taxFormInfoHeading}
    Verify Page Conatin Text  ${e_taxFormInfoPopupHeading}
    Wait And Click Element On Android  ${vf_A_CloseIcon}
    Log to Console  Verified Tax Form Information Section And Link!

Verify DriveWealths Agreements Section And Link
    Verify Page Conatin Text  ${e_driveWealthHeading}
    Verify Page Conatin Text  ${e_driveWealthDesc}
    Click Text  ${e_driveWealthHeading}
    Sleep  3s
    Verify Page Conatin Text  ${e_driveWealthScreen}
    Go Back On Android
    Log to Console  Verified DriveWealths Agreements Section And Link!

Verify Esign Agreement Link
    Verify Page Conatin Text  ${e_esignAgreement}
    Click Text  ${e_esignAgreement}
    Verify Page Conatin Text  ${e_esignAgreementPopupHeading}
    Wait And Click Element On Android  ${vf_A_CloseIcon}
    Log to Console  Verified Esign Agreement Link!

Verify Advisory Agreement Link
    Verify Page Conatin Text  ${e_advisoryAgreement}
    Click Text  ${e_advisoryAgreement}
    Sleep  3s
    Verify Page Conatin Text  ${e_advisoryAgreementPdf}
    Go Back On Android
    Log to Console  Verified Advisory Agreement Link!

Verify DriveWealths Privacy Policy Section And Link
    Verify Page Conatin Text  ${e_privacyPolicy}
    Wait And Click Element On Android  ${vf_A_privacyCheckbox}
    Log to Console  Verified and Clicked on DriveWealths Privacy Policy Checkbox!

Verify Signature Acknowledge Section
    Verify Page Conatin Text  ${e_signatureAcknowledge}
    Input Text  ${vf_A_userName}  ${e_fullNameForSignature}
    Log To Console  Verified and Entered full name as Signature!    

Verify All Sections And Navigations Under KYC Signature Screen
    Verify Signature Screen
    Verify Navigations Under KYC Signature Screen
    Verify Element Visibility  ${vf_A_terms&ConditionsTxt}
    Verify Tax Form Information Section And Link
    Verify DriveWealths Agreements Section And Link
    Verify Esign Agreement Link
    Verify Advisory Agreement Link
    Swipe By Percent  70  70  20  20  5000
    Verify DriveWealths Privacy Policy Section And Link
    Verify Signature Acknowledge Section
    Click On Next Button

# Dashboard Card- KYC Completion
Verify Steps Under Account Status Screen After KYC Completion
    Sleep  3s
    Verify Page Conatin Text  ${e_stepsHeading}
    Verify Page Conatin Text  ${e_step1Submit}
    Verify Page Conatin Text  ${e_step1SubmitTxtAfterKYC}
    Verify Page Conatin Text  ${e_step2Approve}
    Verify Page Conatin Text  ${e_step2ApproveTxtAfterKYC}
    Verify Page Conatin Text  ${e_step3FundAcc}
    Log To Console  Verified all sections under Account Status screen After KYC Completion!
    Click On Done Button And Verify Screen