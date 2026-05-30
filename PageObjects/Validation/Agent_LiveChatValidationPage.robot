###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}Settings.resource

* Variables
${btn_liveChat_txt}          Chat With Us
${lbl_liveChatHeader_txt}    Chat with Aflac

${lbl_PolicyHolderChat_welcomeMessageChat_txt}    Welcome to the Aflac Virtual Assistant.

${lbl_PolicyHolderChat_welcomeMessageChatOOO_txt}    Welcome to the Aflac virtual assistant. We are currently outside of business hours (Monday-Friday 8:00 AM – 8:00 PM EST) and our Chat Customer Care Specialists are unavailable. There are a number of things that I can assist you with, including many frequently asked requests
...  ${SPACE}At any time, type Menu in the text box to return to the Main Menu.
...  ${SPACE}You are at the Main Menu. Click on one of the topic links or type your request in the text box below.

${lbl_PolicyHolderChat_mainMenuMessage_txt}    You are at the Main Menu. Click on one of the topic links or type your request in the text box below.
${lbl_PolicyHolderChat_thankYouMessage_txt}    Thank you for contacting Aflac!
${lbl_PolicyHolderChat_unknownInputMenuMessage_txt}    Sorry, but I'm having trouble understanding what you've just said. Could you try selecting an option that is closest to what you want.

${lbl_PolicyHolderChat_helpToResolveMessage_txt}    Was the information provided helpful in answering your question or resolving your issue?
${lbl_PolicyHolderChat_helpToResolve_furtherAssistance_txt}    We’re sorry the information was not helpful or that we could not resolve your issue.
...  ${SPACE}Would you like to be connected with one of our Customer Care Specialists to further assist you?
${lbl_PolicyHolderChat_helpToResolve_furtherAssistanceOOO_txt}    We’re sorry the information was not helpful or that we could not resolve your issue.
...  ${SPACE}Our Customer Care Specialists are available Monday-Friday 8:00 am – 8:00 pm EST. While we are offline right now, we want to offer you the opportunity to send us additional information via an email form on Aflac.com
${lbl_PolicyHolderChat_furtherAssistance_txt}    Is there something else I can assist you with today?
${lbl_PolicyHolderChat_requireAssistance_txt}    Do you require further assistance?
${lbl_PolicyHolderChat_chatEnded_txt}    This chat has ended. Thank you for contacting Aflac. You may now close your browser.

${lbl_PolicyHolderChat_speakToCcs_txt}    Would you like to be connected with one of our Customer Care Specialists for additional assistance?
${lbl_PolicyHolderChat_outOfHoursCcs_txt}    We're${SPACE} sorry.${SPACE} Our Chat Customer Care Specialists are available Monday-Friday 8:00 am – 8:00 pm EST.
...    While we are offline right now, we want to offer you the opportunity to send us additional information via an email form on Aflac.com
...    ${SPACE}Please select which of these best describes your interest: Claims Customer Service

${lbl_PolicyHolderChat_stopWorkingMessage_txt}       Ok. We’ll stop working on this.
${lbl_PolicyHolderChat_preQuestion_txt}              Thank you for your question. In order to provide you with the information you have requested we need to ask you a few questions.
${lbl_PolicyHolderChat_areYouThePolicyHolder_txt}    Are you the policyholder for the policy that you are inquiring about?
${lbl_PolicyHolderChat_furtherAssistancePH_txt}    Sorry that we were unable to help you complete this action. For further assistance, you can reach our Customer Care team at 1-800-992-3522, available from 8 AM to 7 PM ET. We're here to help!
${lbl_PolicyHolderChat_furtherAssistancePH2_txt}    I'm sorry to hear that the information provided didn't resolve your issue.${SPACE} For further assistance, you can reach our Customer Care team at 1-800-992-3522, available from 8 AM to 7 PM ET. We're here to help!
## ----- Agent Live Chat - Policy Information Flow ----- ##
${lbl_PolicyHolderChat_policyInfo_mostCommonOptions_txt}     These are the most common policy information requests. Click on one of these or type your request in the text box below.
${lbl_PolicyHolderChat_pi_setupDirectDeposit_Message_txt}    Be sure to register/update at least 24 hours before filing a claim. Otherwise, we will mail you a check in about seven days. ${SPACE}To Sign up for Direct Deposit or change ${SPACE}it, please follow the below steps
...  ${SPACE*4}1. Go to www.aflac.com
...  ${SPACE*4}2. Under Individuals and${SPACE*9}Policyholders click on the enter${SPACE*9}button
...  ${SPACE*4}3. Click on Individual Log-in under${SPACE*9}Manage Your Aflac Policy
...  ${SPACE*4}4. Click Register to establish your${SPACE*9}user account
...  ${SPACE*4}5. Select Billing from the menu
...  ${SPACE*4}6. Select Manage Direct Deposit
...  ${SPACE*4}7. Confirm your personal email${SPACE*9}address
...  ${SPACE*4}8. Read and agree to the Terms and${SPACE*9}Conditions
...  ${SPACE*4}9. Enter the required enrollment${SPACE*9}information
...  ${SPACE*3}10.The Enrollment Complete will${SPACE*9}populate
${lbl_PolicyHolderChat_pi_coveredBenefits_Message_txt}    Would you like instructions on how to download a copy of your policy right now from MyAflac or would you prefer that a paper copy be mailed out to the address we have on file?
${lbl_PolicyHolderChat_pi_cb_downloadInstructions_Message_txt}    Below are the Instructions for downloading a copy of your policy:
...  ${SPACE}1. ${SPACE}Log into the MyAflac portal
...  ${SPACE}2. If you have already registered, enter${SPACE*5} your User Id and Password.
...  ${SPACE*2}3. Or, click on register to complete the${SPACE*5} registration process.
...  ${SPACE*2}4. Once you log onto MyAflac you will ${SPACE*5}begin on the My Policies page.
...  ${SPACE*2}5. On My Coverage,select your ${SPACE*5}coverage, and select policy details and${SPACE*5} download your policy pdf.
...  ${SPACE*3}6. Once the PDF is open, you can print${SPACE*5} or save the document.${SPACE*2}

