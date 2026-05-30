###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}EverwellChannel${/}Settings.resource

* Variables
${btn_liveChat_txt}          Chat With Us
${lbl_liveChatHeader_txt}    Chat with Aflac

${lbl_EverwellChat_welcomeMessageChat_txt}    Welcome to the Aflac Associate Virtual Assistant.
 
${lbl_EverwellChat_welcomeMessageChatOOO_txt}    Hello {USERNAME}. Welcome to the Aflac Virtual Assistant. We are currently outside of business hours (Monday-Friday 8:00 am – 8:00 pm EST) and our Customer Care Specialists are unavailable.
...  ${SPACE}At any time, type Menu in the text box to return to the Main Menu.
...  ${SPACE}You are at the Main Menu. Click on one of the topic links or type your request in the text box below.
...  ${SPACE}Please click here to learn more about the features available in Everwell Chat.

${lbl_EverwellChat_welcomeMessageNoCookie_txt}    Welcome to the Aflac Virtual Assistant. There are a number of things that I can assist you with, including many frequently asked requests.
...  ${SPACE}At any time, type Menu in the text box to return to the Main Menu.
...  ${SPACE}You are at the Main Menu. Click on one of the topic links or type your request in the text box below.
...  ${SPACE}Please click here to learn more about the features available in Everwell Chat.

${lbl_EverwellChat_welcomeMessageNoCookieOOO_txt}    Welcome to the Aflac Virtual Assistant. We are currently outside of business hours (Monday-Friday 8:00 am – 8:00 pm EST) and our Customer Care Specialists are unavailable.
...  ${SPACE}At any time, type Menu in the text box to return to the Main Menu.
...  ${SPACE}You are at the Main Menu. Click on one of the topic links or type your request in the text box below.
...  ${SPACE}Please click here to learn more about the features available in Everwell Chat.

${lbl_EverwellChat_mainMenuMessage_txt}    You are at the Main Menu. Click on the topic link that best matches the type of Everwell assistance you are looking for.
${lbl_EverwellChat_thankYouMessage_txt}    Thank you for contacting Aflac!
${lbl_EverwellChat_helpToResolveMessage_txt}    Was the information provided helpful in answering your question or resolving your issue?
${lbl_EverwellChat_helpToResolve_furtherAssistance_txt}    We’re sorry the information was not helpful or that we could not resolve your issue.
...  ${SPACE}Would you like to be connected with one of our Customer Care Specialists to further assist you?
${lbl_EverwellChat_helpToResolve_furtherAssistanceOOO_txt}    We’re sorry the information was not helpful or that we could not resolve your issue.
...  ${SPACE}Our Customer Care Specialists are available Monday-Friday 8:00 am – 8:00 pm EST. Please reach back to us during those hours for additional assistance.
${lbl_EverwellChat_furtherAssistance_txt}    Is there something else I can assist you with today?
${lbl_EverwellChat_speakToCcs_txt}    I can connect you with a Customer Care Specialist and provide them with the information you furnish. Would you like to speak with an Aflac Customer Care Specialist?
${lbl_EverwellChat_outOfHoursCcs_txt}    Our Customer Care Specialists are available Monday-Friday 8:00 am – 8:00 pm EST. Please reach back to us during those hours for additional assistance.
${lbl_EverwellChat_unknownInputMenuMessage_txt}    Sorry, but I'm having trouble understanding what you've just said. Could you try selecting an option that is closest to what you want.

## ----- User Live Chat - Customer Assistance Flow ----- ##
${lbl_EverwellChat_escalationStatus_txt}    Are you inquiring about an escalation status?

## ----- User Live Chat - Everwell Assistance Flow ----- ##
${lbl_EverwellChat_everwellAssistance_txt}    Click on the link that best matches the type of Everwell assistance you are looking for.
${lbl_EverwellChat_everwellAssistance_AdvantageSupportMessage_txt}    Click here to be directed to the Everwell Advantage support page for Agent-Assisted Direct Materials/Resources, Everwell Advantage Integration Solutions, Training Resources, etc.
${lbl_EverwellChat_everwellAssistance_LoginAndRegistration_txt}    Would you like me to direct you to a reference page that contains resources/videos to assist you with topics that include (but are not limited to):
...  ${SPACE*4}- Password reset
...  ${SPACE*4}- Employee first time login
...  ${SPACE*4}- Logging in to the Everwell platform
...  ${SPACE*4}- Single Sign On
${lbl_EverwellChat_everwellAssistance_LandR_typeOfAssistance_txt}    What type of login assistance is needed?
${lbl_EverwellChat_everwellAssistance_LandR_assistance_txt}    Great. Please click here and navigate to the “Training” tab to be directed to a list of tutorial videos and documents that will help you get the information you need.

## ----- User Live Chat - Everwell Training Resources Flow ----- ##
${lbl_EverwellChat_everwellTrainingResourcesLink_txt}    Ok. Click here and I’ll open the page where you can access the document.

## ----- User Live Chat - Group Assistance Flow ----- ##
${lbl_EverwellChat_groupAccess_txt}    Ok.. And do you have access to the account?
${lbl_EverwellChat_groupAccess_typeOfAssistance_txt}    What type of assistance do you need?
${lbl_EverwellChat_groupAccess_tpi_connectToCaseBuilder_txt}    Have you contacted the case builder?
${lbl_EverwellChat_groupAccess_tpi_reachOutToCaseBuilder_txt}    Please reach out to the case builder.
${lbl_EverwellChat_groupAccessOOO_txt}    Our Customer Care Specialists are available Monday-Friday 8:00 am – 8:00 pm EST. Please reach back to us during those hours for additional assistance.

## ----- User Live Chat - Chat With CCS Flow ----- ##
${lbl_EverwellChat_complianceMessage_txt}    All chats are monitored for quality assurance purposes. This is a secure chat session. Any sensitive information sent through this interaction will only be displayed to the Aflac Customer Care Specialist you are currently chatting with and masked in our system after that chat has ended.
${lbl_EverwellChat_repsBusy_txt}    All of our representatives are currently busy. Please call us at 1-(855)-411-4427${SPACE}
${lbl_EverwellChat_highVolumeOfChat_txt}    All of our representatives are currently busy. Please call us at 1-(855)-411-4427

${lbl_EverwellChat_enterName_txt}      Please provide your first and last name.
${msg_EverwellChat_provideUserName}    Jane Doe
${lbl_EverwellChat_provideUserWritingNumber_txt}    Thanks Jane Doe. Please provide your writing number.
${msg_EverwellChat_provideUserWritingNumber}        ABC123
${lbl_EverwellChat_provideConnectionReason_txt}     What is the reason for contacting us today?
${msg_EverwellChat_provideConnectionReason}         I have a query regarding my Everwell account.
${lbl_EverwellChat_connectingToCcsQueue_txt}        Please wait while we connect you to an agent.
${provide_EverwellChat_agentSurveyComment}          Completed the Everwell post chat survey

