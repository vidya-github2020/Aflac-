*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${answerAgentChat_modal}        xpath://div[contains(@string_type,'label') and contains(text(),'Incoming')]
${answerAgentChat_modal_txt}    Incoming

${btn_modal_acceptsChat}     xpath://button[contains(@class,'Strong pzhc pzbutton') and contains(@title,'Accept incoming chat request') and contains(@data-original-text,'Accept')]
${btn_modal_declinesChat}    xpath://button[contains(@class,'pzhc pzbutton') and contains(@title,'Decline incoming chat request')]
${btn_modal_endChat}         xpath://button[contains(@class,'Strong pzhc pzbutton') and contains(text(),'End conversation')]

*** Keywords
Select the ${paveChatbot} end chat modal button
    Run Keyword    Click the ${paveChatbot} button    btn_modal_endChat
    &{browserAlias}=    Get Browser Aliases
    FOR    ${alias}    IN    @{browserAlias}
        Run Keyword IF    'CcsPortal' in '''${alias}'''    Run Keyword    If displayed close the Unauthorised Security Request modal popup after selecting 'btn_modal_endChat'
    END
    Wait for page loading icon to complete
    Verify that the label text is displayed    lbl_ccs_chatEnded

The ${paveChatbot} CCS ${acceptDeclineOption} the live chat alert
    Switch to the CcsPortal browser
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Log to console    Waiting on incoming CCS chat modal window to display
        Run Keyword    Select the ${acceptDeclineOption} option on the ${paveChatbot} modal alert
    ELSE
        Run Keyword    Verify that the ${paveChatbot} live chat modal is not displayed
    END


Select the ${acceptDeclineOption} option on the ${paveChatbot} modal alert
    Sleep    2s
    Wait Until Element Is Visible    ${answerAgentChat_modal}    timeout=${xxlTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_modal_${acceptDeclineOption}Chat

Verify that the ${paveChatbot} live chat modal is not displayed
    Switch to the CcsPortal browser
    Wait Until Page Does Not Contain Element    ${answerAgentChat_modal}    timeout=${mTimeout}






