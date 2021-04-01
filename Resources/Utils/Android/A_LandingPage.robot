*** Settings ***

Library     AppiumLibrary
Resource   ../../../AppLocators/Android/CommonAppLocators.robot
Resource   ../../../AppLocators/Android/LandingPageLocators.robot


*** Keywords ***

Landing page is loaded completely
    Wait Until Page Contains  ${e_startInvestingTxt}  timeout=20s
    Log Source   

Vested icon is displayed at the top
    Element Should Be Visible  ${vf_A_vestedIcon}   

Text about vested is displayed below the logo
    Page Should Contain Text  ${e_welcomeTxt}   
    Page Should Contain Text  ${e_aboutVestedTxt}   

Verify 3 points on Security, Compliance and Recommendations with icons are displayed
    Wait Until Page Contains  ${e_securityHeading}   timeout=40s
    Page Should Contain Text  ${e_securityTxt}   
    Page Should Contain Text  ${e_complianceTxt}   
    Page Should Contain Text  ${e_recommendationsTxt}   
    log to Console  Verified Text part
    Element Should Be Visible  ${vf_A_securityIcon}   
    Element Should Be Visible  ${vf_A_complianceIcon}   
    Element Should Be Visible  ${vf_A_recommendationsIcon}    
    log to Console  Verified all Icons
    
Verify Heading for each point is displayed
    Page Should Contain Text  ${e_securityHeading}   
    Page Should Contain Text  ${e_complianceHeading}   
    Page Should Contain Text  ${e_recommendationsTxt}   
    log to Console  Verified all Headings
    Log Source   
    
Click on Start Investing button
    Click Text  ${e_startInvestingTxt}  exact_match=True
    
Sign in page is displayed
    Sleep  5s
    ${isElementVisible} =  Run Keyword And Return Status  Page Should Contain Text  ${e_signInAsDiffUserLinkTxt}   
    IF  ${isElementVisible}
        Wait And Click Element On Android  ${vf_A_signInAsDiffUserLink}
    ELSE
       Log to Console  Continued
    END
    Sleep  10s
    Wait Until Page Contains  ${e_signInPageTxt}
    Log to Console  Sign-in Page Verified!

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
    Click Element  ${vf_A_logout}
    Sleep  5s
    Verify Element And Text On Android  ${vf_A_screenHeader}  ${e_screenHeader}
    Sleep  5s