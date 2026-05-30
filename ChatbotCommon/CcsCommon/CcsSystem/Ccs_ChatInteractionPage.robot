*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${lbl_getCcsPortalChatBotSystemMsg}    xpath://span[@data-test-id='20190606075302007465742']

${lbl_ccsPageLoadingIcon}    xpath://img[contains(@class,'cursordefault') and contains(@data-test-id,'202007171124340842176')]

${lbl_ccs_chatEnded}        xpath:(//div[contains(@class,'sc-pjHjD')])[last()]    #(//div[contains(@class,'sc-pIJJz')])[last()]
${lbl_ccs_chatEnded_txt}    The conversation has disconnected

${btn_ccs_otherActions}=    aria-label="Actions"
${btn_ccs_endChat}         xpath://span[contains(text(),'End conversation')]    #//button[contains(text(),'End conversation')]
${btn_wrapUpChat}          xpath://button[@data-test-id='2018080902461007071328' and contains(@title,'Wrap up')]    #//button[@title='Wrap up']
${btn_wrapUpChatbot}       xpath://button[@title='Wrap up']
${btn_cancelWrapUpChat}    xpath://button[contains(@data-test-id,'202209171045180244175')]
${btn_AgentAssistSearch_WrapUpChat}    xpath://button[contains(@data-test-id,'2018080902461007071328') and contains(@title,'Wrap up')]
${btn_submit_closeChat}    xpath://div[contains(@class,'pzbtn-mid') and contains(text(),'Submit')]
${btn_close_closeChat}     xpath://button[contains(@data-test-id,'20150108023257004682251')]
${btn_submit_closeChatbot}    xpath://button[@data-test-id='2014111404305809971010']
${btn_close_closeChatbot}     xpath://button[contains(@class,'pzhc pzbutton') and contains(text(),'No')]

${btn_addTasks}               xpath://button[contains(@data-test-id,'2014111401004903823658') and contains(@title,'Add task')]
${btn_AgentAssistSearch_addTasks}    xpath://button[contains(@data-keydown,'AFL-CustSvc-Work-Interaction-Sub') and contains(@title,'Add task')]
${btn_addTask_addTasks}       xpath://button[contains(@data-test-id,'20150527044600067319555') and contains(@title,'Add tasks')]
${btn_addTask_CoBrowse}       xpath://a[contains(@data-test-id,'2014123005242607302524') and contains(@title,'Start Co-Browse Session')]
${btn_addTask_cancelTasks}    xpath://button[contains(@data-test-id,'20150527044600067218784') and contains(@title,'Cancel')]
${btn_nonClient_tracking}     xpath://button[contains(@data-test-id,'20220609103246046257') and contains(@class,'Positive_Button pzhc pzbutton')]
${btn_nonClient_wrongNumber}    xpath://button[contains(@data-test-id,'202207271127500145222')]
${inpt_nonClient_contactName}    xpath://input[contains(@data-test-id,'202206091210420554327')]
${inpt_nonClient_lastName}    xpath://input[contains(@data-test-id,'202206150702580213248')]
${inpt_nonClient_phoneNumber}    xpath://input[contains(@data-test-id,'202206271100410388292')]
${inpt_nonClient_email}    xpath://input[contains(@data-test-id,'202206150702580214558')]
${inpt_nonClient_trackingComments}    xpath://textarea[contains(@data-test-id,'202206160922470855855')]
${dd_policyHolderChat_NonClient_NonClient_stateOption}    xpath://select[contains(@data-test-id,'202206170934070868952')]
${dd_policyHolderChat_NonClient_NonClient_stateOption_option}    xpath://select[contains(@data-test-id,'202206170934070868952')]//option[contains(@value,'dropDownOption')]
${dd_policyHolderChat_NonClient_NonClient_reason}    xpath://select[contains(@data-test-id,'202206290647070618825')]
${dd_policyHolderChat_NonClient_NonClient_reason_option}    xpath://select[contains(@data-test-id,'202206290647070618825')]//option[contains(@value,'dropDownOption')]
${dd_policyHolderChat_NonClient_NonClient_PIRoutingOption}    xpath://select[contains(@data-test-id,'202112200132380615298')]
${dd_policyHolderChat_NonClient_NonClient_PIRoutingOption_option}    xpath://select[contains(@data-test-id,'202112200132380615298')]//option[contains(@value,'dropDownOption')]
${dd_policyHolderChat_NonClient_NonClient_PIReason}    xpath://select[contains(@data-test-id,'202112200138120734779')]
${dd_policyHolderChat_NonClient_NonClient_PIReason_option}    xpath://select[contains(@data-test-id,'202112200138120734779')]//option[contains(@value,'dropDownOption')]

${fld_InteractionReason}    xpath://div[contains(@class,'container-multiselect') and contains(@data-test-id,'202205182103310317894')]
${dd_InteractionReasonDropDown}    xpath://div[contains(@class,'container-multiselect') and contains(@data-test-id,'202205182103310317894')]/i
${dd_InteractionReasonDropDownValue}    xpath://li[contains(@class, 'ms-item')][contains(., '{}')]
${fld_InteractionReasonValue}    xpath://div[contains(@class,'container-multiselect') and contains(@data-test-id,'202205182103310317894')][contains(., '{}')]
${lbl_reasonOne}            xpath://span[contains(@data-plindex,'1')]
${lbl_reasonTwo}            xpath://span[contains(@data-plindex,'2')]
${btn_wrapUpReasons}        xpath://button[contains(@data-test-id,'202012211347380183212')]
${btn_displayAllReasons}    xpath://input[@id="ded1b1a4"]
${btn_callerDisconnectedCheckbox}    xpath://input[@data-test-id='20200331030346077319503' and contains(@name,'CallerDisconnected')]
${tbl_wrapUpAuditData}      xpath://span[contains(@class,'heading_4') and (contains(text(),'360 Data'))]
#${tbl_AgentAssistWrapUpData}    xpath://span[contains(@data-test-id,'20180209041245088386102') and contains(text(),'Agent Assist')]
${tbl_AgentAssistWrapUpData}        xpath://span[contains(@data-test-id,'20180209041245088386102') and contains(text(),'{}')]

${lbl_wrapUpMessage}    If there’s nothing else I can do for you today, I just want to take this moment to thank you for trusting Aflac with your insurance needs.
...    A short survey will be sent shortly regarding your experience and we would greatly appreciate your feedback. Hope you have a wonderful rest of your day.

${lbl_ccsMessageBar}    xpath:(//div[contains(@data-test-id,'201802220433310144823')]//div[(@id='DialogContent')])[last()]

${lbl_idolMsg_ccsInitialWarning_txt}    No activity has happened on this chat for 5 minutes. It will terminate after 2 minutes if no activity happens.
${lbl_idolMsg_ccsFinalWarning_txt}      As no activity happened on this chat for 7 minutes, it has been terminated.

## ----- CCS Portal Chat Bot Sections ----- ##
${lbl_idolMsg_ccsInitialWarning}    ${lbl_getCcsPortalChatBotSystemMsg}
${lbl_idolMsg_ccsFinalWarning}      ${lbl_getCcsPortalChatBotSystemMsg}

*** Keywords
Wait for page loading icon to complete
    Sleep    2s
    Wait Until Element Is Not Visible    ${lbl_ccsPageLoadingIcon}    timeout=${xxxlTimeout}

Select the ${paveChatbot} CCS wrap up chat button
    Wait for page loading icon to complete
    Select the PegaGadget1Ifr iFrame
    Wait Until Element Is Visible    ${btn_wrapUpChat}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_wrapUpChat

Select the ${paveChatbot} CCS wrap up chatbot button
    Wait for page loading icon to complete
    Select the PegaGadget1Ifr iFrame
    Wait Until Element Is Visible    ${btn_wrapUpChatbot}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_wrapUpChatbot

Select the ${paveChatbot} CCS Cancel wrap up chat button
    Wait for page loading icon to complete
    Select the PegaGadget1Ifr iFrame
    Wait Until Element Is Visible    ${btn_cancelWrapUpChat}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_cancelWrapUpChat

Select the ${paveChatbot} CCS wrap up SubCase button
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_AgentAssistSearch_WrapUpChat}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_AgentAssistSearch_WrapUpChat

Select the ${paveChatbot} CCS NonClient button
    Wait for page loading icon to complete
    Select the PegaGadget1Ifr iFrame
    Wait Until Element Is Visible    ${btn_nonClient_tracking}    timeout=${lTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_nonClient_tracking

Complete the ${paveChatbot} NonClient Wrap Up
    Select the PegaGadget1Ifr iFrame
    Wait until element is visible    ${inpt_nonClient_contactName}
    click Element    ${inpt_nonClient_contactName}
    Input Text    ${inpt_nonClient_contactName}    QA Test    clear=True
    Input Text    ${inpt_nonClient_email}    test@qa.com    clear=True
    Input Text    ${inpt_nonClient_trackingComments}    This is a tracking comment    clear=True
    Run Keyword    Select 'Georgia' from the stateOption field on the NonClient screen in the NonClient section
    Run Keyword    Select 'Test non client 2' from the reason field on the NonClient screen in the NonClient section
    Select the ${paveChatbot} CCS wrap up submit button

Select the ${paveChatbot} CCS Non Client Wrong Number button
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_nonClient_wrongNumber}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_nonClient_wrongNumber

Select the ${paveChatbot} CCS Add Task button
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_addTasks}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_addTasks

