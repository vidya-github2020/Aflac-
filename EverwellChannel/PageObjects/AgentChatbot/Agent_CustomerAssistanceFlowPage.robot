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
${lbl_EverwellChat_escalationStatus}    ${lbl_getChatBotSections}

* Keywords
Begin an EverwellChat Customer Assistance flow
    Select the EverwellChat Customer Assistance option
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_escalationStatus

Select the EverwellChat inquiring about an escalation status option
    [Arguments]    ${optYesNo}
    Run Keyword    Select the EverwellChat ${optYesNo} option
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_speakToCcs
    ELSE
        Check if the EverwellChat out of hours message is displayed
    END