## ----- Agent Live Chat - Policy Changes Flow ----- ##
${lbl_PolicyHolderChat_policyChanges_mostCommonOptions_txt}    These are the most common policy change requests. Click on one of these or type your request in the text box below.
${lbl_PolicyHolderChat_pc_addDrop_Message_txt}    To add someone to your policy, simply ensure you are logged in, then from the My Policies page select the policy you wish to add the name for and click 'Add Person' under the Make Policy Changes section.
...  ${SPACE}Click here to be routed to the MyAflac customer portal.
${lbl_PolicyHolderChat_pc_bankDraft_Message_txt}    Click here to be routed to a Payment Authorization Agreement form. Please complete the form and return it to the address located at the bottom of the form.
${lbl_PolicyHolderChat_pc_changeBeneficiary_Message_txt}    Beneficiary changes can be completed/submitted via your My Aflac customer portal. Simply ensure you are logged in, then select MyCoverage,then select the policy you wish to change the beneficiary for and click 'Manage Beneficiaries'.
${lbl_PolicyHolderChat_pc_genderIdentity_Message_txt}    Click on the link below to be routed to a Request For Gender identity Change/Reassignment form.
...  For an English version of the form, click here.
...  For a Spanish version of the form, click here.
${lbl_PolicyHolderChat_pc_orderPolicyIdCard_Message_txt}    Click here to be routed to the MyAflac customer portal. To download a policy ID card. ${SPACE}1. Log into your MyAflac account 2. Select the My Account dropdown 3. Then Select Manage Account 4. Select and download your ID Card
${lbl_PolicyHolderChat_pc_reinstateMyPolicy_Message_txt}    To reinstate your policy, simply ensure you are logged in, then from the My Policies page select the policy you wish to reinstate and click 'Reinstate Policy' under the Make Policy Changes section.
...  ${SPACE}Click here to be routed to the MyAflac customer portal.


## ----- Agent Live Chat - Claim Center Flow ----- ##
${lbl_PolicyHolderChat_claimCenter_infoMessage_txt}    These are the most common claim requests. Click on one of these or type your request in the text box below.
${lbl_PolicyHolderChat_claimCenter_faxReceived_preQuestion_txt}       Thank you for your question. To provide the fax details we have received, we need you to answer a few questions.
${lbl_PolicyHolderChat_claimCenter_submitMessage_txt}        If you are registered on MyAflac, go to the My Aflac Login Page and follow the steps below to submit a Claim or download a claim form.
...  ${SPACE*4}1. Log into your MyAflac account
...  ${SPACE*4}2. On the Home Page,select Submit a ${SPACE*7} new claim.
...  ${SPACE*4}3. Electronically submit (upload) all ${SPACE*7} requested supporting ${SPACE*7} documentation
...  ${SPACE*4}4. Click Submit
...  If you have not registered on MyAflac, please click here to be directed to the “File a Claim” page on Aflac.com.${SPACE*2}You will be provided with step-by-step tutorials on filing an online claim as well as easy to follow instructions for downloading the claim form you need. Additionally, you will have an opportunity to register for MyAflac.${SPACE*2}
${lbl_PolicyHolderChat_claimCenter_cs_preQuestion_txt}    Thank you for your question. To know your claim details, we need you to answer a few questions.
${lbl_PolicyHolderChat_claimCenter_cs_notPH_txt}    Therefore we are not able to provide you with specific claim details.If you have recently submitted a claim, we may still be able provide you with some information on when we expect to begin reviewing your claim.
${lbl_PolicyHolderChat_claimCenter_cs_claimSubmitDate_txt}    What date did you submit your claim (ex. 07/20/2020)
${lbl_PolicyHolderChat_claimCenter_cs_mailInfoMessage_txt}    We apologize but we are not able to provide any estimates on review dates for claims submitted by Mail.

