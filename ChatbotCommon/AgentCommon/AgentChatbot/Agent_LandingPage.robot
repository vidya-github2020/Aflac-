*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${btn_liveChat}    //div[@id="launcherminimized"]
${btn_DMliveChat}  id:launcherminimized

${lbl_aflacHeader}                    xpath://a[@class="ng-star-inserted"]/img[@alt='aflac logo']
${btn_letsChat}                       xpath://button[@data-testid="Menu"]
${lbl_liveChatLoadingIcon}            xpath://span[contains(@id,'pega_ui_load') and contains(@role,'progressbar')]
${hdr_liveChatHeader}                 xpath://header    #div.layout.layout-noheader.layout-noheader-header
${lbl_liveChatHeader}                 xpath://h2[@data-testid="chat_heading" and contains(text(),'Chat with Aflac')]
${lbl_liveChatAgentHeader}            xpath://h2[@data-testid="chat_heading" and contains(text(),'Associate')]
${lbl_getChatBotSections}             xpath://span[@class="sc-gsFSXq iDcGgE"]
${msg_pegaStandardMessageBubble}      xpath://div[@class='sc-ezreuY lfpscY sc-aXZVg cYJoCO']    #div.sc-jdUcAg.cqZjJu.sc-aXZVg.cYJoCO    #div.non-system-message-styling
${msg_clientStandardMessageBubble}    css:div.non-system-message-styling-client
${fld_liveChatTextarea}               xpath://textarea[contains(@data-testid,'type_a_message') and contains(@placeholder,'Type a message')]
${btn_textareaSendKeys}               xpath://div[@class="sc-aXZVg pawcE"]//button[@title="Send message"]
${btn_DMtextareaSendKeys}             xpath://button[contains(@data-testid,'send_message')]
${opt_userOptions}                    xpath://a[contains(@name, 'pySimulatorChoice_Message.pyChoices')]
${lbl_DMChatBotSections}              css:div.sc-dkSuNL.cJuJX.sc-bczRLJ.erZdCq
${btn_chatbotSendbutton}              xpath://div[@class="sc-aXZVg pawcE"]//button[@title="Send message"]
${fld_DMliveChatTextarea}                xpath://textarea[@class="sc-bPyhqo eOmZMI sc-jTYCaT eZPfuP"]
${btn_Continue}                       xpath://button[contains(@aria-label,'Continue')]
${opt_Yes}    xpath://button[contains(@aria-label,'Yes')]
${opt_No}     xpath://button[contains(@aria-label,'No')]
${opt_Yes_PH}    xpath://button[contains(@aria-label, 'Yes') and contains(@data-testid, 'true')]
${opt_No_PH}    xpath://button[contains(@aria-label, 'No') and contains(@data-testid, 'false')]
${opt_Yes_FH}     xpath://button[contains(@aria-label,'Yes') and contains(@data-testid, 'Return to Main Menu')]
${opt_No_FH}     xpath://button[contains(@aria-label,'No') and contains(@data-testid, 'Start Post Chat Survey')]
${opt_Yes_Survey}     xpath://button[contains(@aria-label,'Yes') and contains(@data-testid, 'Begin Survey')]
${opt_No_Survey}     xpath://button[contains(@aria-label,'No') and contains(@data-testid, 'Further Assistance')]
${opt_Yes_FA}     xpath://button[contains(@aria-label,'Yes') and contains(@data-testid, 'Return to Main Menu')]
${opt_No_FA}     xpath://button[contains(@aria-label,'No') and contains(@data-testid, 'End Chat')]
${msg_Chat_NoOption}                  No
${msg_Chat_YesOption}                 Yes

*** Keywords
Wait for Chatbot System loading icon to complete
    Sleep    3s
    Wait Until Element Is Not Visible    ${lbl_liveChatLoadingIcon}    timeout=${xxxlTimeout}

Select the ${paveChatbot} Chat With Us button
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${btn_liveChat}    timeout=${mTimeout}
    IF  ${status}==True
        Click element    ${btn_liveChat}
    ELSE
        Wait Until Element Is Visible    ${lbl_aflacHeader}    timeout=${lTimeout}
        Click element    ${lbl_aflacHeader}

        Wait Until Element Is Visible    ${btn_liveChat}    timeout=${xlTimeout}
        Click element    ${btn_liveChat}
    END
    Select Frame    pegaChatWidget
    Wait Until Element Is Visible    ${lbl_getChatBotSections}     timeout=${xxxlTimeout}
    sleep    3s
    Run Keyword    Verify that the ${paveChatbot} live chat message is displayed lbl_${paveChatbot}_welcomeMessageChat

