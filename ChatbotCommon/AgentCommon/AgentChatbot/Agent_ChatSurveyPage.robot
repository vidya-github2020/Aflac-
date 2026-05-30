*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${opt_beginSurvey}     xpath://button[contains(@aria-label, "Sure")]
${opt_rejectSurvey}    xpath://button[contains(@aria-label, "No thanks")]

## ----- Post Chat Survey - After CCS Completion ----- ##
${lbl_postChat_howEasySurvey_txt}     Overall, how easy was it to take care of what you needed help with during this text session?
${lbl_postChat_howEasySurvey}         ${lbl_getChatBotSections}
${opt_howEasySurvey_veryEasy}         xpath://button[@data-testid="Very Easy"]
${opt_howEasySurvey_easy}             xpath://button[@data-testid="Easy"]
${opt_howEasySurvey_neither}          xpath://button[@data-testid="Neither Easy Nor Difficult"]
${opt_howEasySurvey_difficult}        xpath://button[@data-testid="Difficult"]
${opt_howEasySurvey_veryDifficult}    xpath://button[@data-testid="Very Difficult"]

${lbl_postChat_howWellSurvey_txt}    How well did our Virtual Assistant answer your question or address your concern?
${lbl_postChat_howWellSurvey}        ${lbl_getChatBotSections}
${opt_howWellSurvey_veryWell}        xpath://button[@data-testid="Very Well"]
${opt_howWellSurvey_well}            xpath://button[@data-testid="Well"]
${opt_howWellSurvey_somewhatWell}    xpath://button[@data-testid="Somewhat Well"]
${opt_howWellSurvey_notVeryWell}     xpath://button[@data-testid="Not Very Well"]
${opt_howWellSurvey_notAtAll}        xpath://button[@data-testid="Not At All"]

${lbl_postChat_howWellInteractionSurvey_txt}    How well did our Virtual Assistant answer your question or address your concern?
${lbl_postChat_howWellInteractionSurvey}        ${lbl_getChatBotSections}
${opt_howWellInteractionSurvey_veryWell}        ${opt_howWellSurvey_veryWell}
${opt_howWellInteractionSurvey_well}            ${opt_howWellSurvey_well}
${opt_howWellInteractionSurvey_somewhatWell}    ${opt_howWellSurvey_somewhatWell}
${opt_howWellInteractionSurvey_notVeryWell}     ${opt_howWellSurvey_notVeryWell}
${opt_howWellInteractionSurvey_notAtAll}        ${opt_howWellSurvey_notAtAll}

${lbl_postChat_howLikelySurvey_txt}    How likely are you to recommend Aflac to a friend or colleague?
${lbl_postChat_howLikelySurvey}        ${lbl_getChatBotSections}
${opt_howLikelySurvey_veryLikely}      ${opt_howEasySurvey_veryEasy}
${opt_howLikelySurvey_likely}          ${opt_howEasySurvey_easy}
${opt_howLikelySurvey_neither}         ${opt_howEasySurvey_neither}
${opt_howLikelySurvey_unlikely}        ${opt_howEasySurvey_difficult}
${opt_howLikelySurvey_veryUnlikely}    ${opt_howEasySurvey_veryDifficult}

@{opt_selectOption_howEasySurvey}  VeryEasy  Easy  Neither  Difficult  VeryDifficult
@{opt_selectOption_howWellSurvey}  VeryWell  Well  SomewhatWell  NotVeryWell  NotAtAll
@{opt_selectOption_howWellInteractionSurvey}    @{opt_selectOption_howWellSurvey}
@{opt_selectOption_howLikelySurvey}  VeryLikely  Likely  Neither  Unlikely  VeryUnlikely

${lbl_additionalSurveyComments_txt}    Please share additional comments per your experience.
${lbl_additionalSurveyComments}        ${lbl_getChatBotSections}

${lbl_completePostChatSurvey_txt}    Would you be interested in answering two brief questions about your chat experience?
${lbl_completePostChatSurvey}        ${lbl_getChatBotSections}
${lbl_completePostChatSurveyAgent_txt}    Would you take a second to provide some feedback on your experience with us?
${lbl_completePostChatSurveyAgent}        ${lbl_getChatBotSections}
${lbl_completePostDMChatSurvey}      ${lbl_DMChatBotSections}


