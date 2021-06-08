*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     AppiumLibrary
Library     String
Library     DateTime
Resource   ../../../AppLocators/Android/A_CommonAppLocators.robot
Resource   ../../../AppLocators/Android/A_SignInLocators.robot
Resource   ../../../AppLocators/Android/A_SignUpLocators.robot
Resource   ../../../AppLocators/Android/A_ForgotPasswordLocators.robot
Resource   ../../../AppLocators/Android/A_KYCLocators.robot
Resource   ../../../AppLocators/Android/A_DashboardLocators.robot
Resource   ../../../AppLocators/Android/A_ProfileLocators.robot
Resource   ../../../AppLocators/Android/A_SubscriptionLocators.robot
Resource   ../../../AppLocators/Android/A_ReferralLocators.robot
Resource   ../../../AppLocators/Android/A_FundTransferLocators.robot

*** Keywords ***

Launch Android App
    Run Keyword If    '${environmentToRunTest}'=='${e_realDevice}'  Open App On Real Device
    ...     ELSE IF   '${environmentToRunTest}'=='${e_browserstackDevice}'  Open App On Browserstack

Open App On Browserstack
    Open Application  ${remote_URL}  app=${appURL}  name=${sessionName}   build=RobotFramework    platformName=Android    os_version=9.0    device=Google Pixel 3a    browserstack.uploadMedia=${media} 
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
    Sleep  3s
    Wait Until Element Is Visible  ${element}  timeout=25

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
    Sleep  2s
    Wait For Element Visibility On Android  ${element} 
    Element Should Be Visible  ${element}  

Verify Page Conatin Text  
    [Arguments]  ${text}
    Sleep  2s
    Page Should Contain Text  ${text}  

Wait For Page Conatin Element  
    [Arguments]  ${text}  
    Wait Until Page Contains  ${text}  timeout=20

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
    Wait For Page Conatin Element  ${errorMsg}  
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
    Sleep  2s
    ${isKeyboardVisible} =  Run Keyword And Return Status  Is Keyboard Shown
    Run Keyword If   ${isKeyboardVisible}  Hide Keyboard
    Sleep  3s

Open Chrome Browser App
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform_version}  appActivity=${chrome_activity}  appPackage=${chrome_package}  deviceName=${emulator}  automationName=${appium}   

Get Current Date On Android
    ${date}=  Get Current Date  time_zone=local  increment=0  result_format=timestamp  exclude_millis=True
    Set Global Variable  ${date}
    ${convertDate} =  Convert Date  ${date}  result_format=%d
    [Return]  ${convertDate} 

Go Back On Android
    Sleep  2s
    Go Back
    Sleep  3s

Rest Android Application
    Reset Application

Quit Android Application
    Quit Application