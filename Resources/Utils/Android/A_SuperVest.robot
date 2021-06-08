*** Settings ***

Library     AppiumLibrary

***Keywords***

Swip And Click On Aggressive
    FOR  ${i}  IN RANGE  1  4
        ${isElementVisible} =  Run Keyword And Return Status  Verify Page Conatin Text  ${e_aggMultiAssetVests}
        IF   ${isElementVisible}
            Verify Page Conatin Text   ${e_aggMultiAssetVests}
            Verify Page Conatin Text   ${e_aggMultiAssetVestsTxt}
            Click Text  ${e_aggMultiAssetVests}
            Exit For Loop If   ${isElementVisible}
        ELSE
            Swipe By Percent  80  50   20   50  5000 
        END
    END

Verify User Is Navigated To Multi-Asset Class - Aggressive
    Wait For Page Conatin Element  ${e_aggMultiAssetClass}  
    Verify Page Conatin Text   ${e_aggMultiAssetClass}
    Log to Console  Navigated to Multi-Asset Class - Aggressive

Verify User Is Navigated To Multi-Asset Class - Moderate
    Wait For Page Conatin Element  ${e_modMultiAssetClass}  
    Verify Page Conatin Text   ${e_modMultiAssetClass}
    Log to Console  Navigated to Multi-Asset Class - Moderate

Verify Super Vest Header & Title Card
    Scroll Down Till Multi-Asset Class Vests
    Swip And Click On Aggressive
    Verify User Is Navigated To Multi-Asset Class - Aggressive
    Click On Back Arrow
    Wait For Page Conatin Element  ${e_multiAssetVestsTxt}
    Log to Console  Verified Super Vest Header!  
    Verify Element Visibility  ${vf_A_multiAssetClassInfoIcon}
    Wait And Click Element On Android  ${vf_A_multiAssetClassInfoIcon}
    Wait For Page Conatin Element  ${e_multiAssetClassHeading}
    Verify Page Conatin Text  ${e_multiAssetClassHeading}
    Verify Page Conatin Text  ${e_multiAssetClassTxt}
    Wait And Click Element On Android  ${vf_A_multiAssetClassCloseIcon}
    Log to Console  Verified Info Icon next to Super Vest name!
    Verify Element Visibility  ${vf_A_aggMeterImg}
    Verify Element Visibility  ${vf_A_aggReturnsTxt}
    Verify Element Visibility  ${vf_A_aggVolatilityTxt}
    Verify Element Visibility  ${vf_A_aggIncomeYieldTxt}
    Swipe By Percent   80  50   20   50  5000 
    Verify Page Conatin Text   ${e_modMultiAssetVests}
    Verify Page Conatin Text   ${e_modMultiAssetVestsTxt}
    Verify Element Visibility  ${vf_A_modMeterImg}
    Verify Element Visibility  ${vf_A_modReturnsTxt}
    Verify Element Visibility  ${vf_A_modVolatilityTxt}
    Verify Element Visibility  ${vf_A_modIncomeYieldTxt}
    Swipe By Percent   80  50   20   50  5000 
    Swipe By Percent   80  50   20   50  5000 
    Verify Page Conatin Text   ${e_conMultiAssetVests}
    Verify Page Conatin Text   ${e_conMultiAssetVestsTxt}
    Verify Element Visibility  ${vf_A_conMeterImg}
    Verify Element Visibility  ${vf_A_conReturnsTxt}
    Verify Element Visibility  ${vf_A_conVolatilityTxt}
    Verify Element Visibility  ${vf_A_conIncomeYieldTxt}
    Log to Console  Verified Title Cards!

Navigate To Compare Vests By Clicking On Conservative Super Vest
    Verify Page Conatin Text   ${e_conMultiAssetVests}
    Click Text   ${e_conMultiAssetVests}
    Wait For Page Conatin Element  ${e_conMultiAssetClass}  
    Verify Page Conatin Text  ${e_conMultiAssetClass}
    Wait For Page Conatin Element  ${e_compareVests}  
    Click Text  ${e_compareVests}
    Wait For Page Conatin Element  ${e_comparePortfolios}  

