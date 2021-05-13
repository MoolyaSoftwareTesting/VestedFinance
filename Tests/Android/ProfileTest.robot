*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot

Suite Setup  Open App On Emulator
# Suite Setup  Open App On Browserstack
# Suite Setup  Launch Android App
# Suite Teardown  Quit Android Application

*** Test Cases ***
# Profile Options
User Opens Profile
    [Tags]  PN_01-10
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Clicks Profile Button 

# History
User Checks Tax Documents
    [Tags]  Tax_docs
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Checks Tax Documents Yearwise

# Help
User Navigates to FAQ
    [Tags]  PN_31
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Clicks FAQ Under Help

User Navigates to Email Us
    [Tags]  PN_33
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Clicks Email Us Under Help

User Navigates to Message Us
    [Tags]  PN_33
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Clicks Message Us Under Help

# Account
User Navigates to Manage Plan
    [Tags]  PN_37
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Clicks Manage Plan Under Account

User Navigates to Investment Profile
    [Tags]  PN_41
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Clicks Investment Profile Under Account

User Navigates to Security
    [Tags]  PN_43
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Clicks Security Under Account

User Changes To Premium Plan
    [Tags]  PN_46
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Clicks Go Premium Under Account

User Logs Out From Application
    [Tags]  PN_47
    User Navigates To Signin Screen
    Signin With Valid Credentials - Funded Account
    User Logs Out From The App