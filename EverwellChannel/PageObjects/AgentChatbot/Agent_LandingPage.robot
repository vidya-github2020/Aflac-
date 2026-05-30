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
## ----- Main Menu Options ----- ##
${opt_EverwellChat_userOptions}                  xpath://a[contains(@name, 'pySimulatorChoice_Message.pyChoices')]
${opt_EverwellChat_CustomerAssistance}           xpath://button[@data-testid="Direct to Customer Assistance"]
${opt_EverwellChat_EverwellAssistance}           xpath://button[@data-testid="General Everwell Assistance"]
${opt_EverwellChat_EverwellTrainingResources}    xpath://button[@data-testid="Everwell 2.0 Reference Guide"]
${opt_EverwellChat_GroupAssistance}              xpath://button[@data-testid="Group Assistance"]
${opt_EverwellChat_ChatWithCCS}                  xpath://button[@data-testid="Other"]

## ----- Chat Bot Sections ----- ##
${lbl_EverwellChat_welcomeMessageChat}                    ${lbl_getChatBotSections}
${lbl_EverwellChat_welcomeMessageChatOOO}                 ${lbl_getChatBotSections}
${lbl_EverwellChat_welcomeMessageNoCookie}                ${lbl_getChatBotSections}
${lbl_EverwellChat_welcomeMessageNoCookieOOO}             ${lbl_getChatBotSections}
${lbl_EverwellChat_mainMenuMessage}                       ${lbl_getChatBotSections}
${lbl_EverwellChat_unknownInputMenuMessage}               ${lbl_getChatBotSections}
${lbl_EverwellChat_thankYouMessage}                       ${lbl_getChatBotSections}
${lbl_EverwellChat_furtherAssistance}                     ${lbl_getChatBotSections}
${lbl_EverwellChat_helpToResolveMessage}                  ${lbl_getChatBotSections}
${lbl_EverwellChat_helpToResolve_furtherAssistance}       ${lbl_getChatBotSections}
${lbl_EverwellChat_helpToResolve_furtherAssistanceOOO}    ${lbl_getChatBotSections}

* Keywords
Select the EverwellChat Customer Assistance option
    Click the EverwellChat button    opt_EverwellChat_CustomerAssistance

Select the EverwellChat Everwell Assistance option
    Click the EverwellChat button    opt_EverwellChat_EverwellAssistance

Select the EverwellChat Everwell Training Resources option
    Click the EverwellChat button    opt_EverwellChat_EverwellTrainingResources

Select the EverwellChat Group Assistance option
    Click the EverwellChat button    opt_EverwellChat_GroupAssistance

Select the EverwellChat Chat With A Care Specialist option
    Switch to the AgentChatbot browser
    Click the EverwellChat button    opt_EverwellChat_ChatWithCCS

