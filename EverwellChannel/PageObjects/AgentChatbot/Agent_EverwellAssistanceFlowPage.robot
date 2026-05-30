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
${opt_EverwellChat_everwellAssistance_AdvantageSupport}        xpath://a[contains(@data-test-id,'2017012416093801863111') and contains(text(),'Advantage')]
${opt_EverwellChat_everwellAssistance_LoginAndRegistration}    xpath://button[@data-testid="Login / Registration Assistance"]
${opt_EverwellChat_everwellAssistance_PartnerProducts}         xpath://button[@data-testid="Partner Products"]
${opt_EverwellChat_everwellAssistance_ValueAddedServices}      xpath://button[@data-testid="Value Added Services"]
${opt_EverwellChat_everwellAssistance_ReturnToMainMenu}        xpath://button[@data-testid="Return to Main Menu"]
${opt_EverwellChat_everwellAssistance_ChatWithCcs}             xpath://button[@data-testid="Other"]

${opt_EverwellChat_everwellAssistance_LandR_Agent}             xpath://button[@data-testid="Agent Role"]
${opt_EverwellChat_everwellAssistance_LandR_Admin}             xpath://button[@data-testid="Admin Role"]
${opt_EverwellChat_everwellAssistance_LandR_Employee}          xpath://button[@data-testid="Employee Role"]

${opt_EverwellChat_everwellAssistance_AdvantageSupport}           ${lbl_getChatBotSections}
${opt_EverwellChat_everwellAssistance_LoginAndRegistration}       ${lbl_getChatBotSections}
${opt_EverwellChat_everwellAssistance_PartnerProducts}            ${lbl_getChatBotSections}
${opt_EverwellChat_everwellAssistance_ValueAddedServices}         ${lbl_getChatBotSections}
${opt_EverwellChat_everwellAssistance_ReturnToMainMenu}           ${lbl_getChatBotSections}
${opt_EverwellChat_everwellAssistance_ChatWithCcs}                ${lbl_getChatBotSections}
${lbl_EverwellChat_everwellAssistance}                            ${lbl_getChatBotSections}
${lbl_EverwellChat_everwellAssistance_AdvantageSupportMessage}    ${lbl_getChatBotSections}
${lbl_EverwellChat_everwellAssistance_LoginAndRegistration}       ${lbl_getChatBotSections}
${lbl_EverwellChat_everwellAssistance_LandR_typeOfAssistance}     ${lbl_getChatBotSections}
${lbl_EverwellChat_everwellAssistance_LandR_assistance}           ${lbl_getChatBotSections}

* Keywords
Begin an EverwellChat Everwell Assistance flow
    Select the EverwellChat Everwell Assistance option
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_everwellAssistance

Select the EverwellChat Everwell Assistance Advantage Support option
    Click the EverwellChat button    opt_EverwellChat_everwellAssistance_AdvantageSupport
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_everwellAssistance_AdvantageSupportMessage
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_helpToResolveMessage

Select the EverwellChat Everwell Assistance Login and Registration option
    Click the EverwellChat button    opt_EverwellChat_everwellAssistance_LoginAndRegistration
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_everwellAssistance_LoginAndRegistration

Redirect to the EverwellChat Login and Registration resources
    [Arguments]    ${optYesNo}
    Run Keyword    Select the EverwellChat ${optYesNo} option

Select the EverwellChat Everwell Assistance Partner Products option
    Click the EverwellChat button    opt_EverwellChat_everwellAssistance_PartnerProducts

Select the EverwellChat Everwell Assistance Value Added Services option
    Click the EverwellChat button    opt_EverwellChat_everwellAssistance_ValueAddedServices

Select the EverwellChat Everwell Assistance Return To Main Menu option
    Click the EverwellChat button    opt_EverwellChat_everwellAssistance_ReturnToMainMenu

Select the EverwellChat Everwell Assistance Chat With Ccs option
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Click the EverwellChat button    opt_EverwellChat_everwellAssistance_ChatWithCcs
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_speakToCcs
    ELSE
        Click the EverwellChat button    opt_EverwellChat_everwellAssistance_ChatWithCcs
    END
    
Select the EverwellChat Everwell Assistance Login And Registration ${larOption} option
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_everwellAssistance_LandR_typeOfAssistance
        Click the EverwellChat button    opt_EverwellChat_everwellAssistance_LandR_${larOption}
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_helpToResolve_furtherAssistance
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_everwellAssistance_LandR_typeOfAssistance
        Click the EverwellChat button    opt_EverwellChat_everwellAssistance_LandR_${larOption}
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_helpToResolve_furtherAssistanceOOO
    END

Did the Everwell Advantage Support information resolve your issue in the EverwellChat
    [Arguments]    ${optYesNo}
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_helpToResolveMessage
    Run Keyword    Select the EverwellChat ${optYesNo} option

Connect to an EverwellChat Everwell Assistance CCS
    [Arguments]    ${optYesNo}
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Connect to an EverwellChat CCS    ${optYesNo}
    ELSE
        Do Nothing
    END

