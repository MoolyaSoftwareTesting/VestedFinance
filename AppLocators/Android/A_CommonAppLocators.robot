*** Variables ***
#Desired Capabilities
${server}              http://localhost:4723/wd/hub
${platform}            Android
${emulator}            emulator-5554
${app_package} =       com.vested.investing.android.staging
${app_activity} =      com.vested.mobileclient.MainActivity
${appium}              appium
${apkPath}             Resources/APK/app-staging-release.apk


# Browserstack Credentials
${e_realDevice} =  Local
${e_browserstackDevice} =  Browserstack
${browserstack_userName} =  username
${browserstack_accessKey} =  accesskey
${remote_URL}    http://${browserstack_userName}:${browserstack_accessKey}@hub.browserstack.com:80/wd/hub
@{media}
    ...     media://79f5782f804639ae8fe84fe36134a4ad2b99098a
    ...     media://b9a926f86ee4dd196a152afa313a8382a376aca3
    ...     media://ed4bb3732789a0865bbfd823128410825a125a2e
    ...     media://86939c4fdf29d1c4bae6acfff6dfc53f2a4e859e
    ...     media://9795a60473c77f01d2f8f32b57fac6aa075c7c12

# Choose Chrome Browser
${vf_A_openWithLabel} =  xpath=//*[@text='Open with']
${vf_A_chromeOption} =  xpath=//*[@text='Chrome']
${vf_A_alwaysBtn} =  xpath=//*[@text='Always']


#  Test data or expected values
${e_title} =  Home | Vested Finance
${e_screenHeader} =  Welcome to Vested!
${e_signinScreentitle} =  Signin
${e_dashboardTitle} =  Dashboard | Vested Finance
${e_shareInputTxt} =  1


# Application Locator < Locator Name >
${vf_A_home} =  xpath=//*[@text='Home']
${vf_A_portifolioOverview} =  xpath=//*[@text='Portfolio Overview']
