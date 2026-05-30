*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables
${securityModal}         xpath:(//button[@class="ui-button ui-corner-all ui-widget"])[last()]
${securityNewBrowser}    xpath://div[@id='HARNESS_CONTENT']//h1[text()='Error']

*** Keywords
Verify that the ${paveChatbot} live chat message is displayed ${fieldName}
    Switch to the AgentChatbot browser
    Wait for Chatbot System loading icon to complete
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait Until Element Is Visible    ${${fieldName}}    timeout=${xxlTimeout}
        Run Keyword    Verify that the ${paveChatbot} element exists in the live chat ${fieldName}
    ELSE
        Run Keyword    Verify the ${paveChatbot} out of hours chat message text ${fieldName}
    END

Verify that the ${paveChatbot} live DMchat message is displayed ${fieldName}
    Wait for Chatbot System loading icon to complete
    Run Keyword    Get the ${paveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait Until Element Is Visible    ${${fieldName}}    timeout=${lTimeout}
        Run Keyword    Verify that the ${paveChatbot} element exists in the live chat ${fieldName}
    ELSE
        Run Keyword    Verify the ${paveChatbot} out of hours chat message text ${fieldName}
    END

Verify that the menu option is not displayed in the list
    [Arguments]    ${buttonName}
    ${getElements}    Get WebElements    ${opt_userOptions}
    FOR    ${theElement}  IN  @{getElements}
        Element Should Not Contain    ${theElement}    ${buttonName}
    END

The agent returns to the ${paveChatbot} live chat main menu
    Switch to the AgentChatbot browser
    Sleep    1s
    Wait Until Element Is Enabled    ${fld_liveChatTextarea}    timeout=${mTimeout}
    Input Text    ${fld_liveChatTextarea}    menu    clear=True
    Run Keyword    Select the ${paveChatbot} Send Message button
    Wait for Chatbot System loading icon to complete

Verify that the label text is displayed
    [Arguments]    ${labelId}
    Sleep    1s
    Wait Until Element Is Visible    ${${labelId}}    timeout=${mTimeout}
    ${actualText}    Get Text    ${${labelId}}
    Should contain    ${actualText}    ${${labelId}_txt}

Verify that the URL opens in a new browser tab
    [Arguments]    ${menuOption}    ${urlOpened}
    Sleep    1s
    Wait Until Element Is Visible    ${menuOption}    timeout=${xxlTimeout}
    Click element    ${menuOption}
    Switch window    NEW
    Sleep    10s
    #Commenting out below line as agreed with Chris as running in pipeline can't open link so just check presence of new tab
    #Location Should Contain    ${urlOpened}
    Close window
    Switch window    MAIN
    Select frame    pegaChatWidget
    Sleep    1s

The ${paveChatbot} agent enters a live chat comment ${enterComment}
    Sleep    2s
    Input Text    ${fld_liveChatTextarea}    ${enterComment}    clear=True
    Run Keyword    Select the ${paveChatbot} Send Message button

Select the ${paveChatbot} button when visible ${buttonName}
    Wait Until Element Is Visible    ${${buttonName}}    timeout=${xxxlTimeout}
    Click Element    ${${buttonName}}

    &{browserAlias}=    Get Browser Aliases
    FOR    ${alias}    IN    @{browserAlias}
        Run Keyword IF    'CcsPortal' in '''${alias}'''    Run Keyword    If displayed close the Unauthorised Security Request modal popup after selecting '${buttonName}'
    END

If displayed close the Unauthorised Security Request modal popup after selecting '${buttonName}'
    ${originalWindowHandle}=    Get the browser window handles
    Register Keyword To Run On Failure    Do Nothing
    Handle Security Error Window    ${originalWindowHandle}
    ${present}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${securityModal}    timeout=${xsTimeout}
    IF    '${present}'=='True'
        Handle Security Popup

        IF    '${buttonName}'=='btn_New'
            Wait Until Element Is Visible    ${${buttonName}}    timeout=${xxlTimeout}
            Click Element    ${${buttonName}}
        ELSE IF    '${buttonName}'=='btn_new_phoneCall' or '${buttonName}'=='btn_new_researchInteraction'
            ${present}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${securityModal}    timeout=${xsTimeout}
            IF    '${present}'=='True'
                Handle Security Popup
            END
        END
    ELSE
        Do Nothing
    END
    Register Keyword To Run On Failure    Capture Page Screenshot

Handle Security Popup
    Wait Until Element Is Visible    ${securityModal}    timeout=${xxlTimeout}
    Click Element    ${securityModal}
    Run Keyword And Ignore Error    Handle Alert

Handle Security Error Window
    [Arguments]    ${originalWindowHandle}
    Sleep    1s
    ${newWindowHandle}=    Get Window Handles
    FOR    ${winHandle}    IN    @{newWindowHandle}
        IF    '${winHandle}'=='${originalWindowHandle}'
            Do Nothing
        ELSE
            Switch Window   ${winHandle}
            Close Window
            Switch Window   ${originalWindowHandle}
            Select the PegaGadget1Ifr iFrame
            Exit For Loop
        END
    END

