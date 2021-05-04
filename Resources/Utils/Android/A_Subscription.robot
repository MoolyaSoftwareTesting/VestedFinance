*** Settings ***

Library     AppiumLibrary

***Keywords***

# Normal Subscription


# Premium Subscription

Verify The Values Under Basic Plan


Verify The Values Under Premium Plan


# SB_06
Navigate To Payment Plan Screen And Verify Contents
    Swipe By Percent  70  70  40  40  5000
    Wait And Click Element On Android  ${vf_A_goPremium}
    Wait For Page Conatin Element  ${e_payText}  2s
    Verify Page Conatin Text   ${e_payText}
    Swipe By Percent  70  70  50  50  5000
    Verify Page Conatin Text   ${e_payText}
    Verify Page Conatin Text   ${e_payText}
    Verify Page Conatin Text   ${e_payText}
    Verify Page Conatin Text   ${e_payText}
    Verify Page Conatin Text   ${e_payText}
    Verify Page Conatin Text   ${e_payText}
    Verify The Values Under Basic Plan
    Verify The Values Under Premium Plan

#     Verify if the following is displayed with respective value
# - Subscription Charges
# - Account opening fee
# - Zero Commission Investing
# - Vest upfront fee
# - Withdrawal fee
# - Access to purchase additional Vests