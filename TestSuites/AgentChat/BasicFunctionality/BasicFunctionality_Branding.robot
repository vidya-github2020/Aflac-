* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Open the live chat page
...               AND    Enter AgentChat Login Details
#...               AND    Select the Agentchat Chat With Us button
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify the Chat Bubble Colour
    [Tags]    AgentChat    Smoke    E-38710    B-152591    B-152591
    skip    
    Wait Until Element Is Visible    ${btn_liveChat}     timeout=${xxlTimeout}
    Verify the chatbot colour property is correct    ${btn_liveChat}    color    ${colorWhite}
    Verify the chatbot colour property is correct    ${btn_liveChat}    background-color    ${orangeColor}

TC_02_Verify the Live Chat Header and Pega Standard Message Bubble Colours
    [Tags]    AgentChat    Smoke    E-38710    B-152591
    Select the AgentChat Chat With Us button
    Verify the chatbot colour property is correct    ${lbl_liveChatAgentHeader}    color    ${colorWhite}
    Verify the chatbot colour property is correct    ${hdr_liveChatHeader}    background-color    ${colorBlue}
    Verify the chatbot colour property is correct    ${msg_pegaStandardMessageBubble}    color    ${colorBlack}
    Verify the chatbot colour property is correct    ${msg_pegaStandardMessageBubble}    background-color    ${colorLightGrey}

