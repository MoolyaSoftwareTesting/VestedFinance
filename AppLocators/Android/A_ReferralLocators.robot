*** Variables ***

# Non KYC Completed User
${e_emailForKYCNotCmpltd} =  thiruvengadam.s+1@moolya.com
${e_passwordForKYCNotCmpltd} =  Thiru!99

# New Account
${e_newEmailKYC} =  thiruvengadam.s+53@moolya.com
${e_validnewPassword} =  Thiru!99
${e_nonKYCEmail} =  thiruvengadam.s+6@moolya.com

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

# Referral disclosure link under Browser pasted screen
${e_refDisHeading} =  Terms of Conditions for Referree
${e_refDisTxt1} =  This offer is valid only for new individual accounts with Vested Finance Inc (“Vested”). The referring friend who sent you this invitation is a Vested client and has done so through the Vested Referral program. This invitation does NOT constitute a statement of your friend’s experience with, or endorsement of, Vested. Subject to satisfying the terms and conditions of the promotion, Vested will deposit up to $5 of bonus funds into your Vested account. After your account is opened and KYC approved, Vested will also deposit up to $5 of bonus funds into your referring friend’s account. Your referring friend may also be eligible to receive up to $5 in bonus funds for every additional “Qualifying New Account” they refer up to a total of $500 per year. Under certain conditions, other fees including applicable DriveWealth custodial fees, withdrawal and ancillary fees may apply.
${e_refDisTxt2} =  To participate in this bonus offer you must (1) complete the account opening process of a Qualifying New Account and (2) be KYC-approved. Additional terms and conditions of ownership of the bonus funds is outlined in section 11 of the Vested’s Advisory Agreement. Vested is not responsible for incorrect entry or other failure on your part to meet standards for qualifying for the bonus. You also acknowledge and accept that the individual who referred you to Vested will be notified when you open a Vested account. This promotion is not valid with any other offers and is non-transferrable. Offer available to Indian Residents only. Vested reserves the right to terminate this offer at any time and to refuse or recover any promotion award if Vested determines that it was obtained under wrongful or fraudulent circumstances, that inaccurate or incomplete information was provided in opening the account, or that any terms of the Advisory Agreement have been violated.Vested Finance is an SEC registered investment adviser. You may view Vested’s ADV at

# Chrome Browser App
${e_pasteLink} =  Link you copied
${e_claim$5} =  CLAIM $5
${e_referrerTxt1} =  got you$5 to invest in US companies.
${e_referrerTxt2} =  will receive $5 when your account gets approved.
${e_learnMoreAbtUSInvstng} =  Learn more about US Investing
${e_learnMoreAbtUSInvstngQ1} =  How secure is this?
${e_learnMoreAbtUSInvstngA1} =  Vested uses 256-bit encryption and Secure Sockets Layer (SSL) to ensure the security of our platform and to protect all your information. We also employ state of the art log-in methods, automatic logouts, and ID verification to help prevent unauthorized access.
${e_learnMoreAbtUSInvstngQ2} =  What happens if Vested shuts down?
${e_learnMoreAbtUSInvstngA2} =  If Vested shuts down, you would still have access to all your cash and securities. Your assets are held at a 3rd party custodian, we do not ever touch or hold your money. We will ensure that direct DriveWealth access is established for you to further buy or sell securities.
${e_learnMoreAbtUSInvstngQ3} =  How will taxes work?
${e_learnMoreAbtUSInvstngA3} =  For our users there are two types of taxation events: (1) Taxes on investment gains: You will be taxed in India for this gain. You will not be taxed in the US. The amount of taxes you have to pay in India depends on how long you hold the investment. 24 months is the long-term capital gain
${e_learnMoreAbtUSInvstngQ4} =  Is this actually legal?
${e_learnMoreAbtUSInvstngA4} =  Yes. We follow the RBI’s Liberalized Remittance Scheme (LRS) guidelines. Instituted by the RBI, the LRS is a set of policies that governs the maximum amount and purposes of remittance. Under the LRS, an Indian resident can annually send up to USD $250,000 abroad without seeking approval from the RBI.
${e_learnMoreAbtUSInvstngQ5} =  How can I verify ownership of the shares?
${e_learnMoreAbtUSInvstngA5.1} =  Share ownership verification works slightly differently in the US than in India. Shares are held by a third-party custodian in the 
${e_learnMoreAbtUSInvstngA5.2} =  street name
${e_learnMoreAbtUSInvstngA5.3} =  of the broker rather than the underlying investor. This is why you do not receive direct emails from the custodian regarding your holdings. As per
${e_learnMoreAbtUSInvstngA5.4} =  SEC guidelines
${e_learnMoreAbtUSInvstngA5.5} =  , if you want to confirm the share ownership for your Vested account, you can contact DriveWealth, our broker partner, directly at 
${e_learnMoreAbtUSInvstngA5.6} =  support@drivewealth.com.
${e_learnMoreAbtUSInvstngQ6} =  How does fractional investing work?
${e_learnMoreAbtUSInvstngA6} =  On the Vested platform you can invest in either full or fractional shares. When your investment is in full shares, our broker partner (DriveWealth) will route the orders to market centers on an Agency basis. When the investment is fractional shares, our
${e_termsLink} =  terms
${e_privacyPolicyLinkUnderReferral} =  privacy policy
${e_termsHeading} =  Terms of Service
${e_privacyPolicyHeading} =  Privacy Policy

# Locators
# Chrome Browser App
${vf_A_homeBtn} =  xpath=//*[@id='white']
${vf_A_chromeApp} =  xpath=//*[@text='Chrome']
${vf_A_chromeSearchBar}=  xpath=//*[@text='Search or type web address']
${vf_A_enterKey} =  xpath=//*[@id='icon']
${vf_A_vfLogo} =  xpath=(//*[@class='android.widget.Image'])[1]
${vf_A_signup&Claim$5} =  xpath=(//*[@class='android.widget.Button'])[2]
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
${vf_A_faqCloseBtn} =  xpath=//*[@text='close']