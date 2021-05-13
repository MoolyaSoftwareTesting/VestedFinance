*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Open App On Emulator
# Suite Setup  Open App On Browserstack
# Suite Setup  Launch Android App
# Suite Teardown  Quit Android Application

*** Test Cases ***

User Check Subscription Plan Details
    [Tags]  SB_01
    User Checks Plan Details


User Checks Basic Plan
    [Tags]  SB_02
    User Checks Current Plan

User Changes to Premium Subscription
    [Tags]  SB_03
    User Changes Plan To Premium

User Subscribes Using Payment Methods
    [Tags]  SB_04
    Enter Card Details For Payment
    Subscribe Basic Plan With UPI
    User Subscribes Using NetBanking
    User Subscribes Using Wallet

User Clicks On Vest Upsell To Buy
    [Tags]  SB_05
    User Clicks On Vest Upsell

Changing Payment Plan
    [Tags]  SB_full
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Basic Account
    User Clicks On Vest Upsell
    User Checks Plan Details
    User Checks Current Plan
    User Changes Plan To Premium

# Updated from below
Subscription Using Card
    [Tags]  SB_Card
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Basic Account
    User Changes Plan To Premium
    Enter Card Details For Payment

Subscription Using UPI
    [Tags]  SB_UPI
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Basic Account
    User Changes Plan To Premium
    Subscribe Basic Plan With UPI

Subscription Using NetBanking
    [Tags]  SB_NetB
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Basic Account
    User Changes Plan To Premium
    User Subscribes Using NetBanking

Subscription Using Wallet
    [Tags]  SB_Wallet
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Basic Account
    User Changes Plan To Premium
    User Subscribes Using Wallet

