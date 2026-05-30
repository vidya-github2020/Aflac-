* Settings
Resource    ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChannelKeywords.robot
Documentation    The keywords in this file are intended for all test suites
...              contained in any of the test suite folders in this feature directory

* Variables

* Keywords
Verify the AgentChat out of hours chat message text ${fieldName}
    IF    '${fieldName}'=='lbl_AgentChat_PolicyholderInquiry'
        Verify that the AgentChat element exists in the live chat lbl_AgentChat_PolicyholderInquiry
    ELSE IF    '${fieldName}'=='lbl_AgentChat_welcomeMessageChat'
        Run Keyword    Verify that the AgentChat element exists in the live chat lbl_AgentChat_welcomeMessageChat
    ELSE IF    '${fieldName}'=='lbl_AgentChat_welcomeMessageChatOOO'
        Run Keyword    Verify that the AgentChat element exists in the live chat lbl_AgentChat_welcomeMessageChatOOO
    ELSE IF    '${fieldName}'=='lbl_AgentChat_welcomeMessageNoCookie' or '${fieldName}'=='lbl_AgentChat_welcomeMessageNoCookieOOO'
        Run Keyword    Verify that the AgentChat element exists in the live chat lbl_AgentChat_welcomeMessageNoCookieOOO
    ELSE IF    '${fieldName}'=='lbl_AgentChat_ccsFurtherAssistance' or '${fieldName}'=='lbl_AgentChat_faxInvalidDataSent' or '${fieldName}'=='lbl_AgentChat_faxNoMatchFound' or '${fieldName}'=='lbl_AgentChat_faxMatchFound'
        Check if the AgentChat fax flow is out of hours    ${fieldName}
    ELSE
        Verify that the AgentChat element exists in the live chat lbl_AgentChat_welcomeMessageChatOOO
    END

Check if the AgentChat fax flow is out of hours
    [Arguments]    ${fieldName}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Verify that the AgentChat element exists in the live chat ${fieldName}
    ELSE
        Check if the AgentChat ccs assistance is out of hours    ${fieldName}
    END

Check if the AgentChat ccs assistance is out of hours
    [Arguments]    ${fieldName}
    IF    '${fieldName}'=='lbl_AgentChat_ccsFurtherAssistance'
        Verify that the AgentChat element exists in the live chat lbl_AgentChat_furtherAssistance
    ELSE
        Run Keyword    Verify that the AgentChat element exists in the live chat ${fieldName}
    END

Click the AgentChat button
    [Arguments]    ${buttonName}
    Sleep    1s
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Select the AgentChat button when visible ${buttonName}
    ELSE
        IF    '${buttonName}'=='opt_AgentChat_ChatWithCCS' or '${buttonName}'=='opt_AgentChat_agent_connectToAflacRep' or '${buttonName}'=='opt_AgentChat_claimsQuery' or '${buttonName}'=='opt_AgentChat_generalQuery' or '${buttonName}'=='opt_AgentChat_everwellQuery' or '${buttonName}'=='opt_beginSurvey' or '${buttonName}'=='opt_rejectSurvey'
            Verify that the menu option is not displayed in the list    ${${buttonName}}
        ELSE
            Run Keyword    Select the AgentChat button when visible ${buttonName}
        END
    END

Click the Account button
    [Arguments]    ${buttonName}
    Sleep    1s
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    Run Keyword    Select the Account button when visible ${buttonName}

