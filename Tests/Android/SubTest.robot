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

# Additional Tests
Buy Vest Upsell With No Subscription
    [Tags]  SB_Add1
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Basic Account
    User Clicks Vest Upsell With No Subscription

Purchase Vest Upsell With Basic Subscription
    [Tags]  SB_Add2
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Basic Account
    User Checks Vest Upsell With Basic Subscription

Purchase Super Vest With Basic Subscription
    [Tags]  SB_Add3
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Basic Account
    User Checks Super Vest With Basic Subscription

Purchase Vest Upsell With Premium Subscription
    [Tags]  SB_Add4
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Checks Vest Upsell With Premium Subscription

Purchase Super Vest With Premium Subscription
    [Tags]  SB_Add5
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Checks Super Vest With Premium Subscription

User Navigates To Withdrawal With Basic Subscription 
    [Tags]  SB_Add6
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Basic Account
    User Checks Withdrawal With Basic Subscription

User Navigates To Withdrawal With Premium Subscription 
    [Tags]  SB_Add7
    [Teardown]  Rest Android Application
    User Navigates To Signin Screen
    Signin With Basic Account
    User Checks Withdrawal With Premium Subscription


Subscription Flow: Basic User Account - Withdrawal, Vest Upsell, Super Vest
    [Tags]  SB_Basic
    User Navigates To Signin Screen
    Signin With Basic Account
    User Checks Withdrawal With Basic Subscription
    User Checks Super Vest With Basic Subscription

Subscription Flow: Premium User Account - Withdrawal, Vest Upsell, Super Vest
    [Tags]  SB_Premium
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Checks Vest Upsell With Premium Subscription
    User Checks Super Vest With Premium Subscription
    User Checks Withdrawal With Premium Subscription

