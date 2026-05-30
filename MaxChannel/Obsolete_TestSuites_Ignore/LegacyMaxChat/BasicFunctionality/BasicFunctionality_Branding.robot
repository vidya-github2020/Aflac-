* Settings
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}CcsChatKeywords.robot
#Force Tags        Ignore
Suite Setup       Open the live chat page
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify the Chat Bubble Colour
    [Tags]    Ignore    E-xxx    B-xxx
    Wait Until Element Is Visible    ${btn_liveChat}     timeout=${lTimeout}
    Verify the chatbot colour property is correct    ${btn_liveChat}    color    ${colorWhite}
    Verify the chatbot colour property is correct    ${btn_liveChat}    background-color    ${colorOrange}

TC_02_Verify the Live Chat Header and Pega Standard Message Bubble Colours
    [Tags]    Ignore    E-xxx    B-xxx
    Initiate the MaxChat live chat session
    Verify the chatbot colour property is correct    ${lbl_liveChatHeader}    color    ${colorWhite}
    Verify the chatbot colour property is correct    ${hdr_liveChatHeader}    background-color    ${colorBlue}
    Verify the chatbot colour property is correct    ${msg_pegaStandardMessageBubble}    color    ${colorDarkBlue}
    Verify the chatbot colour property is correct    ${msg_pegaStandardMessageBubble}    background-color    ${colorLightBlue}

TC_03_Verify the Client Standard Message Bubble Colour
    [Tags]    Ignore    E-xxx    B-xxx
    Begin a MaxChat Policy Information flow
    Verify the chatbot colour property is correct    ${msg_clientStandardMessageBubble}    color    ${colorWhite}
    Verify the chatbot colour property is correct    ${msg_clientStandardMessageBubble}    background-color    ${colorBlack}

TC_04_Verify Main Menu Aflac Portal Url Redirect
    [Tags]    Ignore    E-xxx    B-xxx
    Verify that the URL opens in a new browser tab    ${link_clickHere}    ${url_aflacPortal}

    