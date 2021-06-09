*** Settings ***

Library     AppiumLibrary

***Keywords***

Swip Left And Click On Aggressive
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

Verify Super Vest Header And Title Card
    Scroll Down Till Multi-Asset Class Vests
    Swip Left And Click On Aggressive
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
    Swipe By Percent   70  70   30   30  5000 
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

Verify Super Vest Graph
    Verify Page Conatin Text  ${e_max}
    Verify Page Conatin Text  ${e_5y}
    Verify Page Conatin Text  ${e_1y}
    Verify Page Conatin Text  ${e_3m}
    Verify Page Conatin Text  ${e_1m}
    Verify Page Conatin Text  ${e_1w}
    Click Text  ${e_max}
    Click Text  ${e_5y}
    Click Text  ${e_1y}
    Click Text  ${e_3m}
    Click Text  ${e_1m}
    Click Text  ${e_1w}
    Log to Console  Verified Graph values at Top!
    Swipe By Percent  70  70  50  50  5000
    Verify Page Conatin Text  ${e_comparing}
    Verify Page Conatin Text  ${e_vest}
    Verify Page Conatin Text  ${e_vbinx}
    Wait For Element Visibility On Android  ${vf_A_vbinxInfoIcon}
    Verify Element Visibility  ${vf_A_vbinxInfoIcon}
    Wait And Click Element On Android  ${vf_A_vbinxInfoIcon}
    Wait For Page Conatin Element  ${e_vestPerformnceChart}  
    Verify Page Conatin Text  ${e_vestPerformnceChart}  
    Verify Page Conatin Text  ${e_vestPerformnceChartTxt1}  
    Verify Page Conatin Text  ${e_vestPerformnceChartTxt2}
    Swipe By Percent  70  70  30  30  5000
    Verify Page Conatin Text  ${e_vestPerformnceChartTxt3}
    Verify Page Conatin Text  ${e_vestPerformnceChartTxt4}
    Swipe By Percent  70  70  30  30  5000
    Swipe By Percent  70  70  30  30  5000
    Verify Page Conatin Text  ${e_vestPerformnceChartTxt5}
    Verify Page Conatin Text  ${e_vestPerformnceChartTxt6}
    Wait And Click Element On Android  ${vf_A_multiAssetClassCloseIcon}
    Click On Back Arrow
    Log to Console  Verified Legenend Components & Info text!

Swip Right And Click On Aggressive
    FOR  ${i}  IN RANGE  1  4
        ${isElementVisible} =  Run Keyword And Return Status  Verify Page Conatin Text  ${e_aggMultiAssetVests}
        IF   ${isElementVisible}
            Verify Page Conatin Text   ${e_aggMultiAssetVests}
            Verify Page Conatin Text   ${e_aggMultiAssetVestsTxt}
            Click Text  ${e_aggMultiAssetVests}
            Exit For Loop If   ${isElementVisible}
        ELSE
            Swipe By Percent  20  50  80  50  5000
        END
    END

Click On Sell Button And Verify Sell Screen
    Wait And Click Element On Android  ${vf_A_sellBtn}
    Wait For Page Conatin Element  ${e_sellAggressive} 
    Verify Page Conatin Text   ${e_sellAggressive} 
    Verify Page Conatin Text   ${e_currentInvstmt}
    Verify Page Conatin Text   ${e_previewOrdeBtn}
    Log to Console  Verified Buying Power Screen!

Verify Purchased Super Vest
    Swip Right And Click On Aggressive
    Click On Buy Button And Verify Buy Order Screen
    Click On Back Arrow
    Click On Sell Button And Verify Sell Screen
    Click On Back Arrow

Verify Your Positions And Allocations Section
    Swipe By Percent  80  80  20  20  5000
    Wait For Page Conatin Element  ${e_yourPosition} 
    Verify Page Conatin Text   ${e_yourPosition}
    Verify Element Visibility  ${vf_A_yourPositionInfoIcon}
    Wait And Click Element On Android  ${vf_A_yourPositionInfoIcon}
    Wait For Page Conatin Element  ${e_yourPosition} 
    Verify Page Conatin Text  ${e_yourPosition}  
    Verify Page Conatin Text  ${e_currentValue}  
    Verify Page Conatin Text  ${e_currentValueTxt}
    Verify Page Conatin Text  ${e_totalInvested}  
    Verify Page Conatin Text  ${e_totalInvestedTxt}
    Verify Page Conatin Text  ${e_totalReturn}  
    Verify Page Conatin Text  ${e_totalReturnTxt1}
    Swipe By Percent  70  70  30  30  5000
    Verify Page Conatin Text  ${e_totalReturnTxt2}
    Swipe By Percent  70  70  30  30  5000
    Verify Page Conatin Text  ${e_dividendYield}  
    Verify Page Conatin Text  ${e_dividendYieldTxt}
    Wait And Click Element On Android  ${vf_A_multiAssetClassCloseIcon}
    Wait For Page Conatin Element  ${e_currentValue} 
    Verify Page Conatin Text  ${e_currentValue} 
    Verify Page Conatin Text  ${e_totalReturn}  
    Verify Page Conatin Text  ${e_totalInvested}  
    Verify Page Conatin Text  ${e_incomeYield}  
    Log to Console  Verified Your Position section!
    Swipe By Percent  70  70  50  50  5000
    Wait For Page Conatin Element  ${e_allocations} 
    Verify Page Conatin Text  ${e_allocations}  
    Verify Page Conatin Text  ${e_vestPerformnceChartTxt2}
    Verify Element Visibility  ${vf_A_allocationsInfoIcon}
    Wait And Click Element On Android  ${vf_A_allocationsInfoIcon}
    Wait For Page Conatin Element  ${e_superVestAllocations} 
    Verify Page Conatin Text  ${e_superVestAllocations}  
    Verify Page Conatin Text  ${e_superVestAllocationsTxt}  
    Wait And Click Element On Android  ${vf_A_multiAssetClassCloseIcon}
    Verify Page Conatin Text  ${e_usStock}  
    Verify Page Conatin Text  ${e_gold}  
    Verify Page Conatin Text  ${e_bonds}
    Log to Console  Verified Allocations section!

Verify About- Description
    Swipe By Percent  70  70  30  30  5000
    Verify Page Conatin Text  ${e_aboutAggressive}

            

