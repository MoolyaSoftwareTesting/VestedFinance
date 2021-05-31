*** Settings ***

Library     AppiumLibrary

*** Keywords ***

Signin With New KYC Account
    Signin Without Pin Credentials  ${e_newEmailKYC}  ${e_validnewPassword}

Signin With Non KYC Completed Account
    Signin Without Pin Credentials  ${e_emailForKYCNotCmpltd}  ${e_validPasswordForKYC}

Signin With Non KYC Account
    Signin Without Pin Credentials  ${e_nonKYCEmail}  ${e_validnewPassword}

# Referrals

Click On Referrals From Dashboard
    Wait For Page Conatin Element  ${e_referral}  5s
    Click Text  ${e_referral}
    Verify Page Conatin Text   ${e_referral}

Verify Referral Screen Content
    Verify Page Conatin Text   ${e_giveGet}
    Verify Page Conatin Text   ${e_giveGetNote}
    Element Should Be Visible   ${vf_A_infoBtn}
    Verify Page Conatin Text   ${e_earnedThroughReferrals}
    Swipe By Percent  70  70  20  20  5000
    Verify Page Conatin Text   ${e_refDisclosure}
    Verify Page Conatin Text   ${e_FAQs}

New KYC User Navigates To Referral Page
    Click On Referrals From Dashboard
    Verify Referral Screen Content
    Element Should Be Visible   ${vf_A_referralLock}
    Verify Page Conatin Text   ${e_screenLockNote2}
    Page Should Contain Element  ${vf_A_completeKYCBtn}
    Log to Console  Verified Referral Page Content!
    Verify Content In FAQs Link
    Sleep  2s
    Verify Content In Referral Disclosure Link
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_completeKYCBtn}
    Wait For Element Visibility On Android  ${vf_A_acceptAndContinueBtn}

KYC Started User Navigates To Referral Page
    Click On Referrals From Dashboard
    Verify Referral Screen Content
    Element Should Be Visible   ${vf_A_referralLock}
    Verify Page Conatin Text   ${e_screenLockNote2}
    Page Should Contain Element  ${vf_A_completeKYCBtn}
    Log to Console  Verified Referral Page Content!
    Verify Content In FAQs Link
    Sleep  2s
    Verify Content In Referral Disclosure Link
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_completeKYCBtn}


KYC Not Approved User Navigates To Referral Page
    Click On Referrals From Dashboard
    Verify Referral Screen Content
    Element Should Be Visible   ${vf_A_referralLock}
    Verify Page Conatin Text   ${e_screenLockNote1}
    Log to Console  Verified Referral Page Content!
    Verify Content In FAQs Link
    Sleep  2s
    Verify Content In Referral Disclosure Link


Subscribed User Navigated To Referral Page
    Click On Referrals From Dashboard
    Verify Referral Screen Content
    Verify Page Conatin Text   ${e_shareYourLink}
    Element Should Be Visible   ${vf_A_invite}
    Element Should Be Visible   ${vf_A_copyLinkIcon}
    Log to Console  Verified Referral Page Content!

Invite Link Functionality
    Wait And Click Element On Android  ${vf_A_invite}
    Log to Console  Invite Clicked!
    Sleep  2s
    Verify Page Conatin Text   ${e_shareTitle}
    Verify Page Conatin Text   ${e_copyTxt}
    Verify Page Conatin Text   ${e_messages}
    Log to Console  Headings verified
    Click Text  ${e_messages}
    Verify Page Conatin Text   ${e_selectConversation}
    Wait For Page Conatin Element  ${e_newMessage}  5s
    Verify Page Conatin Text   ${e_newMessage}
    Click Text  ${e_newMessage}
    Wait For Page Conatin Element  ${e_contact}  5s
    Verify Page Conatin Text   ${e_contact}
    Click Text  ${e_contact}
    Wait For Page Conatin Element  ${e_link}  5s
    Verify Page Conatin Text   ${e_link}
    Verify Page Conatin Text   ${e_sharingTxt}
    Log to Console  Link and Text message to share verified    
    Go Back On Android


Verify Content In FAQs Link
    Wait For Page Conatin Element  ${e_FAQs}  5s
    Click Text  ${e_FAQs}
    Log to Console  Clicked on FAQ Link  
    Wait For Page Conatin Element  ${e_FAQtxt}  5s
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
    Wait For Page Conatin Element  ${e_refDisclosure}  5s
    Click Text  ${e_refDisclosure}
    Log to Console  Clicked on Referral Disclosure     
    Wait For Page Conatin Element  ${e_refDisclosureHdng}  5s
    Verify Page Conatin Text  ${e_refDisclosureHdng}
    Verify Page Conatin Text  ${e_refDisclosureTxt1}
    Verify Page Conatin Text  ${e_refDisclosureTxt2}
    Log to Console  Verified Referral Disclosure Screen!    
    Go Back On Android

Open Browser And Paste Copied Invite Link
    Element Should Be Visible   ${vf_A_copyLinkIcon}
    Log to Console  Copy link icon verifed!
    Wait And Click Element On Android  ${vf_A_copyLinkIcon}
    Sleep  2s
    Quit Android Application
    # Open Chrome Browser App
    Wait And Click Element On Android  ${vf_A_chromeApp} 
    Sleep  2s
    Wait For Element Visibility On Android   ${vf_A_chromeSearchBar}
    Log to Console  Search bar verified!
    Wait And Click Element On Android  ${vf_A_chromeSearchBar}
    Wait For Page Conatin Element  ${e_pasteLink}  15s
    Click Text  ${e_pasteLink}  
    Choose Chrome Browser
    Wait For Page Conatin Element  ${e_referrerTxt1}  15s
    Verify Page Conatin Text   ${e_referrerTxt1}
    Element Should Be Visible   ${vf_A_vfLogo}
    Verify Page Conatin Text   ${e_claim$5}
    Element Should Be Visible   ${vf_A_signup&Claim}
    Verify Page Conatin Text   ${e_referrerTxt2}
    Verify Page Conatin Text   ${e_refDisclosure}
    Element Should Be Visible   ${vf_A_chatInChrome}
    Log to Console  Verifed Webpage Content!
