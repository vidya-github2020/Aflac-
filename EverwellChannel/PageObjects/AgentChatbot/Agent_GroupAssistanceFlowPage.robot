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
${opt_EverwellChat_groupAssistance_PlanYear}      xpath://button[@data-testid="Plan Year"]
${opt_EverwellChat_groupAssistance_Enrollment}    xpath://button[@data-testid="Enrollment"]
${opt_EverwellChat_groupAssistance_Escalation}    xpath://button[@data-testid="Escalation"]
${opt_EverwellChat_groupAssistance_TPI}           xpath://button[@data-testid="TPI"]

${lbl_EverwellChat_groupAccess}                               ${lbl_getChatBotSections}
${lbl_EverwellChat_groupAccessOOO}                            ${lbl_getChatBotSections}
${lbl_EverwellChat_groupAccess_typeOfAssistance}              ${lbl_getChatBotSections}
${lbl_EverwellChat_groupAccess_tpi_connectToCaseBuilder}      ${lbl_getChatBotSections}
${lbl_EverwellChat_groupAccess_tpi_reachOutToCaseBuilder}     ${lbl_getChatBotSections}

* Keywords
Begin an EverwellChat Group Assistance flow
    Select the EverwellChat Group Assistance option
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_groupAccess
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_groupAccessOOO
    END

Select the EverwellChat Group Assistance option and confirm no access to the account and connect to CCS
    [Arguments]    ${optYesNo}
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Do you have access to the EverwellChat group account    No
        Connect to an EverwellChat CCS    ${optYesNo}
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_groupAccessOOO
    END

Select the EverwellChat Group Assistance Plan Year option and connect to CCS
    [Arguments]    ${optYesNo}
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Do you have access to the EverwellChat group account    Yes
        Click the EverwellChat button    opt_EverwellChat_groupAssistance_PlanYear
        Connect to an EverwellChat CCS    ${optYesNo}
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_groupAccessOOO
    END

Select the EverwellChat Group Assistance Enrollment option and connect to CCS
    [Arguments]    ${optYesNo}
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Do you have access to the EverwellChat group account    Yes
        Click the EverwellChat button    opt_EverwellChat_groupAssistance_Enrollment
        Connect to an EverwellChat CCS    ${optYesNo}
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_groupAccessOOO
    END

Select the EverwellChat Group Assistance Escalation option and connect to CCS
    [Arguments]    ${optYesNo}
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Do you have access to the EverwellChat group account    Yes
        Click the EverwellChat button    opt_EverwellChat_groupAssistance_Escalation
        Connect to an EverwellChat CCS    ${optYesNo}
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_groupAccessOOO
    END

Select the EverwellChat Group Assistance TPI option
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Do you have access to the EverwellChat group account    Yes
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_groupAccess_typeOfAssistance
        Click the EverwellChat button    opt_EverwellChat_groupAssistance_TPI
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_groupAccessOOO
    END

Contact the EverwellChat case builder
    [Arguments]    ${optYesNo}
    Run Keyword    Get the CCGet the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_groupAccess_tpi_connectToCaseBuilder
        Have you contacted the EverwellChat case builder    ${optYesNo}
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_outOfHoursCcs
    END

Have you contacted the EverwellChat case builder
    [Arguments]    ${optYesNo}
    IF    '${optYesNo}'=='Yes'
        Run Keyword    Select the EverwellChat ${optYesNo} option 
    ELSE
        Run Keyword    Select the EverwellChat ${optYesNo} option
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_groupAccess_tpi_reachOutToCaseBuilder
    END


Do you have access to the EverwellChat group account
    [Arguments]    ${optYesNo}
    IF    '${optYesNo}'=='Yes'
        Run Keyword    Select the EverwellChat ${optYesNo} option 
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_groupAccess_typeOfAssistance
    ELSE
        Run Keyword    Select the EverwellChat ${optYesNo} option
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_speakToCcs
    END

