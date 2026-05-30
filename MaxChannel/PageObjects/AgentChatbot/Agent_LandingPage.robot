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
## ----- Main Menu Options ----- ##
${opt_MaxChat_PolicyInformation}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(1)_1')]
${opt_MaxChat_PolicyChanges}        xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(2)_1')]
${opt_MaxChat_ClaimCenter}          xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(3)_1')]
${opt_MaxChat_LearnAboutALetter}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(4)_1')]
${opt_MaxChat_MakePayments}         xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(5)_1')]
${opt_MaxChat_LandingPage_ChatWithCCS}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(6)_1')]

## ----- Chat Bot Sections ----- ##
${lbl_MaxChat_welcomeMessageChat}                    ${lbl_getChatBotSections}
${lbl_MaxChat_welcomeMessageChatOOO}                 ${lbl_getChatBotSections}
${lbl_MaxChat_mainMenuMessage}                       ${lbl_getChatBotSections}
${lbl_MaxChat_thankYouMessage}                       ${lbl_getChatBotSections}
${lbl_MaxChat_wrapUp}                                ${lbl_getChatBotSections}
${lbl_MaxChat_wrapUpOOO}                             ${lbl_getChatBotSections}
${lbl_MaxChat_unknownInputMenuMessage}               ${lbl_getChatBotSections}
${lbl_MaxChat_helpToResolveMessage}                  ${lbl_getChatBotSections}
${lbl_MaxChat_helpToResolve_furtherAssistance}       ${lbl_getChatBotSections}
${lbl_MaxChat_helpToResolve_furtherAssistanceOOO}    ${lbl_getChatBotSections}
${lbl_MaxChat_furtherAssistance}                     ${lbl_getChatBotSections}

* Keywords
Select the MaxChat Policy Information option
    Click the MaxChat button    opt_MaxChat_PolicyInformation

Select the MaxChat Policy Changes option
    Click the MaxChat button    opt_MaxChat_PolicyChanges

Select the MaxChat Claim Center option
    Click the MaxChat button    opt_MaxChat_ClaimCenter

Select the MaxChat Learn About A Letter option
    Click the MaxChat button    opt_MaxChat_LearnAboutALetter

Select the MaxChat Make Payments option
    Click the MaxChat button    opt_MaxChat_MakePayments

