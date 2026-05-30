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

* Keywords
Verify that the AgentChat live chat modal alert is not displayed for the CCS ${liveChatQueue} queue
    Sleep    1s
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        IF    '${liveChatQueue}'=='everwell'
            Begin an AgentChat CCS chat    ${liveChatQueue}Query
            Check if the agent live chat cookie has loaded for the Everwell queue
            Verify that the AgentChat live chat modal is not displayed
        ELSE
            Begin an AgentChat CCS chat    ${liveChatQueue}Query
            Check if the agent live chat cookie has loaded
            Select an AgentChat are you assisting option
            The AgentChat agent provides a help comment
            Select the AgentChat Connect To An Aflac Representative option
            Verify that the AgentChat live chat modal is not displayed
        END
    ELSE
        Do Nothing
    END

Verify that the AgentChat Busy Message is displayed for the CCS ${liveChatQueue} queue
    Sleep    1s
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        IF    '${liveChatQueue}'=='everwell'
            Attempt an AgentChat CCS chat    ${liveChatQueue}Query
        ELSE
            Attempt an AgentChat CCS chat    ${liveChatQueue}Query
        END
    ELSE
        Do Nothing
    END

The AgentChat CCS ${modalOption} the live chat modal alert for the ${liveChatQueue} queue
    Sleep    3s
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        IF    '${liveChatQueue}'=='everwell'
            Switch to the AgentChatbot browser
            Begin an AgentChat CCS chat    ${liveChatQueue}Query
            Run Keyword    The AgentChat CCS ${modalOption} the live chat alert
        ELSE IF    '${liveChatQueue}'=='claims'
            Switch to the AgentChatbot browser
            Begin an AgentChat CCS chat    ${liveChatQueue}Query
            Check if the agent live chat cookie has loaded
            Run Keyword    The AgentChat CCS ${modalOption} the live chat alert
        ELSE
            Switch to the AgentChatbot browser
            Begin an AgentChat CCS chat    ${liveChatQueue}Query
            Check if the agent live chat cookie has loaded
            Select an AgentChat are you assisting option
            The AgentChat agent provides a help comment
            Select the AgentChat Connect To An Aflac Representative option
            Run Keyword    The AgentChat CCS ${modalOption} the live chat alert
        END
    ELSE
        Do Nothing
    END

Check if the agent live chat cookie has loaded
#    The AgentChat agent enters a live chat comment ${provide_agentWritingNumber}    #### Leave comment in, may be needed if we request the cookie info to be switched off in lower envs
    Register Keyword To Run On Failure    Do Nothing
    ${status}=    Run Keyword And Return Status    Verify that the AgentChat live chat message is displayed lbl_AgentChat_provideFirstLastName
    IF    '${status}'=='True'
        The AgentChat agent provides the user name and ssn number
    ELSE
        Do Nothing
    END
    [Teardown]    Register Keyword To Run On Failure    Capture Page Screenshot

Check if the agent live chat cookie has loaded for the Everwell queue
    Register Keyword To Run On Failure    Do Nothing
    ${status}=    Run Keyword And Return Status    Verify that the AgentChat live chat message is displayed lbl_provideFirstLastName
    IF    '${status}'=='True'
        The AgentChat agent provides the users name and writing number
    ELSE
        Do Nothing
    END
    [Teardown]    Register Keyword To Run On Failure    Capture Page Screenshot

