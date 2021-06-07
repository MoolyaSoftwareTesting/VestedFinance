*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Signin With New KYC Account
    Signin Without Pin Credentials  ${e_newEmailKYC}  ${e_validnewPassword}

Signin With Non KYC Completed Account For Referrals
    Signin Without Pin Credentials  ${e_emailForKYCNotCmpltd}  ${e_passwordForKYCNotCmpltd}

Signin With Non KYC Account
    Signin Without Pin Credentials  ${e_nonKYCEmail}  ${e_validnewPassword}

# Referrals

Click On Referrals Tab
    Wait For Page Conatin Element  ${e_referral}  
    Click Text  ${e_referral}
    Verify Page Conatin Text   ${e_referral}

Verify Referral Screen Content
    Wait For Page Conatin Element  ${e_giveGet}  
    Verify Page Conatin Text   ${e_giveGet}
    Verify Page Conatin Text   ${e_giveGetNote}
    Element Should Be Visible   ${vf_A_infoBtn}
    Verify Page Conatin Text   ${e_earnedThroughReferrals}
    Swipe By Percent  70  70  20  20  5000
    Verify Page Conatin Text   ${e_refDisclosure}
    Verify Page Conatin Text   ${e_FAQs}

New KYC User Navigates To Referral Page
    Click On Referrals Tab
    Verify Referral Screen Content
    Element Should Be Visible   ${vf_A_referralLock}
    Verify Page Conatin Text   ${e_screenLockNote2}
    Page Should Contain Element  ${vf_A_completeKYCBtn}
    Log to Console  Verified Referral Page Content!
    Verify Content In FAQs Link
    Verify Content In Referral Disclosure Link
    Wait For Element Visibility On Android  ${vf_A_completeKYCBtn}
    Wait And Click Element On Android  ${vf_A_completeKYCBtn}
    Wait For Element Visibility On Android  ${vf_A_acceptAndContinueBtn}

KYC Started User Navigates To Referral Page
    Click On Referrals Tab
    Verify Referral Screen Content
    Element Should Be Visible   ${vf_A_referralLock}
    Verify Page Conatin Text   ${e_screenLockNote2}
    Page Should Contain Element  ${vf_A_completeKYCBtn}
    Log to Console  Verified Referral Page Content!
    Verify Content In FAQs Link
    Verify Content In Referral Disclosure Link
    Wait For Element Visibility On Android  ${vf_A_completeKYCBtn}
    Wait And Click Element On Android  ${vf_A_completeKYCBtn}


KYC Not Approved User Navigates To Referral Page
    Click On Referrals Tab
    Verify Referral Screen Content
    Element Should Be Visible   ${vf_A_referralLock}
    Verify Page Conatin Text   ${e_screenLockNote1}
    Log to Console  Verified Referral Page Content!
    Verify Content In FAQs Link
    Verify Content In Referral Disclosure Link

Subscribed User Navigated To Referral Page
    Click On Referrals Tab
    Verify Referral Screen Content
    Verify Page Conatin Text   ${e_shareYourLink}
    Element Should Be Visible   ${vf_A_invite}
    Element Should Be Visible   ${vf_A_copyLinkIcon}
    Log to Console  Verified Referral Page Content!

Invite Link Functionality
    Wait And Click Element On Android  ${vf_A_invite}
    Log to Console  Clicked on Invite!
    Wait For Page Conatin Element  ${e_shareTitle}  
    Verify Page Conatin Text   ${e_shareTitle}
    Verify Page Conatin Text   ${e_copyTxt}
    Verify Page Conatin Text   ${e_messages}
    Click Text  ${e_messages}
    Verify Page Conatin Text   ${e_selectConversation}
    Wait For Page Conatin Element  ${e_newMessage}  
    Verify Page Conatin Text   ${e_newMessage}
    Click Text  ${e_newMessage}
    Wait For Page Conatin Element  ${e_contact}  
    Verify Page Conatin Text   ${e_contact}
    Click Text  ${e_contact}
    Wait For Page Conatin Element  ${e_link}  
    Verify Page Conatin Text   ${e_link}
    Verify Page Conatin Text   ${e_sharingTxt}
    Log to Console  Verified Link and Text message to share!    
    Go Back On Android


Verify Content In FAQs Link
    Wait For Page Conatin Element  ${e_FAQs}  
    Click Text  ${e_FAQs}
    Log to Console  Clicked on FAQ Link  
    Wait For Page Conatin Element  ${e_FAQtxt}  
    Verify Page Conatin Text   ${e_FAQtxt}
    Verify Page Conatin Text   ${e_FAQ1Q}
    Verify Page Conatin Text   ${e_FAQ1A}
    Verify Page Conatin Text   ${e_FAQ2Q}
    Verify Page Conatin Text   ${e_FAQ2A}
    Verify Page Conatin Text   ${e_FAQ3Q}
    Verify Page Conatin Text   ${e_FAQ3A}
    Verify Page Conatin Text   ${e_FAQ4Q}
    Verify Page Conatin Text   ${e_FAQ4A}
    Log to Console  Verified FAQ Screen!    
    Wait And Click Element On Android  ${vf_A_faqCloseBtn}
     
Verify Content In Referral Disclosure Link
    Wait For Page Conatin Element  ${e_refDisclosure}  
    Click Text  ${e_refDisclosure}
    Log to Console  Clicked on Referral Disclosure     
    Wait For Page Conatin Element  ${e_refDisclosureHdng}  
    Verify Page Conatin Text  ${e_refDisclosureHdng}
    Verify Page Conatin Text  ${e_refDisclosureTxt1}
    Verify Page Conatin Text  ${e_refDisclosureTxt2}
    Log to Console  Verified Referral Disclosure Screen!    
    Go Back On Android