Select the ${paveChatbot} CCS Agent Assist Add Task button
    Switch to the CcsPortal browser
    Wait for page loading icon to complete
    Select the PegaGadget1Ifr iFrame
    Wait Until Element Is Visible    ${btn_AgentAssistSearch_addTasks}    timeout=${mTimeout}
    Wait Until Element Is Enabled    ${btn_AgentAssistSearch_addTasks}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_AgentAssistSearch_addTasks

Select the ${paveChatbot} CCS Start Co-Browse button
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_addTask_CoBrowse}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_addTask_CoBrowse

Select the ${paveChatbot} CCS Confirm Add Tasks button
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_addTask_addTasks}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_addTask_addTasks

Select the ${paveChatbot} CCS Cancel Add Tasks button
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_addTask_cancelTasks}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_addTask_cancelTasks

Select the ${paveChatbot} CCS wrap up submit button
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_submit_closeChat}    timeout=${xxxlTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_submit_closeChat

Select the ${paveChatbot} CCS chat wrap up submit button
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_submit_closeChatbot}    timeout=${xxxlTimeout}
    Scroll button or label into view    ${btn_submit_closeChatbot}
    Run Keyword    Click the ${paveChatbot} button    btn_submit_closeChatbot

Select the ${paveChatbot} CCS wrap up close button
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_close_closeChat}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_close_closeChat

