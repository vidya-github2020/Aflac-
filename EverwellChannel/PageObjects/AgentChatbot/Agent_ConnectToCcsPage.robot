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
${gCoBrowserConnectionId}
${opt_EverwellChat_agent_connectToAflacRep}    xpath://button[@data-testid="Chat With Agent"]//span[contains(text(),'Continue')] 
${opt_EverwellChat_ccsReturnToMainMenu}        xpath://button[@data-testid="Return to Main Menu"]
${btn_EverwellChat_LaunchCoBrowse}             ${btn_LaunchCoBrowse}
${input_EverwellChat_CoBrowseSessionID}        ${input_CoBrowseSessionID}

${lbl_EverwellChat_outOfHoursCcs}                ${lbl_getChatBotSections}
${lbl_EverwellChat_speakToCcs}                   ${lbl_getChatBotSections}
${lbl_EverwellChat_complianceMessage}            ${lbl_getChatBotSections}
${lbl_EverwellChat_repsBusy}                     ${lbl_getChatBotSections}
${lbl_EverwellChat_enterName}                    ${lbl_getChatBotSections}
${lbl_EverwellChat_highVolumeOfChat}             ${lbl_getChatBotSections}
${lbl_EverwellChat_provideUserWritingNumber}     ${lbl_getChatBotSections}
${lbl_EverwellChat_provideConnectionReason}      ${lbl_getChatBotSections}
${lbl_EverwellChat_connectingToCcsQueue}         ${lbl_getChatBotSections}

* Keywords
Select the EverwellChat CCS Return To Main Menu option
    Wait for Chatbot System loading icon to complete
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait Until Element Is Visible    ${opt_EverwellChat_ccsReturnToMainMenu}     timeout=${mTimeout}
        Click the EverwellChat button    opt_EverwellChat_ccsReturnToMainMenu
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_mainMenuMessage
    ELSE
        Do Nothing
    END
    
Begin an EverwellChat Chat With A Care Specialist flow
    Select the EverwellChat Chat With A Care Specialist option
   
Select the EverwellChat Connect Me With An Aflac Representative option
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        ${status}=    Run Keyword And Return Status    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_complianceMessage
        IF    '${status}'=='True'
            Check if all the EverwellChat CCS are busy
            Check if the EverwellChat CCS is available
        ELSE
            Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_highVolumeOfChat
            Select the EverwellChat Everwell Assistance Return To Main Menu option
        END
    ELSE
        The agent returns to the EverwellChat live chat main menu
    END

Check if all the EverwellChat CCS are busy
    Register Keyword To Run On Failure    Do Nothing
    Wait for Chatbot System loading icon to complete
    ${status}=    Run Keyword And Return Status    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_repsBusy
    IF    '${status}'=='True'
        The agent returns to the EverwellChat live chat main menu
    ELSE
        Click the EverwellChat button    opt_EverwellChat_agent_connectToAflacRep
    END

Check if the EverwellChat CCS is available
    Register Keyword To Run On Failure    Do Nothing
    Wait for Chatbot System loading icon to complete
    ${status}=    Run Keyword And Return Status    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_repsBusy
    IF    '${status}'=='True'
        The agent returns to the EverwellChat live chat main menu
    ELSE
        Check if the EverwellChat live chat cookie has loaded
    END

Check if the EverwellChat live chat cookie has loaded
    Register Keyword To Run On Failure    Do Nothing
    Wait for Chatbot System loading icon to complete
    ${status}=    Run Keyword And Return Status    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_connectingToCcsQueue
    IF    '${status}'=='True'
        Do Nothing
    ELSE
        Check if the EverwellChat cookie failed to load
    END
    [Teardown]    Register Keyword To Run On Failure    Capture Page Screenshot

Check if the EverwellChat cookie failed to load
    Register Keyword To Run On Failure    Do Nothing
    Wait for Chatbot System loading icon to complete
    ${status}=    Run Keyword And Return Status    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_enterName
    IF    '${status}'=='True'
        Enter the EverwellChat user connection details
    ELSE
        Check if you are required to enter a contact reason or the EverwellChat CCS is not available
    END

Check if you are required to enter a contact reason or the EverwellChat CCS is not available
    Register Keyword To Run On Failure    Do Nothing
    Wait for Chatbot System loading icon to complete
    ${status}=    Run Keyword And Return Status    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_provideConnectionReason
    IF    '${status}'=='True'
        Enter the EverwellChat user reason for contacting    ${msg_EverwellChat_provideConnectionReason}
    ELSE 
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_highVolumeOfChat    
    END

Connect to an EverwellChat CCS
    [Arguments]    ${optYesNo}
    Switch to the AgentChatbot browser
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_speakToCcs
        Confirm connection with an EverwellChat CCS    ${optYesNo}
    ELSE
        Check if the EverwellChat out of hours message is displayed
    END

Check if the EverwellChat out of hours message is displayed
    ${present}=  Run Keyword And Return Status    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_outOfHoursCcs
    ${present}=  Run Keyword If    not ${present}    Run Keyword And Return Status    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_welcomeMessageChatOOO    ELSE    Set Variable    ${present}    Run Keyword If    not ${present}    Fail    None of the elements is present on the page

Confirm connection with an EverwellChat CCS
    [Arguments]    ${optYesNo}
    IF    '${optYesNo}'=='Yes'
        Run Keyword    Select the EverwellChat ${optYesNo} option
        Select the EverwellChat Connect Me With An Aflac Representative option
    ELSE
        Run Keyword    Select the EverwellChat ${optYesNo} option
    END

Enter the EverwellChat user connection details
    Enter the EverwellChat user first and last name
    Enter the EverwellChat user writing number
    Enter the EverwellChat user reason for contacting    ${msg_EverwellChat_provideConnectionReason}

Enter the EverwellChat user first and last name
    Input Text    ${fld_liveChatTextarea}    ${msg_EverwellChat_provideUserName}    clear=True
    Select the EverwellChat Send Message button
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_provideUserWritingNumber

Enter the EverwellChat user writing number
    Input Text    ${fld_liveChatTextarea}    ${msg_EverwellChat_provideUserWritingNumber}    clear=True
    Select the EverwellChat Send Message button
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_provideConnectionReason

Enter the EverwellChat user reason for contacting
    [Arguments]    ${inputText}
    Input Text    ${fld_liveChatTextarea}    ${inputText}    clear=True
    Select the EverwellChat Send Message button
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_connectingToCcsQueue

Check if you need to end the EverwellChat chat to ccs session and ${acceptRejectOption} the post chat survey
    Switch to the AgentChatbot browser
    ${status}=    Run Keyword And Return Status    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_highVolumeOfChat
    IF    '${status}'=='True'
        Do Nothing
    ELSE
        IF    '${acceptRejectOption}'=='reject'
            The EverwellChat agent ends the live chat session and rejects the post chat survey
        ELSE
            The EverwellChat agent ends the live chat session and accepts the post chat survey
            The EverwellChat agent selects an answer for the howEasySurvey question
            The EverwellChat agent selects an answer for the howWellSurvey question
            # The EverwellChat agent selects an answer for the howLikelySurvey question
            Run Keyword    The EverwellChat agent adds a comment to complete the post chat survey ${provide_EverwellChat_agentSurveyComment}
        END
    END