Scroll Up Till Learn About US Investing Section
    FOR  ${i}  IN RANGE  1  15
        ${isElementVisible} =  Run Keyword And Return Status   Verify Page Conatin Text  ${e_learnMoreAbtUSInvstng}
        IF   ${isElementVisible}
            Exit For Loop If    ${isElementVisible}
        ELSE
            Swipe By Percent  80  80  20  20  3000  
        END
    END

Verify Learn About US Investing Section
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngQ1}
    Click Text  ${e_learnMoreAbtUSInvstngQ1} 
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngA1}
    Click Text  ${e_learnMoreAbtUSInvstngQ1} 
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngQ2}
    Click Text  ${e_learnMoreAbtUSInvstngQ2} 
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngA2}
    Click Text  ${e_learnMoreAbtUSInvstngQ2} 
    Swipe By Percent  90  50  10  10  3000  
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngQ3}
    Click Text  ${e_learnMoreAbtUSInvstngQ3} 
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngA3}
    Click Text  ${e_learnMoreAbtUSInvstngQ3} 
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngQ4}
    Click Text  ${e_learnMoreAbtUSInvstngQ4} 
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngA4}
    Click Text  ${e_learnMoreAbtUSInvstngQ4} 
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngQ5}
    Click Text  ${e_learnMoreAbtUSInvstngQ5} 
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngA5.1}
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngA5.2}
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngA5.3}
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngA5.4}
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngA5.5}
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngA5.6}
    Click Text  ${e_learnMoreAbtUSInvstngQ5} 
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngQ6}
    Click Text  ${e_learnMoreAbtUSInvstngQ6} 
    Verify Page Conatin Text   ${e_learnMoreAbtUSInvstngA6}
    Click Text  ${e_learnMoreAbtUSInvstngQ6} 
    Log to Console  Verified Learn About US Investing Section! 

Scroll Up Till Footer Section
    FOR  ${i}  IN RANGE  1  15
        ${isElementVisible} =  Run Keyword And Return Status   Verify Page Conatin Text  ${e_privacyPolicyLinkUnderReferral}
        IF   ${isElementVisible}
            Exit For Loop If    ${isElementVisible}
        ELSE
            Swipe By Percent  80  80  20  20  3000  
        END
    END

Open Browser And Paste Copied Invite Link
    Element Should Be Visible   ${vf_A_copyLinkIcon}
    Log to Console  Copy link icon verifed!
    Wait And Click Element On Android  ${vf_A_copyLinkIcon}
    Quit Android Application
    # Open Chrome Browser App
    Wait And Click Element On Android  ${vf_A_chromeApp} 
    Wait For Element Visibility On Android   ${vf_A_chromeSearchBar}
    Log to Console  Search bar verified!
    Wait And Click Element On Android  ${vf_A_chromeSearchBar}
    Wait For Page Conatin Element  ${e_pasteLink}  
    Click Text  ${e_pasteLink}  
    Choose Chrome Browser
    Wait For Page Conatin Element  ${e_referrerTxt1}  
    Verify Page Conatin Text   ${e_referrerTxt1}
    Element Should Be Visible   ${vf_A_vfLogo}
    Verify Page Conatin Text   ${e_claim$5}
    Click Text  ${e_claim$5}
    Verify Element Visibility  ${vf_A_signUpLink}
    Go Back On Android
    Wait For Page Conatin Element  ${e_referrerTxt1}  
    Element Should Be Visible   ${vf_A_signup&Claim$5}
    Wait And Click Element On Android  ${vf_A_signup&Claim$5}
    Verify Element Visibility  ${vf_A_signUpLink}
    Go Back On Android
    Wait For Page Conatin Element  ${e_referrerTxt2}  
    Verify Page Conatin Text   ${e_referrerTxt2}
    Verify Page Conatin Text   ${e_refDisclosure}
    Click Text  ${e_refDisclosure}
    Wait For Page Conatin Element  ${e_refDisHeading}  
    Verify Page Conatin Text  ${e_refDisHeading}
    Verify Page Conatin Text  ${e_refDisTxt1}
    Swipe By Percent  70  70  20  20  5000
    Verify Page Conatin Text  ${e_refDisTxt2}
    Log to Console  Verified Referral Disclosure Screen!    
    Go Back On Android
    Element Should Be Visible   ${vf_A_chatInChrome}
    #On BS Device, these sections are not displayed sometimes
    # Scroll Up Till Learn About US Investing Section
    # Swipe By Percent  70  80  20  20  5000
    # Verify Learn About US Investing Section
    Scroll Up Till Footer Section 
    Verify Page Conatin Text  ${e_termsLink}
    Click Text  ${e_termsLink} 
    Wait For Page Conatin Element  ${e_termsHeading}  
    Verify Page Conatin Text  ${e_termsHeading}
    Go Back On Android
    Swipe By Percent  80  80  20  50  3000  
    Verify Page Conatin Text  ${e_privacyPolicyLinkUnderReferral}
    Click Text  ${e_privacyPolicyLinkUnderReferral} 
    Log to Console  Clickkkkeeddd
    Wait For Page Conatin Element  ${e_privacyPolicyHeading}  
    Verify Page Conatin Text  ${e_privacyPolicyHeading}
    Go Back On Android
    Log to Console  Verifed Webpage Content!
