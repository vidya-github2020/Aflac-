* Settings
Resource    ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellKeywords.robot
Documentation    The keywords in this file are intended for all test suites
...              contained in any of the test suite folders in this feature directory

* Variables

* Keywords
Verify the EverwellChat out of hours chat message text ${fieldName}
    IF    '${fieldName}'=='lbl_EverwellChat_welcomeMessageChat'
        Verify that the EverwellChat element exists in the live chat lbl_EverwellChat_welcomeMessageChatOOO
    ELSE
        Run Keyword    Verify that the EverwellChat element exists in the live chat ${fieldName}
    END

Click the EverwellChat button
    [Arguments]    ${buttonName}
    Sleep    2s
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Select the EverwellChat button when visible ${buttonName}
    ELSE
        IF    '${buttonName}'=='opt_EverwellChat_ChatWithCCS' or '${buttonName}'=='opt_EverwellChat_everwellAssistance_ChatWithCcs' or '${buttonName}'=='opt_EverwellChat_agent_connectToAflacRep' or '${buttonName}'=='opt_beginSurvey' or '${buttonName}'=='opt_rejectSurvey'
            Verify that the menu option is not displayed in the list    ${${buttonName}}
        ELSE
            Run Keyword    Select the EverwellChat button when visible ${buttonName}
        END
    END

Verify that the EverwellChat element exists in the live chat ${fieldName}
    Wait for Chatbot System loading icon to complete
    ${allElements}    Get WebElements    ${lbl_getChatBotSections}
    ${listCount}=    Get Length    ${allElements}

    FOR    ${the_element}    IN RANGE    ${listCount}
        ${actualText}    Get Text    ${allElements}[${the_element}]
        ${validationText}    Convert To String    ${fieldName}_txt
        ${expectedText}    Set Variable    ${${validationText}}
        
        ${updateActual}=    String.Replace String    ${actualText}    \n    ${SPACE}
        ${updatedActual}=    String.Replace String    ${updateActual}    &nbsp;    ${SPACE}

        IF    '${fieldName}'=='lbl_EverwellChat_welcomeMessageChat' or '${fieldName}'=='lbl_EverwellChat_welcomeMessageChatOOO'
            ${newUsername}=    Set Variable    ${gLoggedInUserName}
            ${updatedExpected}=    Replace String    ${expectedText}    {USERNAME}    ${newUsername}
            Register Keyword To Run On Failure    Do Nothing
            ${status}=    Run Keyword And Return Status    Should Be Equal    ${updatedActual}    ${updatedExpected}
            IF    '${status}'=='True'
                Exit For Loop
            ELSE
                Verify the EverwellChat welcome message text if no cookie has loaded
                Exit For Loop
            END
        ELSE IF    '${fieldName}'=='lbl_EverwellChat_welcomeMessageNoCookie' or '${fieldName}'=='lbl_EverwellChat_welcomeMessageNoCookieOOO'
            Register Keyword To Run On Failure    Capture Page Screenshot
            ${status}=    Run Keyword And Return Status    Should Contain    ${updatedActual}   ${expectedText}
            IF    '${status}'=='True'
                Exit For Loop
            ELSE
                Fail    Element text is not found in the live chat window.
            END
        ELSE
            Register Keyword To Run On Failure    Do Nothing
            ${status}=    Run Keyword And Return Status    Should Be Equal    ${updatedActual}    ${expectedText}
            Exit For Loop IF    '${status}'=='True'
        END

        Register Keyword To Run On Failure    Capture Page Screenshot
        IF    ${listcount-1}==${the_element}
            Fail    Element text is not found in the live chat window.
        END
    END
    Register Keyword To Run On Failure    Capture Page Screenshot
    Sleep    1s

Verify the EverwellChat welcome message text if no cookie has loaded
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_welcomeMessageNoCookie
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_welcomeMessageNoCookieOOO
    END

Do you require further assistance in the EverwellChat
    [Arguments]    ${optYesNo}
    Register Keyword To Run On Failure    Do Nothing
    ${status}=    Run Keyword And Return Status    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_furtherAssistance
    IF    '${status}'=='True'
        Run Keyword    Select the EverwellChat ${optYesNo} option
        Verify the correct EverwellChat live chat message is displayed after the further assistance option is selected    ${optYesNo}
    ELSE
        Do Nothing
    END

Verify the correct EverwellChat live chat message is displayed after the further assistance option is selected
    [Arguments]    ${optYesNo}
    IF    '${optYesNo}'=='Yes'
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_mainMenuMessage
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_thankYouMessage
    END

Information not helpful do you want to connect with a EverwellChat CCS
    [Arguments]    ${optYesNo}
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_helpToResolve_furtherAssistance
        Confirm connection with an EverwellChat CCS    ${optYesNo}
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_helpToResolve_furtherAssistanceOOO
    END

Was your issue resolved in the EverwellChat
    [Arguments]    ${optYesNo}
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_helpToResolveMessage
        Run Keyword    Select the EverwellChat ${optYesNo} option
    ELSE
        Do Nothing
    END

Was the information that the Everwell chat provided helpful in the EverwellChat
    [Arguments]    ${optYesNo}
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_helpToResolve_furtherAssistance
        Run Keyword    Select the EverwellChat ${optYesNo} option
    ELSE
        Do Nothing
    END

Check if you need to end the EverwellChat chat to ccs session
    Switch to the AgentChatbot browser
    Register Keyword To Run On Failure    Do Nothing
    Sleep    1s
    Select the EverwellChat other actions icon as a agent
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Enabled    ${btn_agent_endChat}    timeout=${mTimeout}
    IF    '${status}'=='True'
        Select the EverwellChat end chat option as a agent
        Sleep    2s
        The EverwellChat agent rejects the post chat survey
    ELSE
        Do Nothing
    END

