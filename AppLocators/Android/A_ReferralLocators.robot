*** Variables ***

# Variables

# Referral Main Screen
${e_referral} =  Referral
${e_giveGet} =  Give $5, Get $5
${e_giveGetNote} =  Give friends $5 with your promo code, and you’ll get $5 in your Vested account when their account gets KYC approved!
${e_earnedThroughReferrals} =  Earned through referrals
${e_screenLockNote1} =  Your KYC review is in process. You can participate in the referral program after your KYC is approved.
${e_screenLockNote2} =  Please complete your KYC to participate in the referral program
${e_refDisclosure} =  Referral disclosure
${e_FAQs} =  FAQs

# Sharing Link
${e_sharingTxt} =  Hey, come and join Vested with me to invest in US companies like Tesla, Uber, Google or Facebook. Sign up with my link and we’ll both get $5.
${e_link} =  https://vested.page.link/
${e_copyTxt} =  Copy to clipboard
${e_messages} =  Messages
${e_selectConversation} =  Select conversation
${e_newMessage} =  NEW MESSAGE
${e_contact} =  Firstname1 Lastname1
${e_shareTitle} =  Share with

# FAQs Link
${e_FAQtxt} =  Frequently Asked Questions
${e_FAQ1Q} =  What is the maximum limit that I can earn through the referral program?
${e_FAQ2Q} =  When will I get the $5 referral bonus?
${e_FAQ3Q} =  What if I did not get the referral amount?
${e_FAQ4Q} =  What if my friend is already a registered user?
${e_FAQ1A} =  You can refer as many friends as you want and if your friends' accounts get approved - you will earn $5 per approval.
${e_FAQ2A} =  After your friend’s KYC is approved, it will take 1 business day for the bonus to be deposited to your Vested account.
${e_FAQ3A} =  Please contact us at help@vestedfinance.co
${e_FAQ4A} =  You can only refer friends who are new to the Vested platform.
${e_shareYourLink} =  SHARE YOUR LINK

# Referral disclosure link
${e_refDisclosureHdng} =  Disclosure for Referrer
${e_refDisclosureTxt1} =  This offer is valid only for new individual accounts with Vested Finance Inc (“Vested”). Please send invites only to people you know personally who will be glad to get them. Vested will send one invite and up to two reminders to each friend you invite: (1) in your name; and/or (2) with your name. The reminders may be different from the original invite and can be canceled by emailing help@vestedfinance.co To qualify for the bonus, referred friends must open a KYC-approved Vested account.
${e_refDisclosureTxt2} =  Your participation in the Vested Referral program is subject to your agreement to the following terms:

# Chrome Browser App
${e_pasteLink} =  Link you copied
${e_claim$5} =  CLAIM $5
${e_referrerTxt1} =  got you$5 to invest in US companies.
${e_referrerTxt2} =  will receive $5 when your account gets approved.

# Locators
# Chrome Browser App
${vf_A_homeBtn} =  xpath=//*[@id='white']
${vf_A_chromeApp} =  xpath=//*[@text='Chrome']
${vf_A_chromeSearchBar}=  xpath=//*[@text='Search or type web address']
${vf_A_enterKey} =  xpath=//*[@id='icon']
${vf_A_vfLogo} =  xpath=(//*[@class='android.widget.Image'])[1]
${vf_A_signup&Claim} =  xpath=(//*[@class='android.widget.Button'])[2]
${vf_A_chatInChrome} =  xpath=//*[@text='Open Intercom Messenger']

${chrome_activity} =  com.google.android.apps.chrome.Main
${chrome_package} =  com.android.chrome

# Referral Main Page
${vf_A_referralLock} =  xpath=//*[@text='lock']
${vf_A_infoBtn} =  xpath=//*[@text='info_outline']
${vf_A_completeKYCBtn} =  xpath=//*[@text='COMPLETE KYC PROCESS']
${vf_A_invite} =  xpath=//*[@text='INVITE']
${vf_A_copyLinkIcon} =  xpath=//*[@text='content_copy']

# Sharing Link
${vf_A_shareTitle} =  xpath=//*[@text='Share with']

# FAQs Link
${vf_A_closeBtn} =  xpath=//*[@text='close']
