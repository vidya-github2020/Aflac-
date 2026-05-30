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
${mdl_AgentChat_wellRpt_Header}      xpath://span[contains(@id,'modaldialog_hd_title')]
${mdl_AgentChat_wellRpt_Body}    xpath://span[contains(@data-testid,'text_message_csr')]
${mdl_AgentChat_wellRpt_Close}       xpath://button[contains(@type,'button') and contains(text(),'Close')]
${mdl_AgentChat_wellRpt_hereLink}    xpath://a[contains(@data-testid, 'linkified_text_markdown') and contains(text(),'here')]


* Keywords
The AgentChat agent opens the Wellness Report
    Select the AgentChat Wellness Reporting option
    Verify the AgentChat Wellness Report message

The AgentChat agent selects the Wellness Report close button
    Click the AgentChat button    mdl_AgentChat_wellRpt_Close

Verify the AgentChat Wellness Report message
    Verify the the AgentChat Wellness Report text is displayed    mdl_AgentChat_wellRpt_Body    lbl_AgentChat_wellRpt

Verify the the AgentChat Wellness Report text is displayed
    [Arguments]    ${modalId}    ${labelId}
    Switch to the AgentChatbot browser
    Wait for Chatbot System loading icon to complete
    Wait Until Element Is Visible    ${${modalId}}    timeout=${mTimeout}
    sleep    1s
    ${allElements}    Get WebElements    ${${modalId}}
    ${listCount}=    Get Length    ${allElements}
    FOR    ${the_element}    IN RANGE    ${listCount}
        ${actualText}    Get Text    ${allElements}[${the_element}]
        ${expectedText}    Set Variable    ${${labelId}_txt}
        ${actualTextNormalized}=    Replace String    ${actualText}    ${SPACE}    ${EMPTY}
        ${actualTextNormalized}=    Replace String    ${actualTextNormalized}    \n    ${EMPTY}
        ${expectedTextNormalized}=    Replace String    ${expectedText}    ${SPACE}    ${EMPTY}
        ${expectedTextNormalized}=    Replace String    ${expectedTextNormalized}    \n    ${EMPTY}
        ${status}=    Run Keyword And Return Status    Should Contain    ${actualTextNormalized}   ${expectedTextNormalized}
        IF    '${status}'=='True'
            Exit For Loop      
        END
        IF    ${listcount-1}==${the_element}
            Fail    Element text is not found in the live chat window.
        END
    END     
