*** Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

*** Variables

*** Keywords
The ${paveChatbot} CCS selects the ${queueName} work queue
    Run Keyword    Log into the ${paveChatbot} CCS portal with ${queueName}
    Run Keyword    The ${paveChatbot} CCS joins the ${queueName} work queue

The ${paveChatbot} CCS joins the ${queueName} work queue
    Unselect Frame
    Wait for pega masking icon to complete
    Mouse Over    ${btn_processAction}
    Mouse Out    ${btn_processAction}
    Sleep    1s
    Run Keyword    Select the ${paveChatbot} work queue button
    Run Keyword    Select the ${paveChatbot} manage queues button
    Run Keyword    Select the ${queueName} work queue option for the ${paveChatbot} chatbot
    Run Keyword    Select the ${paveChatbot} save queue button

The ${paveChatbot} CCS is made available
    Switch to the CcsPortal browser
    Run Keyword    Select the ${paveChatbot} make me available button

Verify the drop down option is displayed
    [Arguments]    ${dropDownOption}
    Wait until element is visible    ${${dropDownOption}}    timeout=${xxlTimeout}

Verify that the ${paveChat} displays the "${tabAuditData}" Audit Data on the wrap up screen
    Wait Until Element Is Visible    ${tbl_${paveChat}_auditData}     timeout=${mTimeout}
    ${allElements}    Get WebElements    ${tbl_${paveChat}_auditData}
    ${listCount}=    Get Length    ${allElements}
    FOR    ${the_element}    IN RANGE    ${listCount}
        ${actualText}    Get Text    ${allElements}[${the_element}]
        ${expectedText}    Convert To String    ${tabAuditData}
        ${checkValue}=    Run Keyword And Return Status    Should Contain    ${actualText}    ${expectedText}
        Exit For Loop IF    '${checkValue}'=='True'

        IF    ${listcount-1}==${the_element}
            Fail    Element text is not found in the audit data grid.
        END
    END

Verify audit data is not displayed on the wrap up screen for the ${c360Section} section in the ${paveChat} channel
    Run Keyword    Select the ${paveChat} CCS wrap up chat button
    Run Keyword    Verify that the wrapUp message is displayed in the ${c360Section} section in the ${paveChat} channel
    Wait Until Page Does Not Contain Element    ${tbl_${paveChat}_${c360Section}_wrapUpAuditData}    timeout=${sTimeout}
    
Scroll button or label into view
    [Arguments]    ${element}
    ${evalElement}    Replace String    ${element}    xpath:    ${EMPTY}
    Execute JavaScript    window.document.evaluate("${evalElement}", 
    ...    document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView(true);
    Sleep    1s

    