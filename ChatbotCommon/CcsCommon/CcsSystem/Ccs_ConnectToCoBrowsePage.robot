*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${btn_LaunchCoBrowse}              xpath://button[contains(@data-test-id,'2015100718273005149804')]
${input_CoBrowseSessionID}         xpath://input[contains(@data-test-id,'2015100718273005138906')]
${lbl_Dialog_Cobrowse_requestmsg}    xpath://span[contains(@data-test-id,'20181211023555043234699') and contains(text(),'Your privacy is our priority. The Customer Care Specialist can only see what’s on this specific web page. They cannot see or access anything else on your computer.')]
${btn_AcceptCoBrowseInLiveChat}    xpath://button[contains(@data-test-id,'20181211064920079356914') and contains(text(),'Yes')]
${lbl_Dialog_Cobrowse_Instruction}    xpath://div[contains(@id,'DialogContent') and contains(text(),"If you're not already on the")]

*** Keywords
Extract the Cobrowse Session ID from the LiveChat Screen
    Switch to the AgentChatbot browser
    Reload Page
    Sleep    4s
    Wait Until Element Is Visible    xpath://input[contains(@id,'fname')]    timeout=${xxlTimeout}
    Click Element    xpath://input[contains(@id,'fname')]
    Sleep    1s
    Press Keys    xpath://input[contains(@id,'fname')]    RETURN+CTRL
    Sleep    1s
    Wait Until Element Is Visible    id:P6BWWR9LQB-widget-frame    timeout=${xxlTimeout}
    Select the P6BWWR9LQB-widget-frame iFrame
    Wait Until Element Is Visible    xpath://span[@class='list-group-item-text']//p[@class='text-center']    timeout=${xxlTimeout}
    ${getCoBrowserConnectionId}    Get Text    xpath://span[@class='list-group-item-text']//p[@class='text-center']
    Set Suite Variable    ${gCoBrowserConnectionId}    ${getCoBrowserConnectionId}
    Wait Until Element Is Visible    xpath://a[contains(@class,'my-icon')]//span[@class='glyphicon']    timeout=${xxlTimeout}
    Click Element    xpath://a[contains(@class,'my-icon')]//span[@class='glyphicon']
    Select the OnlineHelpIfr iFrame

Verify you can start a CoBrowse session via ${coBrowseSession} in the ${paveChat} channel
    ${originalWindowHandle}=    Get the browser window handles
    IF    '${coBrowseSession}'=='PhoneCall'
        Run Keyword    Select the ${paveChat} New button
        Run Keyword    Select the ${paveChat} Phone call button
        Select CoBrowse from the task options    ${paveChat}
        Wait Until Element Is Visible    ${input_${paveChat}_CoBrowseSessionID}    timeout=${sTimeout}
        Wait Until Element Is Visible    ${lbl_Dialog_Cobrowse_Instruction}
        Input Text    ${input_${paveChat}_CoBrowseSessionID}    ${gCoBrowserConnectionId}    clear=True
        Sleep    1s
        Wait Until Element Is Enabled    ${btn_${paveChat}_LaunchCoBrowse}    timeout=${sTimeout}
        Run Keyword    Click the ${paveChat} button    btn_${paveChat}_LaunchCoBrowse
        Sleep    3s

    ELSE IF    '${coBrowseSession}'=='LiveChat'
        Select CoBrowse from the task options    ${paveChat}
        Switch to the AgentChatbot browser
        Sleep    1s
        Wait Until Element Is Visible    ${btn_AcceptCoBrowseInLiveChat}    timeout=${xxlTimeout}
        Wait Until Element Is Visible    ${lbl_Dialog_Cobrowse_requestmsg}
        Click Element    ${btn_AcceptCoBrowseInLiveChat}
        Sleep    1s
        Switch to the CcsPortal browser
        Sleep    1s
        Select the PegaGadget1Ifr iFrame
        Run Keyword    Click the ${paveChat} button    btn_${paveChat}_LaunchCoBrowse
        Sleep    3s

    ELSE IF    '${coBrowseSession}'=='AddTaskOption'
        Switch to the CcsPortal browser
        Sleep    1s
        Select the PegaGadget1Ifr iFrame
        Input Text    ${input_${paveChat}_CoBrowseSessionID}    ${gCoBrowserConnectionId}    clear=True
        Sleep    1s
        Wait Until Element Is Enabled    ${btn_${paveChat}_LaunchCoBrowse}    timeout=${sTimeout}
        Run Keyword    Click the ${paveChat} button    btn_${paveChat}_LaunchCoBrowse
        Run Keyword And Ignore Error    Handle Alert
        #Run Keyword    Click the ${paveChat} button    btn_${paveChat}_LaunchCoBrowse
        Sleep    3s

    END
    Handle New CoBrowse Session Window    ${originalWindowHandle}
    Sleep    3s

Select CoBrowse from the task options
    [Arguments]    ${paveChat}
    Switch to the CcsPortal browser
    Sleep    3s
    Select the PegaGadget1Ifr iFrame
    Run Keyword    Select the ${paveChat} CCS Add Task button
    Run Keyword    Select the ${paveChat} CCS Start Co-Browse button
    Run Keyword    Select the ${paveChat} CCS Confirm Add Tasks button
    Sleep    1s

Get the browser window handles
    Switch to the CcsPortal browser
    ${windowHandles}=    Get Window Handles
    ${originalWindowHandleList}=    Convert To List      ${windowHandles}
    ${originalWindowHandle}=    Get From List    ${originalWindowHandleList}    0
    RETURN    ${originalWindowHandle}

Handle New CoBrowse Session Window
    [Arguments]    ${originalWindowHandle}
    Sleep    1s
    ${newWindowHandle}=    Get Window Handles
    FOR    ${winHandle}    IN    @{newWindowHandle}
        IF    '${winHandle}'=='${originalWindowHandle}'
            Do Nothing
        ELSE
            Switch Window   ${winHandle}
            Sleep    2s
            Close Window
            Switch Window   ${originalWindowHandle}
            Select the PegaGadget1Ifr iFrame
            Exit For Loop
        END
    END