Select the ${paveChatbot} CCS wrap up reasons button
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_wrapUpReasons}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_wrapUpReasons

Select the ${paveChatbot} CCS wrap up reason ${reason} from the reason dropdown
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${dd_InteractionReasonDropDown}    timeout=${lTimeout}
    Click Element    ${dd_InteractionReasonDropDown}
    sleep  2s
    ${interactionReason}    format string    ${dd_InteractionReasonDropDownValue}    ${reason}
    Wait Until Element Is Visible    ${interactionReason}    timeout=${mTimeout}
    Click Element    ${interactionReason}

Select the ${paveChatbot} CCS wrap up Caller disconnected checkbox
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_callerDisconnectedCheckbox}    timeout=${mTimeout}
    Click Element    ${btn_callerDisconnectedCheckbox}
    sleep  2s
    Verify Reason for Interaction textbox contains Caller disconnect before any information provided

Select the ${paveChatbot} display all reasons checkbox
    Wait Until Element Is Visible    ${btn_displayAllReasons}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_displayAllReasons

Select the ${paveChatbot} other actions icon as a ${activeUser}
    Wait Until Element Is Visible    ${btn_${activeUser}_otherActions}    timeout=${xlTimeout}
    Sleep    3s
    Click Element    ${btn_${activeUser}_otherActions}
    #Run Keyword    Click the ${paveChatbot} button    btn_${activeUser}_otherActions

Select the ${paveChatbot} end chat option as a ${activeUser}
    Wait Until Element Is Visible    ${btn_${activeUser}_endChat}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_${activeUser}_endChat

Select the ${paveChatbot} end chat session option as a ${activeUser}
    Wait Until Element Is Visible    ${btn_${activeUser}_endChatSession}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_${activeUser}_endChatSession

