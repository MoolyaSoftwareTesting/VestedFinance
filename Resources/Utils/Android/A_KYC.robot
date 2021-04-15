*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Signin With Non KYC Completed User
    Enter Email  ${e_validEmail}
    Enter Password  ${e_validPassword}
    Click On Signin Button
    Verify Dashboard Screen

# Before Completion & Instruction Screen
Start KYC under Dashboard screen
    Verify Element Visibility  ${vf_A_viewAllStepsLink}
    Wait And Click Element On Android  ${vf_A_viewAllStepsLink}
    Log To Console  Clicked on View All Steps Link
    Verify Element Visibility  ${vf_A_startKYCBtn}
    Wait And Click Element On Android  ${vf_A_startKYCBtn}
    Log To Console  Clicked on Start KYC Button
    Verify Page Conatin Text  ${e_headingKYC}
    Verify Page Conatin Text  ${e_whatDoYouNeedTxt}
    Verify Page Conatin Text  ${e_howWeUseInfoTxt}
    Verify Page Conatin Text  ${e_whatElseNeedInfoTxt}
    Log To Console  Verified all sections under KYC Introduction screen!

# Basic Details Screen

# Investment Profile Screen

# Identity Screen

# Document Upload

# Plan Payment screen

# Signature screen

# Dashboard Card KYC Completion