Verify that the AgentChat element exists in the live chat ${fieldName}
    Wait for Chatbot System loading icon to complete
    ${allElements}    Get WebElements    ${lbl_getChatBotSections}
    ${listCount}=    Get Length    ${allElements}

    FOR    ${the_element}    IN RANGE    ${listCount}
        ${actualText}    Get Text    ${allElements}[${the_element}]
        ${validationText}    Convert To String    ${fieldName}_txt
        ${expectedText}    Set Variable    ${${validationText}}
        IF    '${fieldName}'=='lbl_AgentChat_welcomeMessageChat' or '${fieldName}'=='lbl_AgentChat_welcomeMessageChatOOO'
            ${updatedActual}=    String.Replace String    ${actualText}    \n    ${SPACE}
            ${newUsername}=    Set Variable    ${gLoggedInUserName}
            ${updatedExpected}=    Replace String    ${expectedText}    {USERNAME}    ${newUsername}
            Register Keyword To Run On Failure    Do Nothing
            ${status}=    Run Keyword And Return Status    Should Contain    ${updatedActual}   ${updatedExpected}
            IF    '${status}'=='True'
                Exit For Loop
            ELSE
                Verify the AgentChat welcome message text if no cookie has loaded
                Exit For Loop
            END

        ELSE IF    '${fieldName}'=='lbl_AgentChat_welcomeMessageNoCookie' or '${fieldName}'=='lbl_AgentChat_welcomeMessageNoCookieOOO'
            ${updatedActual}=    String.Replace String    ${actualText}    \n    ${SPACE}
            Register Keyword To Run On Failure    Capture Page Screenshot
            ${status}=    Run Keyword And Return Status    Should Contain    ${updatedActual}   ${expectedText}
            IF    '${status}'=='True'
                Exit For Loop
            ELSE
                Fail    Element text is not found in the live chat window.
            END

        ELSE IF    '${fieldName}'=='lbl_AgentChat_faxInvalidDataSent' or '${fieldName}'=='lbl_AgentChat_faxNoMatchFound' or '${fieldName}'=='lbl_AgentChat_faxMatchFound' or '${fieldName}'=='lbl_AgentChat_faxCancelForm'
            ${status}=    Run Keyword And Return Status    Should Be Equal    ${actualText}    ${expectedText}
            Exit For Loop IF    '${status}'=='True'
            IF    ${listcount-1}==${the_element}
                Sleep    1s
                ${present}=  Run Keyword And Return Status    Verify that the AgentChat live chat message is displayed lbl_AgentChat_faxApiUnavaliable
                ${present}=  Run Keyword If    not ${present}    Run Keyword And Return Status    Verify that the AgentChat live chat message is displayed lbl_AgentChat_faxInvalidDataSent    ELSE    Set Variable    ${present}    Run Keyword If    not ${present}    Fail    None of the elements is present on the page
                Exit For Loop
            END

        ELSE IF    '${fieldName}'=='lbl_AgentChat_enrollMessage'
            ${updatedActual}=    String.Replace String    ${actualText}    \n    ${SPACE}
            Register Keyword To Run On Failure    Do Nothing
            Sleep    2s
            ${status}=    Run Keyword And Return Status    Should Be Equal    ${updatedActual}    ${expectedText}
            Exit For Loop IF    '${status}'=='True'

        ELSE
            Register Keyword To Run On Failure    Do Nothing
            ${status}=    Run Keyword And Return Status    Should Be Equal    ${actualText}    ${expectedText}
            Exit For Loop IF    '${status}'=='True'
        END

        Register Keyword To Run On Failure    Capture Page Screenshot
        IF    ${listcount-1}==${the_element}
            Fail    Element text is not found in the live chat window.
        END
    END
    Register Keyword To Run On Failure    Capture Page Screenshot
    Sleep    1s

Verify the AgentChat welcome message text if no cookie has loaded
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_welcomeMessageNoCookie
    ELSE
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_welcomeMessageNoCookieOOO
    END

Exit the AgentChat workflow
    Input Text    ${fld_liveChatTextarea}    exit    clear=True
    Select the AgentChat Send Message button

Is there something else I can assist you with in the AgentChat
    [Arguments]    ${optYesNo}
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_ccsOtherAssistance
    Run Keyword    Select the AgentChat ${optYesNo} option

Would you like a CCS to provide further assistance in the AgentChat
    [Arguments]    ${optYesNo}
    ${status}=    Run Keyword And Return Status    Verify that the AgentChat live chat message is displayed lbl_AgentChat_ccsFurtherAssistance
    IF    '${status}'=='True'
        Run Keyword    Select the AgentChat ${optYesNo} option
        Run Keyword    Verify the correct message is displayed when the ccs provide further assistance option is selected in the AgentChat ${optYesNo}
    ELSE
        Do Nothing
    END

Verify the correct message is displayed when the ccs provide further assistance option is selected in the AgentChat ${optYesNo}
    IF   '${optYesNo}'=='Yes'
       # Verify that the AgentChat live chat message is displayed lbl_AgentChat_ccsHelpMessage
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_everwellRepsBusy
    ELSE
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_furtherAssistance
    END

Select the require further assistance option in the AgentChat
    [Arguments]    ${optYesNo}
    ${status}=    Run Keyword And Return Status    Verify that the AgentChat live chat message is displayed lbl_AgentChat_furtherAssistance
    IF    '${status}'=='True'             
        Run Keyword    Select the AgentChat ${optYesNo} option
        Run Keyword    Verify the correct message is displayed when the further assistance option is selected in the AgentChat ${optYesNo}
    ELSE
        Do Nothing
    END

Verify the correct message is displayed when the further assistance option is selected in the AgentChat ${optYesNo}
    IF  '${optYesNo}'=='Yes'
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_mainMenuMessage
    ELSE
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_exitChat
    END
