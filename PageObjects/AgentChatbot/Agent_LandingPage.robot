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
## ----- Main Menu Options ----- ##
${opt_PolicyHolderChat_userOptions}            xpath://a[contains(@name, 'pySimulatorChoice_Message.pyChoices')]
${opt_PolicyHolderChat_ClaimCenter}            xpath://button[@data-testid="Load Claim Choices"]
${opt_PolicyHolderChat_PolicyInformation}      xpath://button[@data-testid="Policy Information"]
${opt_PolicyHolderChat_PolicyChanges}          xpath://button[@data-testid="Make Policy Changes"]
${opt_PolicyHolderChat_MyAccount}              xpath://button[@data-testid="reset account password"]
${opt_PolicyHolderChat_LearnAboutALetter}      xpath://button[@data-testid="letter code"]
${opt_PolicyHolderChat_MakePayments}           xpath://button[@data-testid="Payments Menu"]
${opt_PolicyHolderChat_ChatWithCCS}            xpath://button[@data-testid="Initiate Live Chat"]
${btn_PolicyHolderChat_LaunchCoBrowse}         ${btn_LaunchCoBrowse}
${input_PolicyHolderChat_CoBrowseSessionID}    ${input_CoBrowseSessionID}
${opt_PolicyHolderDMChat_MyAccount}            xpath://button[contains(@aria-label,'Update My Account')]

##---- DM ChatBot Sections ------##
${opt_DMPolicyHolderChat_LearnAboutALetter}                     xpath://*[contains(text(),'Learn About A Letter')]

## ----- Chat Bot Sections ----- ##
${lbl_PolicyHolderChat_welcomeMessageChat}                    ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_welcomeMessageChatOOO}                 ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_mainMenuMessage}                       ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_unknownInputMenuMessage}               ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_thankYouMessage}                       ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_furtherAssistance}                     ${lbl_getChatBotSections}
${lbl_PolicyHolderDMChat_furtherAssistance}                   ${lbl_DMChatBotSections}   
${lbl_PolicyHolderChat_requireAssistance}                     ${lbl_getChatBotSections}
${lbl_PolicyHolderDMChat_requireAssistance}                   ${lbl_DMChatBotSections}   
${lbl_PolicyHolderChat_chatEnded}                             ${lbl_getChatBotSections}
${lbl_PolicyHolderDMChat_chatEnded}                           ${lbl_DMChatBotSections}   
${lbl_PolicyHolderChat_helpToResolveMessage}                  ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_helpToResolve_furtherAssistance}       ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_helpToResolve_furtherAssistanceOOO}    ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_stopWorkingMessage}                    ${lbl_getChatBotSections}
${lbl_PolicyHolderDMChat_helpToResolveMessage}                ${lbl_DMChatBotSections}
${lbl_PolicyHolderDMChat_helpToResolve_furtherAssistance}       ${lbl_DMChatBotSections}
${lbl_PolicyHolderDMChat_helpToResolve_furtherAssistanceOOO}    ${lbl_DMChatBotSections}
${lbl_PolicyHolderChat_furtherAssistancePH}                    ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_furtherAssistancePH2}                    ${lbl_getChatBotSections}

${btn_MaxChat_otherActions}           xpath://button[@data-testid='menu']
${btn_MaxChat_endChat}     	          xpath://span[text()='End session']
${btn_MaxChat_endSession}             xpath://button[@id='end-chat-button' and @title='End chat session']

* Keywords
Select the PolicyHolderChat Policy Information option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_PolicyInformation

Select the PolicyHolderChat Policy Changes option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_PolicyChanges
    Sleep    1s

Select the PolicyHolderChat Claim Center option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_ClaimCenter

Select the PolicyHolderChat My Account option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_MyAccount

Select the PolicyHolderDMChat My Account option
    Click the PolicyHolderChat button  opt_PolicyHolderDMChat_MyAccount

Select the PolicyHolderChat Learn About A Letter option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_LearnAboutALetter

Select the PolicyHolderChat Make Payments option
    Click the PolicyHolderChat button    opt_PolicyHolderChat_MakePayments

Select the PolicyHolderChat Chat With A Care Specialist option
    Switch to the AgentChatbot browser
    Click the PolicyHolderChat button    opt_PolicyHolderChat_ChatWithCCS

Select the PolicyHolderDMChat Learn About A Letter option
    Click the PolicyHolderChat button        opt_DMPolicyHolderChat_LearnAboutALetter

End the DM Chat live chat session
    Wait for Chatbot System loading icon to complete
    Wait Until Element Is Visible    ${btn_MaxChat_otherActions}    timeout=${xlTimeout}
    Click Element    ${btn_MaxChat_otherActions}
    Click Element    ${btn_MaxChat_endChat}
    Wait Until Element Is Visible    ${btn_MaxChat_endSession}    timeout=${xlTimeout}
    Click Element    ${btn_MaxChat_endSession}
    Wait Until Element Is Not Visible    ${btn_MaxChat_otherActions}    timeout=${xlTimeout}
    Unselect Frame
