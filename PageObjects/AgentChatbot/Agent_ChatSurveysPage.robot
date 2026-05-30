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
${lbl_AgentChat_interactionChatEnded_txt}    Thank you for contacting Aflac!
${lbl_AgentChat_interactionChatEnded}        ${lbl_getChatBotSections}

* Keywords
The AgentChat agent completes the post chat survey
    The AgentChat agent selects an answer for the howEasySurvey question
    The AgentChat agent selects an answer for the howWellSurvey question
    # The AgentChat agent selects an answer for the howLikelySurvey question
    Run Keyword    The AgentChat agent adds a comment to complete the post chat survey ${provide_AgentChat_agentSurveyComment}

The AgentChat agent completes the interaction survey
    The AgentChat agent selects an answer for the howEasySurvey question
    The AgentChat agent selects an answer for the howWellInteractionSurvey question
    # The AgentChat agent selects an answer for the howLikelySurvey question
    The AgentChat agent enters a live chat comment Completed Interaction Survey
    Verify that the AgentChat end interaction chat survey message is displayed

The AgentChat agent rejects the post chat survey
    Switch to the AgentChatbot browser
    Sleep    1s
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the AgentChat Reject Survey option
        Sleep    1s
        Select the require further assistance option in the AgentChat    No
    ELSE
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_welcomeMessageChat
    END

The AgentChat agent adds a comment to complete the post chat survey ${surveyComment}
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the AgentChat live chat message is displayed lbl_additionalSurveyComments
        Input Text    ${fld_liveChatTextarea}    ${surveyComment}    clear=True
        Select the AgentChat Send Message button
        Select the require further assistance option in the AgentChat    No
    ELSE
        Verify that the AgentChat live chat message is displayed lbl_AgentChat_welcomeMessageChat
    END
    
Verify that the AgentChat end interaction chat survey message is displayed
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_interactionChatEnded

