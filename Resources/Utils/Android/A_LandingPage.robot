*** Settings ***
Library     AppiumLibrary
Resource   ../../../AppLocators/Android/A_CommonAppLocators.robot
Resource   ../../../AppLocators/Android/A_LandingPageLocators.robot


*** Keywords ***
Landing Page Is Loaded Completely
    Wait For Element Visibility On Android  ${vf_A_startInvestingBtn}
    Log Source

App logo & text is displayed at the top
    Verify Element Visibility  ${vf_A_vestedIcon}
    Verify Page Conatin Text  ${e_welcomeTxt}
    Verify Page Conatin Text  ${e_aboutVestedTxt}

Verify 3 points on Security, Compliance and Recommendations with icons are displayed
    Wait For Page Conatin Element  ${e_securityHeading}  timeout=40s
    Verify Page Conatin Text  ${e_securityTxt}
    Verify Page Conatin Text  ${e_complianceTxt}
    Verify Page Conatin Text  ${e_recommendationsTxt}
    Log to Console  Verified Text part
    Verify Element Visibility  ${vf_A_securityIcon}
    Verify Element Visibility  ${vf_A_complianceIcon}
    Verify Element Visibility  ${vf_A_recommendationsIcon} 
    Log to Console  Verified all Icons
    
Verify Heading for each point is displayed
    Verify Page Conatin Text  ${e_securityHeading}
    Verify Page Conatin Text  ${e_complianceHeading}
    Verify Page Conatin Text  ${e_recommendationsTxt}
    Log to Console  Verified all Headings
    Log Source
    
Click On Start Investing Button
    Click On Element If Visibile  ${vf_A_startInvestingBtn}

Verify Landing Page On Mobile
    Log To Console  Landing Page 
    Wait For Element Visibility On Android  ${vf_A_screenHeader}
    Verify Element And Text On Android  ${vf_A_screenHeader}  ${e_screenHeader}
    Wait And Click Element On Android  ${vf_A_startInvestingBtn}
    
Verify Buy Sell Stock On Mobile
    # Buy
    Log To Console  BUY 
    Sleep  5s
    Swipe By Percent  70  70  20  20  5000
    Sleep  1s
    Swipe By Percent  70  70  20  20  5000

    Wait For Element Visibility On Android  ${vf_A_stockTwo}
    Click Element  ${vf_A_stockTwo}
    Sleep  1s
    Wait And Click Element On Android  ${vf_A_buyBtn}
    Sleep  1s
    Wait For Element Visibility On Android  ${vf_A_shareInputTxt}
    Input Text  ${vf_A_shareInputTxt}  ${e_shareInputTxt}
    Sleep  1s
    Wait And Click Element On Android  ${vf_A_previewOrderBtn}
    Wait And Click Element On Android  ${vf_A_placeBuyOrderBtn}
    Sleep  10s
    Wait And Click Element On Android  ${vf_A_noBtn}
    Sleep  1s
    Wait And Click Element On Android  ${vf_A_cancelBtn}
    Capture Page Screenshot
    
    # Sell
    Log To Console  SELL
    Sleep  5s
    Swipe By Percent  70  70  20  20  5000
    Sleep  1s
    Swipe By Percent  70  70  20  20  5000
    Wait For Element Visibility On Android  ${vf_A_stockOne}
    Click Element  ${vf_A_stockOne}
    Sleep  1s
    Wait And Click Element On Android  ${vf_A_sellBtn}
    Sleep  1s
    Wait For Element Visibility On Android  ${vf_A_shareInputTxt}
    Input Text  ${vf_A_shareInputTxt}  ${e_shareInputTxt}
    Sleep  1s
    Wait And Click Element On Android  ${vf_A_previewOrderBtn}
    Sleep  1s
    Wait And Click Element On Android  ${vf_A_placeSellOrderBtn}
    Capture Page Screenshot
    Reset Application

Logout Of Application
    Wait For Element Visibility On Android  ${vf_A_profile}
    Mouse Over  ${vf_A_profile}
    Click Element  ${vf_A_Logout}
    Sleep  5s
    Verify Element And Text On Android  ${vf_A_screenHeader}  ${e_screenHeader}
    Sleep  5s