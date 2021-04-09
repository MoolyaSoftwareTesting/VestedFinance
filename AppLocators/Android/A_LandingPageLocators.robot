*** Variables ***
#  Test data or expected values
${e_welcomeTxt} =  Welcome to Vested!
${e_aboutVestedTxt} =  Invest in US companies and diversify globally with fractional share investing
${e_securityHeading} =  Security
${e_complianceHeading} =  Compliance
${e_recommendationsHeading} =  Recommendations
${e_securityTxt} =  We partner with SEC-regulated and SIPC-member firms that insure your account up to $500,000
${e_complianceTxt} =  Vested seeks to comply with government regulations. We provide tax documents for your filings
${e_recommendationsTxt} =  We offer Vests, curated portfolios that comprise of stocks and/or ETFs. Vests enable you to invest in diversified core assets or focus on specific industries and core themes
${e_startInvestingTxt} =  Start Investing

#Landing page
${vf_A_vestedIcon} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]/*[@class='android.view.ViewGroup'])[1]
${vf_A_startInvestingBtn} =  xpath=//*[@text='Start Investing']
${vf_A_securityIcon} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]/*[@class='android.view.ViewGroup'])[2]
${vf_A_complianceIcon} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]/*[@class='android.view.ViewGroup'])[3]
${vf_A_recommendationsIcon} =  xpath=(//*[@class='android.view.ViewGroup' and ./parent::*[@class='android.widget.ScrollView']]/*[@class='android.view.ViewGroup'])[4]
${vf_A_screenHeader} =  xpath=//*[@text='Welcome to Vested!']
${vf_A_startInvestingBtn} =  xpath=//*[@text='Start Investing']
${vf_A_termsLink} =  xpath=//*[contains(text(),'terms')]
${vf_A_policyLink} =  xpath=//*[contains(text(),'policy')]
${vf_A_disclosureLink} =  xpath=//*[contains(text(),'disclosure')]
${vf_A_brochureLink} =  xpath=//*[contains(text(),'brochure')]