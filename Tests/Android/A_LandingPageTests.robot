*** Settings ***
Library     OperatingSystem
Library     AppiumLibrary
Resource    ../../Tests/Android/A_Import.robot


Suite Setup  Open Vested App On Emulator
#Suite Teardown  Quit Vested Application

# robot -d Results Tests/Android/A_LandingPageTests.robot
# robot -d Results -L Debug -i order Tests
# robot -d Results --loglevel TRACE Tests/A_LandingPageTests.robot

*** Test Cases ***

Vested icon and About text in Landing page
    [Tags]  SL01
    Landing page is loaded completely
    Vested icon is displayed at the top
    Text about vested is displayed below the logo

Points on Security, Compliance and Recommendations in Landing page
    [Tags]  SL02
    Landing page is loaded completely
    Verify 3 points on Security, Compliance and Recommendations with icons are displayed
    Verify Heading for each point is displayed

Start Investing button is clickable in Landing page
    [Tags]  SL03
    Landing page is loaded completely
    Click on Start Investing button
    Sign in page is displayed

    