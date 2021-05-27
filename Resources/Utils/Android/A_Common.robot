*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     AppiumLibrary
Library     String
Resource   ../../../AppLocators/Android/A_CommonAppLocators.robot
Resource   ../../../AppLocators/Android/A_SignInLocators.robot
Resource   ../../../AppLocators/Android/A_SignUpLocators.robot
Resource   ../../../AppLocators/Android/A_ForgotPasswordLocators.robot
Resource   ../../../AppLocators/Android/A_KYCLocators.robot
Resource   ../../../AppLocators/Android/A_DashboardLocators.robot
Resource   ../../../AppLocators/Android/A_ProfileLocators.robot
Resource   ../../../AppLocators/Android/A_SubscriptionLocators.robot
Resource   ../../../AppLocators/Android/A_FundTransferLocators.robot

*** Keywords ***

Launch Android App
    Run Keyword If    '${environmentToRunTest}'=='${e_realDevice}'  Open App On Real Device
    ...     ELSE IF   '${environmentToRunTest}'=='${e_browserstackDevice}'  Open App On Browserstack

Open App On Browserstack
    Open Application  ${remote_URL}  app=${appURL}  name=${sessionName}   build=RobotFramework    platformName=Android    os_version=9.0    device=Google Pixel 3a   
    #browserstack.uploadMedia=["media://d11edf0b84008a815459c9fb26f87e91ea2c06ef","media://62eb209d80004ea7f2d3cb460900e409f3c8bd45"]
    Landing Page Is Loaded Completely

Open App On Real Device
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform_version}  deviceName=${device}  automationName=${appium}  appActivity=${app_activity}  appPackage=${app_package}
    Landing Page Is Loaded Completely

Open App On Emulator
    Open Application  ${server}  platformName=${platform}   deviceName=${emulator}   appPackage=${app_package}   appActivity=${app_activity}  automationName=Uiautomator2
    Landing Page Is Loaded Completely

Verify Element And Text On Android
    [Arguments]  ${element}  ${text}
    Run Keyword And Continue On Failure  Element Should Contain Text  ${element}  ${text}

Wait For Element Visibility On Android 
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  timeout=20

Wait And Click Element On Android
    [Arguments]  ${element}
    Wait For Element Visibility On Android  ${element}
    Click Element  ${element}

Wait And Verify Element And Text On Android
    [Arguments]  ${element}  ${text}
    Wait For Element Visibility On Android  ${element}
    Verify Element And Text On Android  ${element}  ${text}    

Get Json Values
    [Arguments]  ${jsonPath}  ${jsonFilePath}
    ${jsonFile}  Load JSON From File  ${jsonFilePath}
    ${jsonValue}  Get Value From Json  ${jsonFile}  ${jsonPath}
    [Return]  ${jsonValue}

Verify Page Contains Element On Android
    [Arguments]  ${element}
    Wait For Element Visibility On Android  ${element}
    Run Keyword And Continue On Failure  Page Should Contain Element  ${element}

Scroll Down On Android
    [Arguments]  ${element}
    Scroll Down  ${element}

Get Json Values On Android
    [Arguments]  ${jsonPath}  ${jsonFilePath}
    ${jsonFile}  Load JSON From File  ${jsonFilePath}
    ${jsonValue}  Get Value From Json  ${jsonFile}  ${jsonPath}
    [Return]  ${jsonValue}

Verify Widgets And Title
    [Arguments]  ${label}  ${labelText}  ${title}  ${titleText}
    Wait And Verify Element And Text On Android  ${label}  ${labelText}
    Wait And Click Element On Android  ${label}
    Wait And Verify Element And Text On Android  ${title}  ${titleText}

Verify Element Visibility
    [Arguments]  ${element}  
    Wait For Element Visibility On Android  ${element} 
    Element Should Be Visible  ${element}  

Verify Page Conatin Text 
    [Arguments]  ${text}
    Sleep  2s
    Page Should Contain Text  ${text}  

Wait For Page Conatin Element  
    [Arguments]  ${element}  ${timeout}
    Wait Until Page Contains  ${element}  ${timeout}

Replace Characters
    [Arguments]  ${text}  ${char1}  ${char2}
    ${replacedString} =  Replace String  ${text}  ${char1}  ${char2}
    [Return]  ${replacedString}

Click On Element If Visibile  
    [Arguments]  ${element}
    ${isElementVisible} =  Run Keyword And Return Status  Verify Element Visibility  ${element}
    IF   ${isElementVisible}  
        Wait And Click Element On Android  ${element}
    ELSE   
        Log To Console  Continuing without element click
    END

Navigate Back To Signin Screen If Element Visible
    [Arguments]  ${element}
    ${isElementVisible} =  Run Keyword And Return Status  Verify Element Visibility  ${element}
    IF   ${isElementVisible}  
        Go Back
        Log To Console  Came back to previous screen
    ELSE   
        Log To Console  Continuing without any action
    END

Verify Error Message Displayed
    [Arguments]  ${errorMsg}
    Wait For Page Conatin Element  ${errorMsg}  30s
    Verify Page Conatin Text  ${errorMsg}
    Log To Console  Verified Error Message

Generate Random Number
    [Arguments]  ${startingrange}  ${endingrange}
    ${randomNum} =	Evaluate	random.randint(${startingrange}, ${endingrange})
    [Return]   ${randomNum}

Generate Email ID
    ${randomNum} =	Generate Random Number  0  99999
    ${newEmail} =   Catenate  ${e_emailPrefix}+${randomNum}${e_emailDomain}
    Log To Console  New Email ID Generated - ${newEmail} 
    [Return]  ${newEmail} 

Generate Unique Mobile Number
    ${randomMobileNum} =  Generate Random Number  0  99999
    ${result1} =  Convert To Integer  ${randomMobileNum}
    ${result2} =  Convert To Integer  ${e_ca_mobileNum}
    ${actualMobileNumber} =  Evaluate  ${result1}+${result2}
    ${actualMobileNumber1} =  Convert To String  ${actualMobileNumber}
    ${expectedMobileNum} =  Replace Characters  ${actualMobileNumber1}  1  9

Verify Setting Of Chrome Browser 
    ${isElementVisible} =  Run Keyword And Return Status  Verify Open With Label
    Run Keyword If   ${isElementVisible}  Choose Chrome Browser
    ...    ELSE  Log To Console  Continue

Choose Chrome Browser
    Wait And Click Element On Android  ${vf_A_chromeOption}
    Wait And Click Element On Android  ${vf_A_alwaysBtn}

Verify Open With Label
    Wait For Element Visibility On Android  ${vf_A_openWithLabel}
    Element Should Be Visible  ${vf_A_openWithLabel}

Close Android Keyboard
    ${isKeyboardVisible} =  Run Keyword And Return Status  Is Keyboard Shown
    Run Keyword If   ${isKeyboardVisible}  Hide Keyboard
    #...    ELSE  Log To Console  Keyboard is hidden

Go Back On Android
    Go Back

Rest Android Application
    Reset Application

Quit Android Application
    Quit Application