*** Settings ***
Library     AppiumLibrary
Resource   ../../../AppLocators/Android/A_CommonAppLocators.robot
Resource   ../../../AppLocators/Android/A_LandingPageLocators.robot


*** Keywords ***
Landing Page Is Loaded Completely
    Wait For Element Visibility On Android  ${vf_A_continueBtn}
    Log to Console  Landing page is displayed

App logo & text is displayed at the top
    Verify Element Visibility  ${vf_A_vestedIcon}
    Verify Page Conatin Text  ${e_welcomeTxt}
    Verify Page Conatin Text  ${e_aboutVestedTxt}

Verify 3 points on Security, Compliance and Recommendations with icons are displayed
    Wait For Page Conatin Element  ${e_securityHeading}  timeout=40s
    Verify Page Conatin Text  ${e_securityTxt}
    Verify Page Conatin Text  ${e_complianceTxt}
    Verify Page Conatin Text  ${e_recommendationsTxt}
    Log to Console  Verified content!
    Verify Element Visibility  ${vf_A_securityIcon}
    Verify Element Visibility  ${vf_A_complianceIcon}
    Verify Element Visibility  ${vf_A_recommendationsIcon} 
    Log to Console  Verified all Icons!
    
Verify Heading for each point is displayed
    Verify Page Conatin Text  ${e_securityHeading}
    Verify Page Conatin Text  ${e_complianceHeading}
    Verify Page Conatin Text  ${e_recommendationsTxt}
    Log to Console  Verified all Headings!
    Log Source
    
Click On Continue Button Under Landing Screen
    Swipe By Percent  80  70  20  20  5000
    Click On Element If Visibile  ${vf_A_continueBtn}
    ${isElementVisible} =  Run Keyword And Return Status  Verify Element Visibility  ${vf_A_chromeOption}
    IF   ${isElementVisible}  
        Choose Chrome Browser
    ELSE   
        Log To Console  Running on Real/Emulator Device
    END
    

Verify Landing Page On Mobile
    Log To Console  Landing Page 
    Wait For Element Visibility On Android  ${vf_A_screenHeader}
    Verify Element And Text On Android  ${vf_A_screenHeader}  ${e_screenHeader}
    Wait And Click Element On Android  ${vf_A_continueBtn}
    
Verify Buy Sell Stock On Mobile
    # Buy
    Log To Console  BUY 
    Swipe By Percent  70  70  20  20  5000
    Swipe By Percent  70  70  20  20  5000
    Wait For Element Visibility On Android  ${vf_A_stockTwo}
    Click Element  ${vf_A_stockTwo}
    Wait For Element Visibility On Android  ${vf_A_buyBtn}
    Wait And Click Element On Android  ${vf_A_buyBtn}
    Wait For Element Visibility On Android  ${vf_A_shareInputTxt}
    Input Text  ${vf_A_shareInputTxt}  ${e_shareInputTxt}
    Wait For Element Visibility On Android  ${vf_A_previewOrderBtn}
    Wait And Click Element On Android  ${vf_A_previewOrderBtn}
    Wait And Click Element On Android  ${vf_A_placeBuyOrderBtn}
    Wait For Element Visibility On Android  ${vf_A_noBtn}
    Wait And Click Element On Android  ${vf_A_noBtn}
    Wait For Element Visibility On Android  ${vf_A_cancelBtn}
    Wait And Click Element On Android  ${vf_A_cancelBtn}
    Capture Page Screenshot
    # Sell
    Log To Console  SELL
    Swipe By Percent  70  70  20  20  5000
    Swipe By Percent  70  70  20  20  5000
    Wait For Element Visibility On Android  ${vf_A_stockOne}
    Wait And Click Element On Android  ${vf_A_stockOne}
    Wait For Element Visibility On Android  ${vf_A_sellBtn}
    Wait And Click Element On Android  ${vf_A_sellBtn}
    Wait For Element Visibility On Android  ${vf_A_shareInputTxt}
    Input Text  ${vf_A_shareInputTxt}  ${e_shareInputTxt}
    Wait For Element Visibility On Android  ${vf_A_previewOrderBtn}
    Wait And Click Element On Android  ${vf_A_previewOrderBtn}
    Wait For Element Visibility On Android  ${vf_A_placeSellOrderBtn}
    Wait And Click Element On Android  ${vf_A_placeSellOrderBtn}
    Capture Page Screenshot
    Reset Application

Logout Of Application
    Wait For Element Visibility On Android  ${vf_A_profile}
    Mouse Over  ${vf_A_profile}
    Wait And Click Element On Android  ${vf_A_Logout}
    Wait For Element Visibility On Android  ${vf_A_screenHeader}
    Verify Page Conatin Text  ${e_screenHeader}
    Verify Element And Text On Android  ${vf_A_screenHeader}  ${e_screenHeader}