## ----- Agent Live Chat - My Account Flow ----- ##
${lbl_PolicyHolderChat_myAccount_mostCommonOptions_txt}    These are the most common account related requests. Click on one of these or type your request in the text box below.
${lbl_PolicyHolderChat_myAccount_forgotPassword_txt}       If you have forgotten your password, click here. Select the option for forgot password and follow the on screen instructions to reset your password.

## ----- Agent Live Chat - Learn About A Letter Flow ----- ##
${lbl_PolicyHolderChat_learnLetter_Message_txt}              Thank you for your question. To know more on the letter you have received, we need you to answer a few questions.${SPACE}
${lbl_PolicyHolderChat_learnLetter_ProvideLetterCode_txt}    Please provide the letter code which is at the bottom right hand corner of the letter
${msg_PolicyHolderChat_learnLetter_provideLetterCode}        A100
${lbl_PolicyHolderChat_learnLetter_Details_txt}              Letter that provides details of a covered person having been added to the policy. The person who has been added is now eligible for coverage on the policy as of the effective date of the addition.${SPACE}

## ------- DM ChatBot ------##
${msg_PolicyHolderDMChat_learnLetter_provideLetterCode}        A100

## ----- Agent Live Chat - Make Payments Flow ----- ##
${lbl_PolicyHolderChat_makePayment_mostCommonOptions_txt}    These are the most common payment requests. Click on one of these or type your request in the text box below.
${lbl_PolicyHolderChat_makePayment_OTP_txt}    If you are the policyholder and your policy is directly billed, you can make a payment on your policy right here using your credit card, your debit card or by eCheck. ${SPACE}Do you still want to make a payment?
${lbl_PolicyHolderChat_makePayment_AP_txt}     If you are the policyholder, you may change the payment method on any policy for which automatic payments are currently being made. ${SPACE}Please Note: If you want to enable or disable automatic payment for any policy, you must contact a Customer Care Specialist to do so. ${SPACE}Do you still want to continue?


## ----- Agent Live Chat - Chat With CCS Flow ----- ##
${lbl_PolicyHolderChat_complianceMessage_txt}       All chats are monitored for quality assurance purposes. This is a secure chat session. Any sensitive information sent through this interaction will only be displayed to the Aflac Customer Care Specialist you are currently chatting with and masked in our system after that chat has ended.
${lbl_PolicyHolderChat_repsBusy_txt}                All of our representatives are currently busy. Please try again later, or you can call us at 1-800-992-3522 (99-AFLAC)${SPACE}     #All of our representatives are currently busy. Please type menu to return to the Aflac Virtual Assistant option for the fastest service.${SPACE}
${lbl_PolicyHolderChat_highVolumeOfChat_txt}        All of our representatives are currently busy. Please try again later, or email from the contact us page on Aflac.com
${lbl_PolicyHolderChat_ph_ccsConnectMessage_txt}    How would you categorize your question or issue?

${lbl_PolicyHolderChat_enterName_txt}      Please provide your first and last name.
${msg_PolicyHolderChat_provideUserName}    Jane Doe
${lbl_PolicyHolderChat_enterSSN_txt}       And now, can you give me the last four digits of your SSN.${SPACE}
${msg_PolicyHolderChat_provideSSN}         1234
${lbl_PolicyHolderChat_provideConnectionReason_txt}    What is the reason for contacting us today?
${msg_PolicyHolderChat_provideConnectionReason}        I have a query regarding a policy holder account.
${lbl_PolicyHolderChat_connectingToCcsQueue_txt}       Please wait while we connect you to an agent.
${lbl_PolicyHolderChat_reside_txt}       Do you reside in Kentucky, New York, Puerto Rico or Virgin Islands?
${lbl_PolicyHolderChat_resideUnableToAssist_txt}       Regrettably, we are unable to assist you through this channel due to state regulations or system limitations. Please reach out to us at 800-992-3522, and we will ensure your request is handled by the appropriate team

## ----- Agent Live Chat - Verify Me Modal ----- ##
${lbl_PolicyHolderChat_verifyMe_Auth_txt}          Ok. Before we can continue with your request, we need to first have you authenticate yourself by providing some verification data.
${lbl_PolicyHolderChat_verifyMe_Continue_txt}      Click on the Verify Me button to continue…
${lbl_PolicyHolderChat_verifyMe_CancelForm_txt}    This process has been cancelled.


## ----- Agent Live Chat - Estimate Claim Review Date Modal ----- ##
${lbl_PolicyHolderChat_estClaimReviewDate_Auth_txt}          Therefore we are not able to provide you with specific claim details.If you have recently submitted a claim, we may still be able provide you with some information on when we expect to begin reviewing your claim.
${lbl_PolicyHolderChat_estClaimReviewDate_Continue_txt}      Please click the Estimate Claim Review Date button
${lbl_PolicyHolderChat_estClaimReviewDate_CancelForm_txt}    This process has been cancelled.


## ----- Agent Live Chat - Experience Survey Questions ----- ##
${provide_PolicyHolderChat_completedSurveyAnswer}    Completed The Policy Holder Chat Survey