*** Keywords
Select the ${paveChatbot} Begin Survey option
    Run Keyword    Verify that the ${paveChatbot} live chat message is displayed lbl_completePostChatSurveyAgent
    Run Keyword    Click the ${paveChatbot} button    opt_beginSurvey

Select the ${paveChatbot} Reject Survey option
    Run Keyword    Verify that the ${paveChatbot} live chat message is displayed lbl_completePostChatSurvey
    Run Keyword    Click the ${paveChatbot} button    opt_rejectSurvey

The ${paveChatbot} ${activeUser} ends the live chat session
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    End the ${paveChatbot} live chat session with the ${activeUser}
    ELSE
        Do Nothing
    END

The ${paveChatbot} ${activeUser} ends the page share
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Switch to the AgentChatbot browser
        Sleep    2s
        Wait for Chatbot System loading icon to complete
        Run Keyword    Select the ${paveChatbot} other actions icon as a agent
        Switch to the AgentChatbot browser
        Sleep    2s
        Run Keyword    Select the ${paveChatbot} end page share option as a agent
    ELSE
        Do Nothing
    END

End the ${paveChatbot} live chat session with the ${activeUser}
    IF    '${activeUser}'=='agent'
        Switch to the AgentChatbot browser
        Sleep    2s
        Wait for Chatbot System loading icon to complete
        Run Keyword    Select the ${paveChatbot} other actions icon as a agent
        Switch to the AgentChatbot browser
        Sleep    2s
        Run Keyword    Select the ${paveChatbot} end chat option as a agent
        Switch to the AgentChatbot browser
        Sleep    2s
        Run Keyword    Select the ${paveChatbot} end chat session option as a ${activeUser}
    ELSE IF    '${activeUser}'=='ccs'
        Switch to the CcsPortal browser
        Sleep    2s
        Select the PegaGadget1Ifr iFrame
        Wait for pega masking icon to complete
        Select Chatbot iFrame
        Wait for pega masking icon to complete
        Sleep    5s
        Click the chatbot shadow dom button  ${btn_ccs_otherActions}
        Click the end chat shadow dom element
        Run Keyword And Ignore Error    Handle Alert    ACCEPT
        Wait for pega masking icon to complete
    END

The ${paveChatbot} ${activeUser} ends the live chat session and ${acceptRejectOption} the post chat survey
    Run Keyword    The ${paveChatbot} ${activeUser} ends the live chat session
    #Run Keyword    The ${paveChatbot} agent ${acceptRejectOption} the post chat survey

The ${paveChatbot} agent accepts the post chat survey
    Switch to the AgentChatbot browser
    Sleep    1s
    Run Keyword    Select the ${paveChatbot} Begin Survey option

The ${paveChatbot} agent selects an answer for the ${surveyQuestion} question
    Sleep    1s
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Choose A Post Chat Survey Answer    ${paveChatbot}    ${surveyQuestion}
    ELSE
        Do Nothing
    END

Select an answer for the ${paveChatbot} ${surveyQuestion} experience question
    Choose A Post Chat Survey Answer    ${paveChatbot}    ${surveyQuestion}

Choose A Post Chat Survey Answer
    [Arguments]    ${paveChatbot}    ${surveyQuestion}
    Run Keyword    Verify that the ${paveChatbot} live chat message is displayed lbl_postChat_${surveyQuestion}
    ${randomPostChatSurveyOption}=    Select a random option for the post chat survey question    ${surveyQuestion}
    ${selectedPostChatSurveyOption}=    Convert To String    ${randomPostChatSurveyOption}
    Run Keyword    Click the ${paveChatbot} button    opt_${surveyQuestion}_${selectedPostChatSurveyOption}

Select a random option for the post chat survey question
    [Arguments]    ${surveyQuestion}
    ${randomPostChatSurveyOption}=  Evaluate  random.choice($opt_selectOption_${surveyQuestion})  random
    RETURN    ${randomPostChatSurveyOption}

