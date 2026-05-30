###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}AgentChannel${/}Settings.resource

* Variables
${opt_AgentChat_agent_connectToAflacRep}    xpath://button[contains(@data-testid,'Connect to Agent')]
${opt_AgentChat_claimsQuery}         xpath://button[contains(@data-testid,'ClaimsQueue')]
#//span[contains(@class,'sc-gsFSXq cukbnZ') and contains(text(),'Claims')]
${opt_AgentChat_everwellQuery}       xpath://button[contains(@data-testid,'Agent')]
${opt_AgentChat_generalQuery}        xpath://button[contains(@data-testid,'AssociateGeneralQueue')]
${opt_AgentChat_ReturnToMainMenu}    xpath://button[contains(@data-testid,'Return to main menu')]
@{opt_AgentChat_areYouAssistingOptions}    Yes  No
${opt_AgentChat_ccsReturnToMainMenu}       ${opt_AgentChat_ReturnToMainMenu}
#xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(2)_1')]

## ----- Chat Bot Sections ----- ##
${lbl_AgentChat_mainMenuMessage}         ${lbl_getChatBotSections}
${lbl_AgentChat_mainMenuMessageOOO}      ${lbl_getChatBotSections}
${lbl_AgentChat_complianceMessage}       ${lbl_getChatBotSections}
${lbl_AgentChat_ccsHelpMessage}          ${lbl_getChatBotSections}
${lbl_AgentChat_theRepsBusy}             ${lbl_getChatBotSections}
${lbl_AgentChat_everwellRepsBusy}        ${lbl_getChatBotSections}
${lbl_AgentChat_claimsRepsBusy}          ${lbl_getChatBotSections}
${lbl_AgentChat_connectingToCcsQueue}    ${lbl_getChatBotSections}
${lbl_AgentChat_provideFirstLastName}    ${lbl_getChatBotSections}
${lbl_AgentChat_provideWritingNumber}    ${lbl_getChatBotSections}
${lbl_AgentChat_areYouAssisting}         ${lbl_getChatBotSections}
${lbl_AgentChat_generalHelpQuery}        ${lbl_getChatBotSections}
${lbl_AgentChat_ccsFurtherAssistance}    ${lbl_getChatBotSections}
${lbl_AgentChat_furtherAssistance}       ${lbl_getChatBotSections}
${lbl_AgentChat_ccsOtherAssistance}      ${lbl_getChatBotSections}
${lbl_AgentChat_ccsAssistance}           ${lbl_getChatBotSections}
${lbl_AgentChat_lbl_AgentChat_wellRpt}    ${lbl_getChatBotSections}
${lbl_AgentChat_provideSSNNumber}        ${lbl_getChatBotSections}
${lbl_AgentChat_provideReason}           ${lbl_getChatBotSections}

${lbl_AgentChat_complianceMessage_txt}    All chats are monitored for quality assurance purposes. This is a secure chat session. Any sensitive information sent through this interaction will only be displayed to the Aflac Customer Care Specialist you are currently chatting with and masked in our system after that chat has ended.

* Keywords
Select the AgentChat CCS Return To Main Menu option
    Wait for Chatbot System loading icon to complete
    Switch to the AgentChatbot browser
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait Until Element Is Visible    ${opt_AgentChat_ccsReturnToMainMenu}     timeout=${mTimeout}
        Click the AgentChat button    opt_AgentChat_ccsReturnToMainMenu
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_mainMenuMessage
    ELSE
        Do Nothing
    END



Select the AgentChat Claims option
    Switch to the AgentChatbot browser
    Click the AgentChat button    opt_AgentChat_claimsQuery

Select the AgentChat Everwell option
    Switch to the AgentChatbot browser
    Click the AgentChat button    opt_AgentChat_everwellQuery

Select the AgentChat Something Else option
    Switch to the AgentChatbot browser
    Click the AgentChat button    opt_AgentChat_generalQuery

Select the AgentChat New Business option
    Switch to the AgentChatbot browser
    Click the AgentChat button    opt_AgentChat_generalQuery

Select the AgentChat Return to Main Menu option
    Switch to the AgentChatbot browser
    Click the AgentChat button    opt_AgentChat_ReturnToMainMenu

Select the AgentChat Connect To An Aflac Representative option
    Switch to the AgentChatbot browser
    Click the AgentChat button    opt_AgentChat_agent_connectToAflacRep
    #Verify that the AgentChat live chat message is displayed lbl_AgentChat_connectingToCcsQueue

Verify that the AgentChat CCS is busy for the ${queueName} queue
    Switch to the AgentChatbot browser
    Select the AgentChat Chat With Aflac Customer Care Specialist option
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    lbl_AgentChat_claimsRepsBusy    ${mTimeout}
    IF    '${status}'=='True'
        IF    '${queueName}'=='everwell'
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_everwellRepsBusy
    ELSE IF    '${queueName}'=='claims'
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_claimsRepsBusy
    END
    # ELSE
    #     Verify that the AgentChat live chat message is displayed lbl_AgentChat_theRepsBusy
    # END
    ELSE
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_ccsHelpMessage
    END



Begin an AgentChat CCS chat
    [Arguments]    ${queueName}
    Select the AgentChat Chat With Aflac Customer Care Specialist option
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_ccsHelpMessage
    Click the AgentChat button    opt_AgentChat_${queueName}

Attempt an AgentChat CCS chat
    [Arguments]    ${queueName}
    Select the AgentChat Chat With Aflac Customer Care Specialist option
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_ccsHelpMessage
    Click the AgentChat button    opt_AgentChat_${queueName}
    IF    '${queueName}'=='Everwell'
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_everwellRepsBusy
    ELSE
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_theRepsBusy
    END

