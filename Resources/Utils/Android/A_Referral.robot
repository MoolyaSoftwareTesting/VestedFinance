*** Settings ***

Library     AppiumLibrary

*** Keywords ***

New KYC User Navigates To Referral Page
    Click Text  ${e_referral}
    Verify Page Conatin Text   ${e_referral}
    Verify Page Conatin Text   ${e_giveGet}
    Verify Page Conatin Text   ${e_giveGetNote}
    Element Should Be Visible   ${vf_A_infoBtn}
    Verify Page Conatin Text   ${e_earnedThroughReferrals}
    Element Should Be Visible   ${vf_A_referralLock}
    Verify Page Conatin Text   ${e_screenLockNote2}
    Page Should Contain Element  ${vf_A_completeKYCBtn}
    Verify Page Conatin Text   ${e_refDisclosure}
    Verify Page Conatin Text   ${e_FAQs}
    Log to Console  Referral Page Content verified
    Verify Content In FAQs Link
    Sleep  2s
    Verify Content In Referral Disclosure Link
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_completeKYCBtn}
    Wait For Element Visibility On Android  ${vf_A_acceptAndContinueBtn}

KYC Started User Navigates To Referral Page
    Click Text  ${e_referral}
    Verify Page Conatin Text   ${e_referral}
    Log to Console  Referral Page heading verifed!
    Verify Page Conatin Text   ${e_giveGet}
    Verify Page Conatin Text   ${e_giveGetNote}
    Element Should Be Visible   ${vf_A_infoBtn}
    Verify Page Conatin Text   ${e_earnedThroughReferrals}
    Element Should Be Visible   ${vf_A_referralLock}
    Verify Page Conatin Text   ${e_screenLockNote2}
    Page Should Contain Element  ${vf_A_completeKYCBtn}
    Verify Page Conatin Text   ${e_refDisclosure}
    Verify Page Conatin Text   ${e_FAQs}
    Log to Console  Referral Page Content verified
    Verify Content In FAQs Link
    Sleep  2s
    Verify Content In Referral Disclosure Link
    Sleep  2s
    Wait And Click Element On Android  ${vf_A_completeKYCBtn}


KYC Not Approved User Navigates To Referral Page
    Click Text  ${e_referral}
    Verify Page Conatin Text   ${e_referral}
    Log to Console  Referral Page heading verifed!
    Verify Page Conatin Text   ${e_giveGet}
    Verify Page Conatin Text   ${e_giveGetNote}
    Element Should Be Visible   ${vf_A_infoBtn}
    Verify Page Conatin Text   ${e_earnedThroughReferrals}
    Element Should Be Visible   ${vf_A_referralLock}
    Verify Page Conatin Text   ${e_screenLockNote1}
    Verify Page Conatin Text   ${e_refDisclosure}
    Verify Page Conatin Text   ${e_FAQs}
    Log to Console  Referral Page Content verified
    Verify Content In FAQs Link
    Sleep  2s
    Verify Content In Referral Disclosure Link


Subscribed User Navigated To Referral Page
    Sleep  2s
    Click Text  ${e_referral}
    Verify Page Conatin Text   ${e_referral}
    Log to Console  Referral Page heading verifed!
    Verify Page Conatin Text   ${e_giveGet}
    Verify Page Conatin Text   ${e_giveGetNote}
    Element Should Be Visible   ${vf_A_infoBtn}
    Verify Page Conatin Text   ${e_earnedThroughReferrals}
    Verify Page Conatin Text   ${e_shareYourLink}
    Element Should Be Visible   ${vf_A_invite}
    Element Should Be Visible   ${vf_A_copyLinkIcon}
    Verify Page Conatin Text   ${e_refDisclosure}
    Verify Page Conatin Text   ${e_FAQs}
    Log to Console  Referral Page Content verified



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
    Sleep  3s
    Verify Page Conatin Text   ${e_newMessage}
    Click Text  ${e_newMessage}
    Sleep  2s
    Verify Page Conatin Text   ${e_contact}
    Click Text  ${e_contact}
    Sleep  2s
    Verify Page Conatin Text   ${e_link}
    Verify Page Conatin Text   ${e_sharingTxt}
    Log to Console  Link and Text message to share verified    
    Go Back On Android


Verify Content In FAQs Link
    Click Text  ${e_FAQs}
    Log to Console  FAQ Clicked   
    Sleep  2s
    Verify Page Conatin Text   ${e_FAQtxt}
    Verify Page Conatin Text   ${e_FAQ1Q}
    Verify Page Conatin Text   ${e_FAQ1A}
    Verify Page Conatin Text   ${e_FAQ2Q}
    Verify Page Conatin Text   ${e_FAQ2A}
    Verify Page Conatin Text   ${e_FAQ3Q}
    Verify Page Conatin Text   ${e_FAQ3A}
    Verify Page Conatin Text   ${e_FAQ4Q}
    Verify Page Conatin Text   ${e_FAQ4A}
    Log to Console  FAQ Page verified    
    Wait And Click Element On Android  ${vf_A_closeBtn}
     
Verify Content In Referral Disclosure Link
    Click Text  ${e_refDisclosure}
    Log to Console  Referral Disclosure Clicked    
    Sleep  2s
    Verify Page Conatin Text  ${e_refDisclosureHdng}
    Verify Page Conatin Text  ${e_refDisclosureTxt1}
    Verify Page Conatin Text  ${e_refDisclosureTxt2}
    Log to Console  Referral Disclosure Page verified    
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
    Sleep  2s
    Click Text  ${e_pasteLink}  
    Wait For Page Conatin Element  ${e_referrerTxt1}  15s
    Verify Page Conatin Text   ${e_referrerTxt1}
    Element Should Be Visible   ${vf_A_vfLogo}
    Verify Page Conatin Text   ${e_claim$5}
    Element Should Be Visible   ${vf_A_signup&Claim}
    Verify Page Conatin Text   ${e_referrerTxt2}
    Verify Page Conatin Text   ${e_refDisclosure}
    Element Should Be Visible   ${vf_A_chatInChrome}
    Log to Console  Webpage Content verifed!