Select the Let's Chat button
    Wait Until Element Is Visible    ${btn_letsChat}    timeout=${lTimeout}
    Click element    ${btn_letsChat}

Select the ${paveChatbot} DMChat With Us button
    Wait Until Element Is Visible    ${btn_DMliveChat}    timeout=${xxlTimeout}
    Click element    ${btn_DMliveChat}

Select the ${paveChatbot} Yes option
    Wait Until Element Is Visible    ${opt_Yes}    timeout=${xxlTimeout}
    Input Text    ${fld_liveChatTextarea}    ${msg_Chat_YesOption}    clear=True
    Click ${paveChatbot} Send Message button
    #Run Keyword    Click the ${paveChatbot} button    opt_Yes

Select the ${paveChatbot} No option
    Wait Until Element Is Visible    ${opt_No}    timeout=${xxlTimeout}
    Input Text    ${fld_liveChatTextarea}    ${msg_Chat_NoOption}    clear=True
    Click ${paveChatbot} Send Message button
    #Run Keyword    Click the ${paveChatbot} button    opt_No

Select the ${paveChatbot} Send Message button
    Run Keyword    Click the ${paveChatbot} button    btn_textareaSendKeys

Click the ${paveChatbot} Yes DM option
    Run Keyword    Click the ${paveChatbot} button    opt_DMYes

Click the ${paveChatbot} No DM option
    Run Keyword    Click the ${paveChatbot} button    opt_DMNo

Click PolicyHolderDMChat Send Message button
    Run Keyword     Click Element          ${btn_chatbotSendbutton}

Click PolicyHolderDMChat Continue button
    Run Keyword     Click Element          ${btn_Continue}

Click ${paveChatbot} Send Message button
    Run Keyword     Click Element          ${btn_textareaSendKeys}

Enter ${paveChatbot} No Option
    Sleep    5s
    Input Text    ${fld_liveChatTextarea}    ${msg_Chat_NoOption}    clear=True
    Click ${paveChatbot} Send Message button

Enter ${paveChatbot} Yes Option
    Sleep    5s
    Input Text    ${fld_liveChatTextarea}    ${msg_Chat_YesOption}    clear=True
    Click ${paveChatbot} Send Message button

Select the ${paveChatbot} PolicyHolder Yes option
    Wait Until Element Is Visible    ${opt_Yes_PH}    timeout=${xxlTimeout}
    Run Keyword    Click the ${paveChatbot} button    opt_Yes_PH

Select the ${paveChatbot} PolicyHolder No option
    Wait Until Element Is Visible    ${opt_No_PH}    timeout=${xxlTimeout}
    Run Keyword    Click the ${paveChatbot} button    opt_No_PH

Select the ${paveChatbot} Further Help Yes option
    Wait Until Element Is Visible    ${opt_Yes_FH}    timeout=${xxlTimeout}
    Run Keyword    Click the ${paveChatbot} button    opt_Yes_FH

Select the ${paveChatbot} Further Help No option
    Wait Until Element Is Visible    ${opt_No_FH}    timeout=${xxlTimeout}
    Run Keyword    Click the ${paveChatbot} button    opt_No_FH

Select the ${paveChatbot} Survey Yes option
    Wait Until Element Is Visible    ${opt_Yes_Survey}    timeout=${xxlTimeout}
    Run Keyword    Click the ${paveChatbot} button    opt_Yes_Survey

Select the ${paveChatbot} Survey No option
    Wait Until Element Is Visible    ${opt_No_Survey}    timeout=${xxlTimeout}
    Run Keyword    Click the ${paveChatbot} button    opt_No_Survey

Select the ${paveChatbot} Further Assistance Yes option
    Wait Until Element Is Visible    ${opt_Yes_FA}    timeout=${xxlTimeout}
    Run Keyword    Click the ${paveChatbot} button    opt_Yes_FA

Select the ${paveChatbot} Further Assistance No option
    Wait Until Element Is Visible    ${opt_No_FA}    timeout=${xxlTimeout}
    Run Keyword    Click the ${paveChatbot} button    opt_No_FA