Select the ${paveChatbot} end page share option as a ${activeUser}
    Wait Until Element Is Visible    ${btn_${activeUser}endPageShare}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_${activeUser}endPageShare

Verify the ${uName} CCS returns to home screen
    Sleep    5s
    Select the PegaGadget0Ifr iFrame
    Verify that the label text is displayed    lbl_${uName}_ccs_uName

The ${paveChatbot} CCS ends the chat and wraps up the session
    #Run Keyword    The ${paveChatbot} ccs ends the live chat session
    Run Keyword    The ${paveChatbot} ccs wraps up the session

The ${paveChatbot} CCS wraps up the session
    Switch to the CcsPortal browser
    Wait for pega masking icon to complete
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PegaGadget1Ifr iFrame
        Run Keyword    Select the ${paveChatbot} CCS wrap up chatbot button
        Sleep    2s
        Run Keyword    Select the ${paveChatbot} CCS chat wrap up submit button
        Sleep    2s
    ELSE
        Do Nothing
    END

The ${paveChatbot} CCS wraps up the Sub Session with interaction reason ${reason}
    Switch to the CcsPortal browser
    Wait for pega masking icon to complete
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PegaGadget1Ifr iFrame
        Run Keyword    Select the ${paveChatbot} CCS wrap up SubCase button
        Sleep    2s
        Run Keyword    Select the ${paveChatbot} CCS wrap up reason Other from the reason dropdown
        Sleep    2s
        Run Keyword    Select the ${paveChatbot} CCS wrap up submit button
        Sleep    2s
    ELSE
        Do Nothing
    END

The ${paveChatbot} CCS wraps up the session with interaction reason ${reason}
    Switch to the CcsPortal browser
    Wait for pega masking icon to complete
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PegaGadget1Ifr iFrame
        Run Keyword    Select the ${paveChatbot} CCS wrap up chat button
        Sleep    2s
        Run Keyword    Select the ${paveChatbot} CCS wrap up reason Other from the reason dropdown
        Sleep    2s
        Run Keyword    Select the ${paveChatbot} CCS wrap up submit button
        Sleep    2s
    ELSE
        Do Nothing
    END

The ${paveChatbot} CCS wraps up the session with Caller disconnected
    Switch to the CcsPortal browser
    Wait for pega masking icon to complete
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PegaGadget1Ifr iFrame
        Run Keyword    Select the ${paveChatbot} CCS wrap up chat button
        Sleep    2s
        Run Keyword    Select the ${paveChatbot} CCS wrap up Caller disconnected checkbox
        Sleep    2s
        Run Keyword    Select the ${paveChatbot} CCS wrap up submit button
        Sleep    2s
    ELSE
        Do Nothing
    END

#Verify that the sub case wrap up info is shown in the parent wrap up
   # Switch to the CcsPortal browser
   # Wait for pega masking icon to complete
   # Wait Until Element is Visible    ${tbl_AgentAssistWrapUpData}

Verify that the sub case wrap up info contains ${reason} in the parent wrap up
    Switch to the CcsPortal browser
    Wait for pega masking icon to complete
    ${wrapupReason}    format string    ${tbl_AgentAssistWrapUpData}   ${reason}
    Wait Until Element is Visible    ${wrapupReason}

Verify Reason for Interaction textbox contains ${reason}
    Wait Until Element is Visible    ${fld_InteractionReason}
    ${interactionReason}    format string    ${fld_InteractionReasonValue}    ${reason}
    Wait Until Element Is Visible    ${interactionReason}    timeout=${mTimeout}

The ${paveChatbot} CCS wraps up the Research session with interaction reason ${reason}
    Switch to the CcsPortal browser
    Wait for pega masking icon to complete
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PegaGadget1Ifr iFrame
        Run Keyword    Select the ${paveChatbot} CCS wrap up reason Other from the reason dropdown
        Sleep    2s
        Run Keyword    Select the ${paveChatbot} CCS wrap up submit button
        Sleep    2s
    ELSE
        Do Nothing
    END

The ${paveChatbot} CCS ends the ${ccsQueueName} chat and selects the ${wrapUpOption} wrap up reason from the ${wrapUpList} list to end the session
    #Run Keyword    The ${paveChatbot} ccs ends the live chat session
    Run Keyword    The ${paveChatbot} CCS selects the ${wrapUpOption} wrap up reason from the ${wrapUpList} list to end the ${ccsQueueName} session

