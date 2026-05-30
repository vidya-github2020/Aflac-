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
${opt_MaxChat_agent_connectToAflacRep}    xpath://a[contains(@data-test-id,'2017012416093801863111') and contains(text(),'Continue')]
${opt_MaxChat_startPostChatSurvey}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(1)_1')]
${opt_MaxChat_ccsReturnToMainMenu}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(2)_1')]

${lbl_MaxChat_speakToCcs}                 ${lbl_getChatBotSections}
${lbl_MaxChat_outOfHoursCcs}              ${lbl_getChatBotSections}
${lbl_MaxChat_complianceMessage}          ${lbl_getChatBotSections}
${lbl_MaxChat_repsBusy}                   ${lbl_getChatBotSections}
${lbl_MaxChat_highVolumeOfChat}           ${lbl_getChatBotSections}
${lbl_MaxChat_enterName}                  ${lbl_getChatBotSections}
${lbl_MaxChat_enterSSN}                   ${lbl_getChatBotSections}
${lbl_MaxChat_provideConnectionReason}    xpath://span[(text()='What is the reason for contacting us today?')]
${lbl_MaxChat_connectingToCcsQueue}       ${lbl_getChatBotSections}
${fld_DMliveChatTextarea}                 xpath://textarea[contains(@data-testid,'type_a_message') and contains(@placeholder,'Type a message')]

* Keywords
Select the MaxChat CCS Return To Main Menu option
    Wait for Chatbot System loading icon to complete
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait Until Element Is Visible    ${opt_MaxChat_ccsReturnToMainMenu}     timeout=${mTimeout}
        Click the MaxChat button    opt_MaxChat_ccsReturnToMainMenu
        Verify that the MaxChat live chat message is displayed lbl_MaxChat_mainMenuMessage
    ELSE
        Do Nothing
    END

Would you like to chat with a MaxChat CCS
    Switch to the AgentChatbot browser
    Run Keyword    Get the MaxChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the MaxChat LandingPage Chat With A Care Specialist option
        Select the MaxChat Connect Me With An Aflac Representative option
        Enter the MaxChat user connection details
    ELSE
        Do Nothing
    END

Select the MaxChat ${FlowOption} Chat With A Care Specialist option
    Run Keyword    Get the MaxChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Click the MaxChat button    opt_MaxChat_${FlowOption}_ChatWithCcs
    ELSE
        Do Nothing
    END

Would you like to chat with a MaxChat ${FlowOption} CCS
    Run Keyword    Get the MaxChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the MaxChat Connect Me With An Aflac Representative option
        Check if you are required to connect to the MaxChat ccs
    ELSE
        Do Nothing
    END

Confirm connection with a MaxChat CCS
    [Arguments]    ${optYesNo}
    Run Keyword    Get the MaxChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        If MaxChat CCS is in hours    ${optYesNo}
    ELSE
        If MaxChat CCS is out of hours    ${optYesNo}
    END

If MaxChat CCS is in hours
    [Arguments]    ${optYesNo}
    IF    '${optYesNo}'=='Yes'
        Run Keyword    Select the MaxChat ${optYesNo} option
        Select the MaxChat Connect Me With An Aflac Representative option
    ELSE
        Run Keyword    Select the MaxChat ${optYesNo} option
        Verify that the MaxChat live chat message is displayed lbl_MaxChat_wrapUp
    END

If MaxChat CCS is out of hours
    [Arguments]    ${optYesNo}
    IF    '${optYesNo}'=='Yes'
        Run Keyword    Select the MaxChat ${optYesNo} option
        Verify that the MaxChat live chat message is displayed lbl_MaxChat_helpToResolve_furtherAssistanceOOO
        Select the MaxChat Start Post Chat Survey option
        Would you like to complete the MaxChat survey    No
    ELSE
        Run Keyword    Select the MaxChat ${optYesNo} option
        Verify that the MaxChat live chat message is displayed lbl_MaxChat_wrapUp
    END

Select the MaxChat Connect Me With An Aflac Representative option
    Run Keyword    Get the MaxChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Check if all the MaxChat CCS are busy
    ELSE
        The agent returns to the MaxChat live chat main menu
    END

Check if all the MaxChat CCS are busy
    Register Keyword To Run On Failure    Do Nothing 
    ${status}=    Run Keyword And Return Status    Verify that the MaxChat live chat message is displayed lbl_MaxChat_repsBusy
    IF    '${status}'=='True'
        The agent returns to the MaxChat live chat main menu
    ELSE 
        Select the MaxChat Compliance Connect me to a CCS option
    END

