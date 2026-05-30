*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${btn_agent_otherActions}    xpath://button[@data-testid='menu' and contains(@aria-label,'More options')]
${btn_agent_endChat}         xpath://span[contains(@class,'sc-gsFSXq') and contains(text(),'End session')]
${btn_agent_endChatSession}         xpath://button[@id="end-chat-button"]
${btn_agent_endPageShare}         xpath://span[@class="menu-item-title" and contains(text(),'End page share')]
${btn_agent_toggleAlert}     xpath://li[@aria-label='Mute' and contains(@data-testid,'mute')]

${lbl_idolMsg_agentInitialWarning_txt}    Do you still need assistance from our service team? This interaction session will terminate automatically after 2 minutes if we do not hear back from you.
${lbl_idolMsg_agentFinalWarning_txt}      As we did not hear back from you, this interaction session has been terminated. If you have another question, please reach out to us again.

## ----- Chat Bot Sections ----- ##
${lbl_idolMsg_agentInitialWarning}    ${lbl_getChatBotSections}
${lbl_idolMsg_agentFinalWarning}      ${lbl_getChatBotSections}

*** Keywords
Select the ${paveChatbot} toggle alerts option as a ${activeUser}
    Wait Until Element Is Visible    ${btn_${activeUser}_toggleAlert}    timeout=${xlTimeout}
    Click Element    ${btn_${activeUser}_toggleAlert}
    #Run Keyword    Click the ${paveChatbot} button    btn_${activeUser}_toggleAlert

An agent connects to a ${liveChatQueue} CCS in the ${paveChatbot} channel
    Run Keyword    Open the CCS portal Pega_SignIn_URL
    Run Keyword    The ${paveChatbot} CCS selects the ${liveChatQueue} work queue
    Run Keyword    The ${paveChatbot} CCS is made available
    Run Keyword    The agent opens a ${paveChatbot} live chat session
    Run Keyword    The ${paveChatbot} CCS accepts the live chat modal alert for the ${liveChatQueue} queue

The CCS session in the ${paveChatbot} channel is ended
    Run Keyword    The ${paveChatbot} CCS ends the chat and wraps up the session
    Run Keyword    The ${paveChatbot} agent rejects the post chat survey
    Run Keyword    Log out from the ${paveChatbot} ccs portal
    Run Keyword    Close all browsers

Verify that the ${paveChatbot} live chat displays the timout message ${fieldName}
    Switch to the AgentChatbot browser
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Verify that the ${paveChatbot} element exists in the live chat ${fieldName}
    ELSE
        Do Nothing
    END

