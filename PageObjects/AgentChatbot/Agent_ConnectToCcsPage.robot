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
${opt_PolicyHolderChat_agent_connectToAflacRep}          xpath://span[(@class="sc-gKXOVf iIzngj") and contains(text(),'Continue')]    #//a[contains(@data-test-id,'2017012416093801863111') and contains(text(),'Continue')]
${opt_PolicyHolderChat_ph_ClaimsRelated_ChatWithCCS}     xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(1)_1')]
${opt_PolicyHolderChat_ph_PaymentRelated_ChatWithCCS}    xpath://a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(2)_1')]
${opt_PolicyHolderChat_ccsReturnToMainMenu}              xpath://button[@data-testid="Return to Main Menu"]    #//a[contains(@data-test-id, '2017012416093801863111') and contains(@name,'pySimulatorChoice_Message.pyChoices(2)_1')]
${opt_PolicyHolderChat_agent_resideKentucky}          xpath://a[contains(@data-test-id,'2017012416093801863111') and contains(text(),'Yes')]
${opt_PolicyHolderChat_agent_returnToMainMenu}          xpath://a[contains(@data-test-id,'2017012416093801863111') and contains(text(),'Return To Main Menu')]

${lbl_PolicyHolderChat_outOfHoursCcs}              ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_speakToCcs}                 ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_complianceMessage}          ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_repsBusy}                   ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_enterName}                  ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_enterSSN}                   ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_highVolumeOfChat}           ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_provideConnectionReason}    ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_connectingToCcsQueue}       ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_ph_ccsConnectMessage}       ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_reside}                     ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_resideUnableToAssist}       ${lbl_getChatBotSections}
${lbl_PolicyHolderChat_mainMenuMessage}            ${lbl_getChatBotSections}
${lbl_PolicyHolderDMChat_mainMenuMessage}          ${lbl_DMChatBotSections}

* Keywords
Select the PolicyHolderChat CCS Return To Main Menu option
    Wait for Chatbot System loading icon to complete
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait Until Element Is Visible    ${opt_PolicyHolderChat_ccsReturnToMainMenu}     timeout=${mTimeout}
        Click the PolicyHolderChat button    opt_PolicyHolderChat_ccsReturnToMainMenu
        Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_mainMenuMessage
    ELSE
        Do Nothing
    END

Would you like to chat with a PolicyHolder ${ccsQueue} CCS
    Switch to the AgentChatbot browser
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PolicyHolderChat Chat With A Care Specialist option
        Select the Compliance Connect to PolicyHolderChat CCS option
        Enter the PolicyHolderChat user connection details
        Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_connectingToCcsQueue
    ELSE
        Do Nothing
    END

Select the Compliance Connect to PolicyHolderChat CCS option
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_complianceMessage
    Click the PolicyHolderChat button    opt_PolicyHolderChat_agent_connectToAflacRep
    ${present}=  Run Keyword And Return Status    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_ph_ccsConnectMessage
    ${present}=  Run Keyword If    not ${present}    Run Keyword And Return Status     Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_repsBusy    ELSE    Set Variable    ${present}    Run Keyword If    not ${present}    Fail    None of the elements is present on the page

Select the Compliance Connect to PolicyHolderDMChat CCS option
    Click PolicyHolderDMChat Continue button   

Select the Compliance Connect to PolicyHolderChat CCS option and reside in Kentucky
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_complianceMessage
    Click the PolicyHolderChat button    opt_PolicyHolderChat_agent_connectToAflacRep
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_reside
    Click the PolicyHolderChat button    opt_PolicyHolderChat_agent_resideKentucky
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_resideUnableToAssist
    Click the PolicyHolderChat button    opt_PolicyHolderChat_agent_returnToMainMenu
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_mainMenuMessage

Select the PolicyHolderChat Connect Me With An Aflac Representative option
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Check if all the PolicyHolderChat CCS are busy
        Check if the PolicyHolderChat CCS is not available
    ELSE
        The agent returns to the PolicyHolderChat live chat main menu
    END

Check if all the PolicyHolderChat CCS are busy
    Register Keyword To Run On Failure    Do Nothing 
    ${status}=    Run Keyword And Return Status    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_repsBusy
    IF    '${status}'=='True'
        The agent returns to the PolicyHolderChat live chat main menu
    ELSE 
        Select the Compliance Connect to PolicyHolderChat CCS option
    END

Check if the PolicyHolderChat CCS is not available
    Register Keyword To Run On Failure    Do Nothing
    ${status}=    Run Keyword And Return Status    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_repsBusy
    IF    '${status}'=='True'
        Do Nothing
    ELSE
        Check if the Policy Holder CCS is available
    END
    
Check if the Policy Holder CCS is available
    Register Keyword To Run On Failure    Do Nothing
    ${status}=    Run Keyword And Return Status    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_enterName
    IF    '${status}'=='True'
        Enter the PolicyHolderChat user connection details
    ELSE 
        Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_highVolumeOfChat    
    END

