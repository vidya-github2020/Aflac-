* Settings
Resource    ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxKeywords.robot
Documentation    The keywords in this file are intended for all test suites
...              contained in any of the test suite folders in this feature directory
...              There are specific keywords in this file that are only intended for use in the
...              Max chat channel. Please refer to the ChatbotCommon folder for keywords
...              that can be commonly used across all the PAVE chatbots.

* Variables

* Keywords
Verify the MaxChat out of hours chat message text ${fieldName}
    IF    '${fieldName}'=='lbl_MaxChat_welcomeMessageChat'
        Verify that the MaxChat element exists in the live chat lbl_MaxChat_welcomeMessageChatOOO
    ELSE
        Run Keyword    Verify that the MaxChat element exists in the live chat ${fieldName}
    END

Click the MaxChat button
    [Arguments]    ${buttonName}
    Sleep    1s
    Run Keyword    Get the MaxChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Select the MaxChat button when visible ${buttonName}
    ELSE
        IF    '${buttonName}'=='opt_ChatWithCCS' or '${buttonName}'=='opt_MaxChat_agent_connectToAflacRep'
            Verify that the menu option is not displayed in the list    ${${buttonName}}
        ELSE
            Run Keyword    Select the MaxChat button when visible ${buttonName}
        END
    END

Verify that the MaxChat element exists in the live chat ${fieldName}
    Wait for Chatbot System loading icon to complete
    ${allElements}    Get WebElements    ${lbl_getChatBotSections}
    ${listCount}=    Get Length    ${allElements}

    FOR    ${the_element}    IN RANGE    ${listCount}
        ${actualText}    Get Text    ${allElements}[${the_element}]
        ${validationText}    Convert To String    ${fieldName}_txt
        ${expectedText}    Set Variable    ${${validationText}}

        ${updateActual}=    String.Replace String    ${actualText}    \n    ${SPACE}
        ${updatedActual}=    String.Replace String    ${updateActual}    &nbsp;    ${SPACE}
        Register Keyword To Run On Failure    Do Nothing
        ${status}=    Run Keyword And Return Status    Should Be Equal    ${updatedActual}    ${expectedText}
        Exit For Loop IF    '${status}'=='True'

        Register Keyword To Run On Failure    Capture Page Screenshot
        IF    ${listcount-1}==${the_element}
            Fail    Element text is not found in the live chat window.
        END
    END
    Register Keyword To Run On Failure    Capture Page Screenshot
    Sleep    1s

Was the information helpful in answering your question in the MaxChat
    [Arguments]    ${optYesNo}
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_helpToResolveMessage
    
    Run Keyword    Select the MaxChat ${optYesNo} option
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'    
        IF    '${optYesNo}'=='No'
            Verify that the MaxChat live chat message is displayed lbl_MaxChat_helpToResolve_furtherAssistance
        END
    ELSE
        IF    '${optYesNo}'=='No'
            Verify that the MaxChat live chat message is displayed lbl_MaxChat_helpToResolve_furtherAssistance
            Verify that the MaxChat live chat message is displayed lbl_MaxChat_helpToResolve_furtherAssistanceOOO
            Verify that the MaxChat live chat message is displayed lbl_MaxChat_wrapUpOOO
        END
    END
    
Would you like to connect to a MaxChat ccs for further assistance
    [Arguments]    ${optYesNo}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'    
        Verify that the MaxChat live chat message is displayed lbl_MaxChat_speakToCcs
        Confirm connection with a MaxChat CCS    ${optYesNo}
    ELSE
        Do Nothing
    END

Is there something else you need assistance with in the MaxChat
    [Arguments]    ${optYesNo}
    Verify that the MaxChat live chat message is displayed lbl_MaxChat_furtherAssistance
    Run Keyword    Select the MaxChat ${optYesNo} option
    Verify the MaxChat further assistance flow message    ${optYesNo}

Verify the MaxChat further assistance flow message
    [Arguments]    ${optYesNo}
    IF    '${optYesNo}'=='Yes'
        Verify that the MaxChat live chat message is displayed lbl_MaxChat_mainMenuMessage
    ELSE
        Verify that the MaxChat live chat message is displayed lbl_MaxChat_wrapUp
    END

Would you like to complete the MaxChat survey
    [Arguments]    ${optYesNo}
    Switch to the AgentChatbot browser
    Run Keyword    Get the MaxChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    
    ${status}=   Run Keyword And Return Status    Verify that the MaxChat live chat message is displayed lbl_completePostChatSurvey
    IF    '${status}'=='True'
        IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
            IF    '${optYesNo}'=='Yes'
                Run Keyword    Select the MaxChat ${optYesNo} option
                
                # Select Survey Anwser 1
                Select an answer for the MaxChat howEasySurvey experience question
                # Select Survey Anwser 2
                ${status}=   Run Keyword And Return Status    Verify that the MaxChat live chat message is displayed lbl_postChat_howWellSurvey
                IF    '${status}'=='True'
                    Select an answer for the MaxChat howWellSurvey experience question
                ELSE
                    Select an answer for the MaxChat howWellInteractionSurvey experience question
                END
                # Select Survey Answer 3
                Select an answer for the MaxChat howLikelySurvey experience question
                # Enter Survey Comment
                The MaxChat agent adds a comment to complete the experience survey    ${provide_MaxChat_completedSurveyAnswer}
            ELSE
                Run Keyword    Select the MaxChat ${optYesNo} option
                Verify that the MaxChat live chat message is displayed lbl_MaxChat_thankYouMessage
            END
        ELSE
            Do Nothing
        END
    ELSE
        Do Nothing
    END
