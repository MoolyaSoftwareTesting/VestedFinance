*** Settings ***
Library     AppiumLibrary


*** Keywords ***
Verify Landing Page On Mobile
    Log To Console  Landing Page 
    Wait For Element Visibility On Android  ${vf_A_screenHeader}
    Verify Element And Text On Android  ${vf_A_screenHeader}  ${e_screenHeader}
    Wait And Click Element On Android  ${vf_A_startInvestingBtn}

Sigin To Mobile Application
    # Signin
    Log To Console  Signin
    Wait For Element Visibility On Android  ${vf_A_userName}
    Input Text  ${vf_A_userName}  ${e_userName} 
    Input Text  ${vf_A_password}  ${e_password}
    Wait And Click Element On Android  ${vf_A_submitBtn} 
    Sleep  2s
    Wait For Element Visibility On Android  ${vf_A_pin}
    Input Text  ${vf_A_pin}  ${e_pin}
    Wait And Click Element On Android  ${vf_A_continueBtn}
    Sleep  5s
    
    
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