Select the PolicyHolderDMChat Connect Me With An Aflac Representative option
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Check if all the PolicyHolderDMChat CCS are busy
    ELSE
        Select the PolicyHolderDMChat My Account Return To Main Menu option
    END

Check if all the PolicyHolderDMChat CCS are busy
    Register Keyword To Run On Failure    Do Nothing 
    ${status}=    Run Keyword And Return Status    Verify that the PolibcyHolderChat live chat message is displayed lbl_PolicyHolderChat_repsBusy
    IF    '${status}'=='True'
        The agent returns to the PolicyHolderChat live chat main menu
    ELSE 
        Select the Compliance Connect to PolicyHolderDMChat CCS option
    END

Would you like to connect to a PolicyHolderChat ccs for further assistance
    [Arguments]    ${optYesNo}
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_speakToCcs
        Confirm connection with a PolicyHolderChat CCS    ${optYesNo}
    ELSE
        Run Keyword    Select the PolicyHolderChat ${optYesNo} option
        Check if the PolicyHolderChat out of hours message is displayed    ${optYesNo}
    END

Check if the PolicyHolderChat out of hours message is displayed
    [Arguments]    ${optYesNo}
    IF    '${optYesNo}'=='No'
        Do Nothing
    ELSE
        Verify policy holder CCS OOO message is displayed
    END
    
Verify policy holder CCS OOO message is displayed
    ${present}=  Run Keyword And Return Status    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_outOfHoursCcs
    ${present}=  Run Keyword If    not ${present}    Run Keyword And Return Status     Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_welcomeMessageChatOOO    ELSE    Set Variable    ${present}    Run Keyword If    not ${present}    Fail    None of the elements is present on the page

Confirm connection with a PolicyHolderChat CCS
    [Arguments]    ${optYesNo}
    IF    '${optYesNo}'=='Yes'
        Run Keyword    Select the PolicyHolderChat ${optYesNo} option
        Select the PolicyHolderChat Connect Me With An Aflac Representative option
    ELSE
        Run Keyword    Select the PolicyHolderChat ${optYesNo} option
    END
    
Confirm connection with a PolicyHolderDMChat CCS
    [Arguments]    ${optYesNo}
    IF    '${optYesNo}'=='Yes'
        Run Keyword    Click the PolicyHolderChat ${optYesNo} DM option
        Select the PolicyHolderDMChat Connect Me With An Aflac Representative option
    ELSE
        Run Keyword    Click the PolicyHolderChat ${optYesNo} DM option
    END
        
Enter the PolicyHolderChat user connection details
    Enter the PolicyHolderChat user first and last name
    Enter the PolicyHolderChat user ssn
    Enter the PolicyHolderChat user reason for contacting    ${msg_PolicyHolderChat_provideConnectionReason}

Enter the PolicyHolderChat user first and last name
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_enterName
    Input Text    ${fld_liveChatTextarea}    ${msg_PolicyHolderChat_provideUserName}    clear=True
    Select the PolicyHolderChat Send Message button

Enter the PolicyHolderChat user ssn
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_enterSSN
    Input Text    ${fld_liveChatTextarea}    ${msg_PolicyHolderChat_provideSSN}    clear=True
    Select the PolicyHolderChat Send Message button

Enter the PolicyHolderChat user reason for contacting
    [Arguments]    ${inputText}
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_provideConnectionReason
    Input Text    ${fld_liveChatTextarea}    ${inputText}    clear=True
    Select the PolicyHolderChat Send Message button
    Verify that the PolicyHolderChat live chat message is displayed lbl_PolicyHolderChat_connectingToCcsQueue

Check if you need to end the PolicyHolderChat chat to ccs session
    Switch to the AgentChatbot browser
    Register Keyword To Run On Failure    Do Nothing
    Sleep    1s
    Select the PolicyHolderChat other actions icon as a agent
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Enabled    ${btn_agent_endChat}    timeout=${mTimeout}
    IF    '${status}'=='True'
        Select the PolicyHolderChat end chat option as a agent
        Select the PolicyHolderChat end chat session option as a agent
        #Sleep    2s
        #Would you like to complete the PolicyHolderChat survey    No
        #Do you require further assistance in the PolicyHolderChat    No
    ELSE
        Register Keyword To Run On Failure    Do Nothing
        ${status}=    Run Keyword And Return Status    Wait Until Element Is Enabled    ${opt_PolicyHolderChat_ccsReturnToMainMenu}    timeout=${mTimeout}
        IF    '${status}'=='True'
            Select the PolicyHolderChat CCS Return To Main Menu option
        ELSE
            Do Nothing
        END
    END
    Register Keyword To Run On Failure    Capture Page Screenshot
   