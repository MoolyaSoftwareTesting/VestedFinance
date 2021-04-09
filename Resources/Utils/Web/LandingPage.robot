*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Verify Landing Page
    Log To Console  Landing Page Widegts Verfied
    Verify Element And Text  ${vf_w_screenHeader}  ${e_screenHeader}
    Click Link And Switch Window  ${vf_w_termsLink}
    Click Link And Switch Window  ${vf_w_policyLink}
    Scroll Untill View  ${vf_w_disclosureLink}
    Click Link And Switch Window  ${vf_w_disclosureLink}
    Click Link And Switch Window  ${vf_w_brochureLink} 

Sigin To Web Application
    Scroll Untill View  ${vf_w_continueBtn}
    Wait Scroll And Click Element  ${vf_w_continueBtn}
    # Signin
    Wait For Element Visibility  ${vf_w_userName}
    Input Text  ${vf_w_userName}  ${e_userName} 
    Click Element  ${vf_w_password}
    Input Text  ${vf_w_password}  ${e_password}
    Click Element  ${vf_w_submitBtn} 
    Wait For Element Visibility  ${vf_w_pin}
    Log Source
    Input Text  ${vf_w_pin}  ${e_pin}
    Click Element  ${vf_w_continueBtn}
    Sleep  10s

Verify Buy Sell Stock
    # Buy
    Log To Console  BUY 
    Sleep  5s
    Wait For Element Visibility  ${vf_w_stockOne}
    Click Element  ${vf_w_stockOne}
    Sleep  1s
    Wait Scroll And Click Element  ${vf_w_buyBtn}
    Wait For Element Visibility  ${vf_w_shareInputTxt}
    Input Text  ${vf_w_shareInputTxt}  ${e_shareInputTxt}
    Sleep  1s
    Wait Scroll And Click Element  ${vf_w_orderBtn}
    Sleep  1s
    Wait Scroll And Click Element  ${vf_w_orderBtn}
    Capture Page Screenshot
    Wait And Click   ${vf_w_closeButton}

    # Sell
    Log To Console  SELL
    Sleep  5s 
    Wait For Element Visibility  ${vf_w_stockTwo}
    Click Element  ${vf_w_stockTwo}
    Sleep  1s
    Wait Scroll And Click Element  ${vf_w_sellBtn}
    Wait For Element Visibility  ${vf_w_shareInputTxt}
    Input Text  ${vf_w_shareInputTxt}  ${e_shareInputTxt}
    Sleep  1s
    Wait Scroll And Click Element  ${vf_w_orderBtn}
    Sleep  1s
    Wait Scroll And Click Element  ${vf_w_orderBtn}
    Capture Page Screenshot
    Sleep  5s

Logout Of Application
    Wait For Element Visibility  ${vf_w_profile}
    Mouse Over  ${vf_w_profile}
    Click Element  ${vf_w_logout}
    Sleep  5s
    Verify Element And Text  ${vf_w_screenHeader}  ${e_screenHeader}
    Sleep  5s