Verify Allocations Section
    Verify Page Conatin Text  ${e_allocations}
    Verify Page Conatin Text  ${e_conMultiAssetVests}
    Verify Page Conatin Text  ${e_modMultiAssetVests}
    Verify Page Conatin Text  ${e_aggMultiAssetVests}
    Verify Page Conatin Text  ${e_allocationsTxt1}
    Verify Page Conatin Text  ${e_allocationsTxt2.1}
    Verify Page Conatin Text  ${e_allocationsTxt2.2}
    Verify Page Conatin Text  ${e_allocationsTxt3}
    Verify Page Conatin Text  ${e_allocationsTxt4}
    Verify Page Conatin Text  ${e_allocationsTxt5}
    Verify Page Conatin Text  ${e_allocationsTxt6}

Select Any Super Vests And Compare Vests
    Navigate To Compare Vests By Clicking On Conservative Super Vest
    Verify Page Conatin Text  ${e_conMultiAssetVests}
    Verify Element Visibility  ${vf_A_conMeterImgInCompare}
    Verify Page Conatin Text  ${e_modMultiAssetVests}
    Verify Element Visibility  ${vf_A_modMeterImgInCompare}
    Verify Element Visibility  ${vf_A_aggMeterImgInCompare}
    Verify Page Conatin Text  ${e_aggMultiAssetVests}
    Wait And Click Element On Android  ${vf_A_viewUnderModerate}
    Verify User Is Navigated To Multi-Asset Class - Moderate
    Click On Back Arrow
    Navigate To Compare Vests By Clicking On Conservative Super Vest
    Wait And Click Element On Android  ${vf_A_viewUnderAggressive}
    Verify User Is Navigated To Multi-Asset Class - Aggressive
    Click On Back Arrow
    Navigate To Compare Vests By Clicking On Conservative Super Vest
    Verify Page Conatin Text  ${e_1yearReturns}
    Wait And Click Element On Android  ${vf_A_1yearReturnsInfo}
    Verify Page Conatin Text  ${e_infoTxt}
    Go Back On Android
    Verify Page Conatin Text  ${e_5yearReturns}
    Wait And Click Element On Android  ${vf_A_5yearReturnsInfo}
    Verify Page Conatin Text  ${e_infoTxt}
    Go Back On Android
    Verify Page Conatin Text  ${e_allTimeReturns}
    Wait And Click Element On Android  ${vf_A_allTimeReturnsInfo}
    Verify Page Conatin Text  ${e_infoTxt}
    Go Back On Android
    Verify Page Conatin Text  ${e_volatility}
    Wait And Click Element On Android  ${vf_A_volatilityInfo}
    Verify Page Conatin Text  ${e_volatilityInfoTxt}
    Go Back On Android
    Verify Page Conatin Text  ${e_incomeYield}
    Wait And Click Element On Android  ${vf_A_incomeYieldInfo}
    Verify Page Conatin Text  ${e_incomeYieldInfoTxt}
    Go Back On Android
    Swipe By Percent  70  70  20  20  5000
    Swipe By Percent  70  70  20  20  5000
    Verify Allocations Section
    Wait And Click Element On Android  ${vf_A_multiAssetClassCloseIcon}
    Log to Console  Verified Compare Vests!

Verify Y Axis Values
    Verify Page Conatin Text  ${e_minus5%}
    Verify Page Conatin Text  ${e_0%}
    Verify Page Conatin Text  ${e_5%}
    Verify Page Conatin Text  ${e_10%}
    Verify Page Conatin Text  ${e_15%}
    Verify Page Conatin Text  ${e_20%}
    Log to Console  Verified Y axis values!

Verify X Axis Values
    Verify Page Conatin Text  ${e_jun20}
    Verify Page Conatin Text  ${e_sep20}
    Verify Page Conatin Text  ${e_dec20}
    Verify Page Conatin Text  ${e_mar20}
    Log to Console  Verified X axis values!

Click On Max And Verify Graph
    Click Text  ${e_max}
    Verify Y Axis Values
    Verify X Axis Values

Click On 5Y And Verify Graph
    Click Text  ${e_5y}


Verify Super Vest Graph
    Verify Page Conatin Text  ${e_max}
    Verify Page Conatin Text  ${e_5y}
    Verify Page Conatin Text  ${e_1y}
    Verify Page Conatin Text  ${e_3m}
    Verify Page Conatin Text  ${e_1m}
    Verify Page Conatin Text  ${e_1w}
    Log to Console  Verified Graph values at Top!
    Click On Max And Verify Graph
    Click On 5Y And Verify Graph