Select the MaxChat Compliance Connect me to a CCS option
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_complianceMessage
    Click the MaxChat button    opt_MaxChat_agent_connectToAflacRep
    ${present}=  Run Keyword And Return Status    Verify that the MaxChat live chat message is displayed lbl_MaxChat_enterName
    ${present}=  Run Keyword If    not ${present}    Run Keyword And Return Status     Verify that the MaxChat live chat message is displayed lbl_MaxChat_repsBusy    ELSE    Set Variable    ${present}    Run Keyword If    not ${present}    Fail    Element is not present on the page

Check if you are required to connect to the MaxChat ccs
    ${status}=    Run Keyword And Return Status    Verify that the MaxChat live chat message is displayed lbl_MaxChat_enterName
    IF    '${status}'=='True'
        Enter the MaxChat user connection details
        Check if you need to end the MaxChat chat to ccs session
    ELSE 
        Do Nothing
    END

Select the MaxChat Start Post Chat Survey option
    Click the MaxChat button    opt_MaxChat_startPostChatSurvey

Enter the MaxChat user connection details
    Enter the MaxChat user first and last name
    #Enter the MaxChat user SSN
    Enter the MaxChat user reason for contacting

Enter the MaxChat user first and last name
    Input Text    ${fld_liveChatTextarea}    ${msg_MaxChat_provideUserName}    clear=True
    Select the MaxChat Send Message button
    #Verify that the MaxChat live chat message is displayed lbl_MaxChat_enterSSN

Enter the MaxChat user SSN
    Input Text    ${fld_liveChatTextarea}    ${msg_MaxChat_provideSSN}    clear=True
    Select the MaxChat Send Message button
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_provideConnectionReason

Enter the MaxChat user reason for contacting
    Input Text    ${fld_liveChatTextarea}    ${msg_MaxChat_provideConnectionReason}    clear=True
    Select the MaxChat Send Message button
    #Verify that the MaxChat live chat message is displayed lbl_MaxChat_connectingToCcsQueue

Check if you need to end the MaxChat chat to ccs session
    Switch to the AgentChatbot browser
    Register Keyword To Run On Failure    Do Nothing
    Sleep    1s
    Run Keyword    Select the MaxChat other actions icon as a agent
    Sleep    2s
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Enabled    ${btn_agent_endChat}    timeout=${mTimeout}
    IF    '${status}'=='True'
        Select the MaxChat end chat option as a agent
    ELSE
        Do Nothing
    END

The MaxChat agent adds a comment to complete the experience survey
    [Arguments]    ${surveyComment}
    Sleep    1s
    Verify that the MaxChat live chat message is displayed lbl_additionalSurveyComments
    Input Text    ${fld_liveChatTextarea}    ${surveyComment}    clear=True
    Select the MaxChat Send Message button
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_thankYouMessage

The MaxChat agent adds a comment to complete the post chat survey
    [Arguments]    ${surveyComment}
    Run Keyword    Get the MaxChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the MaxChat live chat message is displayed lbl_additionalSurveyComments
        Input Text    ${fld_liveChatTextarea}    ${surveyComment}    clear=True
        Select the MaxChat Send Message button
        Verify that the MaxChat live chat message is displayed lbl_MaxChat_thankYouMessage
    ELSE
        Do Nothing
    END
Enter the DM MaxChat user connection details
    #Enter the DM MaxChat user first and last name
    Enter the DM MaxChat user reason for contacting

Enter the DM MaxChat user first and last name
    Switch to the MaxCcsPortal browser
    Wait Until Element Is Visible    ${fld_DMliveChatTextarea}    timeout=${mTimeout}
    Input Text    ${fld_DMliveChatTextarea}    ${msg_DMMaxChat_provideUserName}    clear=True
    Sleep    3s    
    Click Element    ${btn_DMtextareaSendKeys} 

Enter the DM MaxChat user reason for contacting
    Switch to the MaxCcsPortal browser
    Wait Until Element Is Visible    ${lbl_MaxChat_provideConnectionReason}    timeout=${mTimeout}
    Input Text    ${fld_DMliveChatTextarea}    ${msg_DMMaxChat_provideConnectionReason}    clear=True
    Sleep    3s    
    Click Element    ${btn_DMtextareaSendKeys}     
    