The ${paveChatbot} CCS selects the ${wrapUpOption} wrap up reason from the ${wrapUpList} list to end the ${ccsQueueName} session
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the ${paveChatbot} CCS wrap up chat button
        Sleep    1s
        Run Keyword    Select the ${paveChatbot} CCS chat wrap up submit button
        Sleep    2s
        Run Keyword    Select the ${paveChatbot} CCS wrap up reasons button
        Run Keyword    Verify that the ${wrapUpList} wrap up reason list is displayed
        Run Keyword    The ${paveChatbot} CCS selects the ${wrapUpOption} option from the ${wrapUpList} wrap up reasons list
        Run Keyword    Select the ${paveChatbot} CCS chat wrap up submit button
        Run Keyword    Verify the ${ccsQueueName} CCS returns to home screen
    ELSE
        Do Nothing
    END

Verify that the ${wrapUpList} wrap up reason list is displayed
    Wait until element is visible    ${opt_wrapUpReason_${wrapUpList}}    timeout=${mTimeout}
    Mouse Over    ${opt_wrapUpReason_${wrapUpList}}
    Run Keyword    Verify the options are displayed in the ${wrapUpList} wrap up reason list

The ${paveChatbot} CCS selects the ${wrapUpOption} option from the ${wrapUpList} wrap up reasons list
    Run Keyword    Click the ${paveChatbot} button    opt_wrapUpReason_${wrapUpList}_${wrapUpOption}

Verify multiple Wrap Up Reason
    Wait until element is visible    ${fld_InteractionReason}
    Wait until element is visible    ${lbl_reasonOne}
    Wait until element is visible    ${lbl_reasonTwo}

Verify that the ${paveChatbot} ccs portal displays the timout message ${fieldName}
    Switch to the CcsPortal browser
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Verify that the element exists in the chatbot section in the ccs portal ${fieldName}
    ELSE
        Do Nothing
    END

Verify that the element exists in the chatbot section in the ccs portal ${fieldName}
    Sleep    1s
    ${allElements}    Get WebElements    ${lbl_getCcsPortalChatBotSystemMsg}
    ${listCount}=    Get Length    ${allElements}

    FOR    ${the_element}    IN RANGE    ${listCount}
        ${actualText}    Get Text    ${allElements}[${the_element}]
        ${validationText}    Convert To String    ${fieldName}_txt
        ${expectedText}    Set Variable    ${${validationText}}

        ${status}=    Run Keyword And Return Status    Should Be Equal    ${actualText}    ${expectedText}
        Exit For Loop IF    '${status}'=='True'

        Register Keyword To Run On Failure    Capture Page Screenshot
        IF    ${listcount-1}==${the_element}
            Fail    Element text is not found in the live chat window in the ccs portal.
        END
    END

Verify that the ${dialogMessage} message is displayed in the ${c360Section} section in the ${paveChat} channel
    Wait for pega masking icon to complete
    Sleep    1s
    Wait Until Element Is Visible    ${lbl_${paveChat}_${c360Section}_dialogContent}    timeout=${mTimeout}
    Scroll button or label into view    ${lbl_${paveChat}_${c360Section}_dialogContent}
    Wait for pega masking icon to complete
    ${actualText}    Get Text    ${lbl_${paveChat}_${c360Section}_dialogContent}
    ${expectedText}    Set Variable    ${lbl_${paveChat}_${c360Section}_dialogContent_${dialogMessage}_txt}
    Should Be Equal    ${actualText}    ${expectedText}

Click the chatbot shadow dom button
    # Clicks a button inside the chatbot's shadow DOM using a locator attribute (e.g., aria-label="Actions") not the full xpath
    [Arguments]    ${button}
    Execute Javascript    document.querySelector("#theChatEmbed").shadowRoot.querySelector('button[${button}]').click();

Click the end chat shadow dom element
    Execute Javascript    Array.from(document.querySelector("#theChatEmbed").shadowRoot.querySelectorAll('span.sc-bcXHqe.iARAcu')).find(e => e.textContent.includes('End conversation')).click();