Select an AgentChat are you assisting option
    Switch to the AgentChatbot browser
    Wait Until Element Is Visible    ${lbl_AgentChat_areYouAssisting}     timeout=${mTimeout}
    ${randomOption}=    Get random option for the AgentChat Are You Assisting question
    ${YesNo}=    Convert To String    ${randomOption}
    Click the AgentChat button    opt_${YesNo}

The AgentChat agent provides the users name and writing number
    Sleep    1s
    Wait Until Element Is Visible    ${lbl_AgentChat_provideFirstLastName}     timeout=${mTimeout}
    Run Keyword    The AgentChat agent enters a live chat comment ${provide_AgentChat_agentName}
    Wait Until Element Is Visible    ${lbl_AgentChat_provideWritingNumber}     timeout=${mTimeout}
    Run Keyword    The AgentChat agent enters a live chat comment ${provide_AgentChat_agentWritingNumber}

The AgentChat agent provides the writing number
    Switch to the AgentChatbot browser
    Sleep    1s
    Wait Until Element Is Visible    ${lbl_AgentChat_provideWritingNumber}     timeout=${mTimeout}
    Run Keyword    The AgentChat agent enters a live chat comment ${provide_AgentChat_agentWritingNumber}

The AgentChat agent provides the users name
    Switch to the AgentChatbot browser
    Sleep    1s
    Wait Until Element Is Visible    ${lbl_AgentChat_provideFirstLastName}     timeout=${mTimeout}
    Run Keyword    The AgentChat agent enters a live chat comment ${provide_AgentChat_agentName}

The AgentChat agent provides a help comment
    Sleep    1s
    Switch to the AgentChatbot browser
    Wait Until Element Is Visible    ${lbl_AgentChat_generalHelpQuery}     timeout=${mTimeout}
    Run Keyword    The AgentChat agent enters a live chat comment ${provide_AgentChat_agentComment}

Get random option for the AgentChat Are You Assisting question
    ${randomOption}=  Evaluate  random.choice($opt_AgentChat_areYouAssistingOptions)  random
    RETURN    ${randomOption}

The AgentChat agent enters a reason comment
    Switch to the AgentChatbot browser
    Sleep    1s
    Wait Until Element Is Visible    ${lbl_AgentChat_provideReason}     timeout=${mTimeout}
    Run Keyword    The AgentChat agent enters a live chat comment ${provide_AgentChat_reason}

The AgentChat agent provides the user name and ssn number
    Switch to the AgentChatbot browser
    Sleep    1s
    Wait Until Element Is Visible    ${lbl_AgentChat_provideFirstLastName}     timeout=${mTimeout}
    Run Keyword    The AgentChat agent enters a live chat comment ${provide_AgentChat_agentName}
    Switch to the AgentChatbot browser
    Sleep    1s
    Wait Until Element Is Visible    ${lbl_AgentChat_provideSSNNumber}     timeout=${mTimeout}
    Run Keyword    The AgentChat agent enters a live chat comment ${provide_AgentChat_agentSSNNumber}
    Switch to the AgentChatbot browser
    Sleep    1s
    Wait Until Element Is Visible    ${lbl_AgentChat_provideReason}     timeout=${mTimeout}
    Run Keyword    The AgentChat agent enters a live chat comment ${provide_AgentChat_reason}

Select the AgentChat Connect Me With An Aflac Representative option
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        ${status}=    Run Keyword And Return Status    Verify that the AgentChat live chat message is displayed lbl_AgentChat_complianceMessage
        IF    '${status}'=='True'
            Check if all the AgentChat CCS are busy
            Check if the AgentChat CCS is available
        ELSE
            Verify that the AgentChat live chat message is displayed lbl_AgentChat_highVolumeOfChat
            Select the AgentChat AgentChat Assistance Return To Main Menu option
        END
    ELSE
        The agent returns to the AgentChat live chat main menu
    END

Check if all the AgentChat CCS are busy
    Register Keyword To Run On Failure    Do Nothing
    Wait for Chatbot System loading icon to complete
    ${status}=    Run Keyword And Return Status    Verify that the AgentChat live chat message is displayed lbl_AgentChat_theRepsBusy
    IF    '${status}'=='True'
        The agent returns to the AgentChat live chat main menu
    ELSE
        Click the AgentChat button    opt_AgentChat_agent_connectToAflacRep
    END

Check if the AgentChat CCS is available
    Register Keyword To Run On Failure    Do Nothing
    Wait for Chatbot System loading icon to complete
    ${status}=    Run Keyword And Return Status    Verify that the AgentChat live chat message is displayed lbl_AgentChat_theRepsBusy
    IF    '${status}'=='True'
        The agent returns to the AgentChat live chat main menu
    ELSE
        Check if the AgentChat live chat cookie has loaded
    END

Check if the AgentChat live chat cookie has loaded
    Register Keyword To Run On Failure    Do Nothing
    Wait for Chatbot System loading icon to complete
    ${status}=    Run Keyword And Return Status    Verify that the AgentChat live chat message is displayed lbl_AgentChat_connectingToCcsQueue
    IF    '${status}'=='True'
        Do Nothing
    ELSE
        Check if the AgentChat cookie failed to load
    END
    [Teardown]    Register Keyword To Run On Failure    Capture Page Screenshot

Check if the AgentChat cookie failed to load
    Register Keyword To Run On Failure    Do Nothing
    Wait for Chatbot System loading icon to complete
    ${status}=    Run Keyword And Return Status    Verify that the AgentChat live chat message is displayed lbl_AgentChat_enterName
    IF    '${status}'=='True'
        Enter the AgentChat user connection details
    END


