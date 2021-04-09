*** Variables ***
#Desired Capabilities
${server}              http://localhost:4723/wd/hub
${platform}            Android
${platform_version}    11
${emulator}            emulator-5554
${device}              7cd17526
${app_package} =       com.vested.investing.android.staging
${app_activity} =      com.vested.mobileclient.MainActivity
${appium}              appium
${apkPath}             Resources/APK/app-staging-release.apk
${noReset} =            True

#  Test data or expected values
${e_title} =  Home | Vested Finance
${e_screenHeader} =  Welcome to Vested!
${e_signinScreentitle} =  Signin
${e_dashboardTitle} =  Dashboard | Vested Finance
${e_shareInputTxt} =  1


# Application Locator < Locator Name >
${vf_A_home} =  xpath=//*[@text='Home']
${vf_A_portifolioOverview} =  xpath=//*[@text='Portfolio Overview']
