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
${lbl_EverwellChat_surveryRejected_txt}    Thank you for contacting Aflac!
${lbl_EverwellChat_surveryRejected}        ${lbl_getChatBotSections}

* Keywords
The EverwellChat agent rejects the post chat survey
    Switch to the AgentChatbot browser
    Sleep    1s
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the EverwellChat Reject Survey option
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_surveryRejected
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_welcomeMessageChat
    END

The EverwellChat agent adds a comment to complete the post chat survey ${surveyComment}
    Run Keyword    Get the EverwellChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the EverwellChat live chat message is displayed lbl_additionalSurveyComments
        Input Text    ${fld_liveChatTextarea}    ${surveyComment}    clear=True
        Select the EverwellChat Send Message button
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_thankYouMessage
    ELSE
        Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_welcomeMessageChat
    END

