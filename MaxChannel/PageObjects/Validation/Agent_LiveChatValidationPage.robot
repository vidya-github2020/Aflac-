###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}MaxChannel${/}Settings.resource

* Variables
${btn_liveChat_txt}          Chat With Us
${lbl_liveChatHeader_txt}    Chat with Aflac

${lbl_MaxChat_welcomeMessageChat_txt}    Welcome to the Aflac Virtual Assistant. There are a number of things that I can assist you with, including many frequently asked requests.
...  ${SPACE}At any time, type Exit in the text box to return to the Main Menu.
...  ${SPACE}You are at the Main Menu. Click on one of the topic links or type your request in the text box below.
...  Please click here to learn more about the features available in Max Chat.${SPACE}${SPACE}

${lbl_MaxChat_welcomeMessageChatOOO_txt}    Welcome to the Aflac Virtual Assistant. We are currently outside of business hours (Monday-Friday 8:00 am – 8:00 pm EST) and our Customer Care Specialists are unavailable.
...  ${SPACE}At any time, type Exit in the text box to return to the Main Menu.
...  ${SPACE}You are at the Main Menu.${SPACE} Click on one of the topic links or type your request in the text box below.
...  ${SPACE}Please click here to learn more about the features available in Max Chat.${SPACE}${SPACE}

${lbl_MaxChat_mainMenuMessage_txt}    You are at the Main Menu. Click on one of the topic links or type your request in the text box below.
${lbl_MaxChat_thankYouMessage_txt}    Thank you for contacting Aflac!
${lbl_MaxChat_wrapUp_txt}       Ok, I'm right here if you need any additional assistance.
${lbl_MaxChat_wrapUpOOO_txt}    Ok,I'm right here if you need any additional assistance.
${lbl_MaxChat_unknownInputMenuMessage_txt}    Sorry, but I'm having trouble understanding what you've just said. ${SPACE}Could you try selecting an option that is closest to what you want.

${lbl_MaxChat_helpToResolveMessage_txt}    Was the information provided helpful in answering your question or resolving your issue?
${lbl_MaxChat_helpToResolve_furtherAssistance_txt}       We’re sorry the information was not helpful or that we could not resolve your issue...
${lbl_MaxChat_helpToResolve_furtherAssistanceOOO_txt}    Our Customer Care Specialists are available Monday-Friday 8:00 am – 8:00 pm EST. While we are offline right now, we want to offer you the opportunity to send us additional information via an email form on Aflac.com
${lbl_MaxChat_furtherAssistance_txt}    Is there something else I can assist you with today?

${lbl_MaxChat_speakToCcs_txt}       Would you like to be connected with one of our Customer Care Specialists to further assist you?
${lbl_MaxChat_outOfHoursCcs_txt}    We're  sorry.  Our Chat Customer Care Specialists are available Monday-Friday 8:00 am – 8:00 pm EST. While we are offline right now, we want to offer you the opportunity to send us additional information via an email form on Aflac.com
...  ${SPACE}Please select which of these best describes your interest:
...  Claims
...  Customer Service

## ----- Agent Live Chat - Policy Information Flow ----- ##
${lbl_MaxChat_policyInfo_infoMessage_txt}    These are the most common policy information requests. Click on one of these or type your request in the text box below.
${lbl_MaxChat_policyInfo_setupDirectDeposit_Message_txt}    Click here to be taken directly to where you can enroll in or make changes to your direct deposit information 
${lbl_MaxChat_policyInfo_policyPremium_Message_txt}         Click here to be taken directly to where you can find out about your policy premium${SPACE}${SPACE}
${lbl_MaxChat_policyInfo_coveredBenefits_Message_txt}       Click here to be taken directly to where you can see the benefits covered under your policy
${lbl_MaxChat_policyInfo_policyNumber_Message_txt}          Click here to be taken directly to where you can find your policy number
${lbl_MaxChat_policyInfo_paidToDate_Message_txt}            Click here to be taken directly to where you can see when your policy is paid through
${lbl_MaxChat_policyInfo_policyStatus_Message_txt}          Click here to be taken directly to where you can find out the status of your policy
${lbl_MaxChat_policyInfo_coveredDependents_Message_txt}     Click here to be taken directly to where you can see who is covered under your policy
${lbl_MaxChat_policyInfo_servicingAgent_Message_txt}        Click here to be taken directly to where you can find out who your servicing agent is

