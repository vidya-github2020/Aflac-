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
${lbl_AgentChat_queueMonitor}        xpath://h2[contains(@class,'header-title') and contains(text(),'Queue monitor')]
${lbl_AgentChat_queueMonitor_txt}    Queue monitor
${lbl_AgentChat_queueMonitor_col1}   xpath://div//div[contains(text(),'Occupancy')]
${lbl_AgentChat_queueMonitor_col2}   xpath://div//div[contains(text(),'Queues')]
${lbl_AgentChat_queueMonitor_col3}   xpath://div//div[contains(text(),'Current wait time')]
${lbl_AgentChat_queueMonitor_col4}   xpath://div//div[contains(text(),'Queued conversations')]
${lbl_AgentChat_queueMonitor_col5}   xpath://div//div[contains(text(),'Active conversations')]
${lbl_AgentChat_queueMonitor_col6}   xpath://div//div[contains(text(),'Active CSRs')]
${lbl_AgentChat_queueMonitor_col7}   xpath://div//div[contains(text(),'CSRs available to join')]

${lbl_AgentChat_queueName}     xpath://a[contains(@data-test-id, '201604191209140127188925')]

* Keywords
The Queue monitor section is visible
    [Arguments]    ${ele}    ${eleName}
    Sleep    5s
    Wait Until Element Is Visible    ${ele}    timeout=${lTimeout}
    Element Text Should Be    ${ele}    ${eleName}

Verify that the Queue name is not displayed in the list
    [Arguments]    ${QueueName}
    ${getElements}    Get WebElements    ${lbl_AgentChat_queueName}
    FOR    ${theElement}  IN  @{getElements}
        Element Should Not Contain    ${theElement}    ${QueueName}
    END

Verify that the Queue name is displayed in the list
    [Arguments]    ${QueueName}
    ${getElements}    Get WebElements    ${lbl_AgentChat_queueName}
    ${listCount}=    Get Length    ${getElements}
    FOR    ${theElement}    IN RANGE    ${listCount}
        ${actualText}    Get Text    ${getElements}[${theElement}]
        ${validationText}    Convert To String    ${QueueName}
        ${expectedText}    Set Variable    ${validationText}
        Exit For Loop IF    '''${actualText}'''=='''${expectedText}'''
        IF    ${listcount-1}==${theElement}
            Fail    Element text is not found in the table.
        END
    END

