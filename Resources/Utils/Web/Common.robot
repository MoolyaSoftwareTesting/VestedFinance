
** Settings ***

Library     JSONLibrary
Library     JsonValidator
Library     SeleniumLibrary
Library     String
Library     OperatingSystem
Library     Collections
Resource    ../../../AppLocators/Web/CommonAppLocators.robot

*** Keywords ***

Launch URL
    Open Browser  ${URL}  ${BROWSER}  alias=Vested Finance
    Set Selenium Implicit Wait  10s
    Verify Screen Title  ${e_title}
    #Run Keyword If    '${ENV}' == '${e_prod}'  Condition
    #...    ELSE   Log To Console  Staging


Wait For Element Visibility
    [Arguments]  ${element}
    Wait Until Element Is Visible  ${element}  timeout=90

Verify Element And Text
    [Arguments]  ${element}  ${text}
    Run Keyword And Continue On Failure  Element Text Should Be  ${element}  ${text}

Verify Page Contains Element
    [Arguments]  ${element}
    Run Keyword And Continue On Failure  Page Should Contain Element  ${element}

Verify Page Contains Image
    [Arguments]  ${image}
    Run Keyword And Continue On Failure  Page Should Contain Image  ${image}

Scroll Untill View
    [Arguments]  ${element}
    Scroll Element Into View  ${element}

Verify Page Contains Link
    [Arguments]  ${link}  ${text}
    Run Keyword And Continue On Failure  Page Should Contain Link  ${link}  ${text}

Verify Page Contains Button
    [Arguments]  ${button}
    Run Keyword And Continue On Failure  Page Should Contain Button  ${button}

Compare Lists
    [Arguments]  ${actualList}   ${expectedList}
    # Get list item from actual list
    FOR  ${actualListItems}  IN  @{actualList}
    ${actualListItem}  Set Variable  ${actualListItems.text}
    END
    # Get list item from expected list
    FOR  ${expectedListItems}  IN  @{expectedList}
    ${expectedListItem}  Set Variable  ${expectedListItems}
    END
    # Compare two list items
    Run Keyword And Continue On Failure  Should Be Equal  ${actualListItem}  ${expectedListItem}

Switch To Window Verify Title And Close
    [Arguments]  ${title}
    Switch Window  locator=NEW
    Run Keyword And Continue On Failure  Title Should Be  ${title}
    Close Window
    Sleep  2s
    Switch Window  browser=Vested Finance

Switch To Frame
    [Arguments]  ${element}
    Select Frame  ${element}

Get List Count
    [Arguments]  ${list}
    ${listCount}  Get Length  ${list}
    [Return]  ${listCount}

Get Json Values
    [Arguments]  ${jsonPath}  ${jsonFilePath}
    ${jsonFile}  Load JSON From File  ${jsonFilePath}
    ${jsonValue}  Get Value From Json  ${jsonFile}  ${jsonPath}
    [Return]  ${jsonValue}

Press Enter Key
    [Arguments]  ${element}  
    Press Keys  ${element}  ENTER

Clear Text Field
    [Arguments]  ${field}
    Sleep  500ms
    ${fieldText} =  Get Value  ${field}
    ${fieldTextLen} =  Get Length  ${fieldText}
    Run Keyword If    """${fieldText}""" != ''
    ...     Repeat Keyword  ${fieldTextLen+1}  Press Keys  ${field}  \ue003

Switch To Window
    Switch Window  locator=NEW
    Sleep  3s
    Close Window
    Sleep  2s
    Switch Window  browser=Vested Finance
    
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})

Wait Scroll And Click Element
    [Arguments]  ${element}
    Sleep  1s
    Wait For Element Visibility  ${element}
    Scroll Untill View  ${element}
    Click Element  ${element}

Compare Text Values
    [Arguments]  ${actualValue}  ${expectedValue}
    Run Keyword And Continue On Failure  Should Be Equal  ['${actualValue}']  ${expectedValue}

Verify Screen Title
    [Arguments]  ${title}
    Run Keyword And Continue On Failure  Title Should Be  ${title}

Scroll And Wait
    [Arguments]  ${element}
    Scroll Untill View  ${element}
    Sleep  1s
    Wait For Element Visibility  ${element}

Replace Characters
    [Arguments]  ${text}  ${char1}  ${char2}
    ${replacedString} =  Replace String  ${text}  ${char1}  ${char2}
    [Return]  ${replacedString}

Click Link And Switch Window
    [Arguments]  ${websiteLink} 
    Click Element  ${websiteLink}
    Switch To Window
    Sleep  2s  

Navigate To Home Page
    Go To  ${URL}
    Set Window Size  ${1920}  ${1080}
    Reload Page
    Sleep  12s

Generate Random Number
    [Arguments]  ${startingrange}  ${endingrange}
    ${randomNum} =	Evaluate	random.randint(${startingrange}, ${endingrange})
    [Return]   ${randomNum}

Generate Unique Mobile Number
    ${randomMobileNum} =  Generate Random Number  0  99999
    ${result1} =  Convert To Integer  ${randomMobileNum}
    ${result2} =  Convert To Integer  ${e_ca_mobileNum}
    ${actualMobileNumber} =  Evaluate  ${result1}+${result2}
    ${actualMobileNumber1} =  Convert To String  ${actualMobileNumber}
    ${expectedMobileNum} =  Replace Characters  ${actualMobileNumber1}  1  9
    [Return]  ${expectedMobileNum}

Wait And Click 
    [Arguments]  ${element}
    Sleep  1s
    Wait For Element Visibility  ${element}
    Click Element  ${element}

Close Web Application
    Close All Browser