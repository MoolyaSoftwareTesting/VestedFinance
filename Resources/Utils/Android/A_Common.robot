*** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     AppiumLibrary
Resource   ../../../AppLocators/Android/A_CommonAppLocators.robot
Resource   ../../../AppLocators/Android/A_SignInLocators.robot

*** Keywords ***

Launch Vested Android App
    Run Keyword If    '${environmentToRunTest}'=='${e_realDevice}'  Open Kuvera App On Real Device
    ...     ELSE IF   '${environmentToRunTest}'=='${e_browserstackDevice}'  Open Kuvera App On Browserstack

Open App On Browserstack
    Open Application  ${remote_URL}  app=bs://c9ea03eb5649b488f8c692af206f916e40904608  name=PreloginTests   build=RobotFramework    platformName=Android    os_version=9.0    device=Google Pixel 3  

Open App On Real Device
    Open Application  ${server}  platformName=${platform}  platformVersion=${platform_version}  deviceName=${device}  automationName=${appium}  appActivity=${app_activity}  appPackage=${app_package}
    Landing Page Is Loaded Completely

Open App On Emulator
    Open Application  http://localhost:4723/wd/hub  platformName=${platform}   deviceName=${emulator}   appPackage=${app_package}   appActivity=${app_activity}  automationName=Uiautomator2
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

Close Android Keyboard
    Hide Keyboard

Rest Android Application
    Reset Application

Quit Android Application
    Quit Application