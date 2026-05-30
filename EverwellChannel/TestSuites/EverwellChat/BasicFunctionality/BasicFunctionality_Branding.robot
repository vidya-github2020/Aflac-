* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Open the live chat page
...               AND    Log into the EverwellChat portal
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Everwell the Chat Bubble Colour
    [Tags]    Smoke    E-xxx    B-xxx
    Wait Until Element Is Visible    ${btn_liveChat}     timeout=${lTimeout}
    Verify the chatbot colour property is correct    ${btn_liveChat}    color    ${colorWhite}
    Verify the chatbot colour property is correct    ${btn_liveChat}    background-color    ${colorOrange}

TC_02_Verify Everwell the Live Chat Header and Pega Standard Message Bubble Colours
    [Tags]    Ignore    E-xxx    B-xxx
    Initiate the EverwellChat live chat session
    Verify the chatbot colour property is correct    ${lbl_liveChatHeader}    color    ${colorWhite}
    Verify the chatbot colour property is correct    ${hdr_liveChatHeader}    background-color    ${colorBlue}
    Verify the chatbot colour property is correct    ${msg_pegaStandardMessageBubble}    color    ${colorDarkBlue}
    Verify the chatbot colour property is correct    ${msg_pegaStandardMessageBubble}    background-color    ${colorLightBlue}
    

TC_03_Verify Everwell the Client Standard Message Bubble Colour
    [Tags]    Ignore    E-xxx    B-xxx
    Begin an EverwellChat Customer Assistance flow
    Verify the chatbot colour property is correct    ${msg_clientStandardMessageBubble}    color    ${colorWhite}
    Verify the chatbot colour property is correct    ${msg_clientStandardMessageBubble}    background-color    ${colorBlack}

TC_04_Verify Everwell Main Menu Aflac Portal Url Redirect
    [Tags]    Ignore    E-xxx    B-xxx
    Verify that the URL opens in a new browser tab    ${link_clickHere}    ${url_aflacPortal}