## ----- Agent Live Chat - Policy Changes Flow ----- ##
${lbl_MaxChat_policyChanges_infoMessage_txt}    These are the most common policy change requests. Click on one of these or type your request in the text box below.
${lbl_MaxChat_policyChanges_addDropPerson_Message_txt}        Click here to be taken directly to where you can add a person to your policy
${lbl_MaxChat_policyChanges_mailingAddress_Message_txt}       Click here to be taken directly to where you can change your contact information
${lbl_MaxChat_policyChanges_bankDraft_Message_txt}            Click here to be taken directly to our Payment Authorization form
${lbl_MaxChat_policyChanges_changeBeneficiary_Message_txt}    Click here to be taken directly to where you can add a beneficiary to ${SPACE}or drop a beneficiary from your policy
${lbl_MaxChat_policyChanges_genderIdentity_Message_txt}       Click here to be taken directly to where you can learn more about changing your gender identity
${lbl_MaxChat_policyChanges_orderPolicyIdCard_Message_txt}    Click here to be taken directly to where you can order another Policy ID card
${lbl_MaxChat_policyChanges_reinstateMyPolicy_Message_txt}    Click here to be taken directly to where you can learn more about reinstating a policy which has lapsed

## ----- Agent Live Chat - Claim Center Flow ----- ##
${lbl_MaxChat_claimCenter_infoMessage_txt}    These are the most common claim requests. Click on one of these or type your request in the text box below.
${lbl_MaxChat_claimCenter_faxReceived_preQuestion_txt}    Was the information provided helpful in answering your question or resolving your issue?
${lbl_MaxChat_claimCenter_submitClaim_preQuestion_txt}    Was the information provided helpful in answering your question or resolving your issue?
${lbl_MaxChat_claimCenter_claimStatus_preQuestion_txt}    Was the information provided helpful in answering your question or resolving your issue?
${lbl_MaxChat_claimCenter_claimDenied_preQuestion_txt}    Was the information provided helpful in answering your question or resolving your issue?

## ----- Agent Live Chat - Learn About A Letter Flow ----- ##
${lbl_MaxChat_learnAboutALetter_infoMessage_txt}    Click here to be taken directly to where you can learn more about a letter your received from us

## ----- Agent Live Chat - Make Payments Flow ----- ##
${lbl_MaxChat_makePayments_infoMessage_txt}    Click here to be taken directly to where you can make a one time payment on your policy.

## ----- Agent Live Chat - Chat With CCS Flow ----- ##
${lbl_MaxChat_complianceMessage_txt}    All chats are monitored for quality assurance purposes. This is a secure chat session. Any sensitive information sent through this interaction will only be displayed to the Aflac Customer Care Specialist you are currently chatting with and masked in our system after that chat has ended.
${lbl_MaxChat_repsBusy_txt}    All of our representatives are currently busy. Please try again later, or email from the contact us page on Aflac.com 
${lbl_MaxChat_highVolumeOfChat_txt}    We are currently experiencing a high chat volume and all of our representatives are busy. Please try again at a later time or call us at 1-(855)-411-4427. Please select "Return to main menu" below to return to the Aflac Virtual Assistant.

${lbl_MaxChat_enterName_txt}      Please provide your first and last name.
${msg_MaxChat_provideUserName}    Jane Doe
${lbl_MaxChat_enterSSN_txt}       And now, can you give me the last four digits of your SSN.${SPACE}
${msg_MaxChat_provideSSN}         1234
${lbl_MaxChat_provideConnectionReason_txt}    What is the reason for contacting us today?
${msg_MaxChat_provideConnectionReason}        I have a max chat query.
${lbl_MaxChat_connectingToCcsQueue_txt}       Please wait while we connect you to an agent.
${msg_DMMaxChat_provideUserName}              Jane Doe         
${msg_DMMaxChat_provideConnectionReason}      I have a DM chat query.  

## ----- Agent Live Chat - Post Chat Survey Questions ----- ##
${provide_MaxChat_completedSurveyAnswer}    Completed The Max Chat Survey
