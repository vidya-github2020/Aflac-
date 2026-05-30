* Settings
Resource    ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChannelKeywords.robot
Resource    ${EXECDIR}${/}AgentChannel${/}Settings.resource

* Variables
${tab_Account_Details}                                        xpath://div[@aria-label='Details']
${tbl_Account_auditData}                                      xpath://span[contains(@data-test-id,'20180209041245088386102')]
${chkBox_agentChat_AccountDetails_details_OtherInfo}          xpath://input[@type='checkbox' and contains(@onchange,'Other')]
${chkBox_agentChat_AccountDetails_details_LapseNotice}        xpath://input[@type='checkbox' and contains(@onchange,'Lapse Notice')]
${chkBox_agentChat_AccountDetails_details_PolicyLevel}        xpath://input[@type='checkbox' and contains(@onchange,'Policy Level')]
${chkBox_agentChat_AccountDetails_details_BillingName}        xpath://input[@type='checkbox' and contains(@onchange,'Billing Summary')]
${chkBox_agentChat_AccountDetails_details_AccountLevel}       xpath://input[@type='checkbox' and contains(@onchange,'Account Level')]
${chkBox_agentChat_AccountDetails_details_CoverageInfo}       xpath://input[@type='checkbox' and contains(@onchange,'Coverage')]
${chkBox_agentChat_AccountDetails_details_AccountDetails}     xpath://input[@type='checkbox' and contains(@onchange,'Account Details')]


* Keywords
Verify ${paveChat} displays the "${tabAuditData}" Audit Data on the wrap up screen
    Wait Until Element Is Visible    ${tbl_${paveChat}_auditData}     timeout=${mTimeout}
    ${allElements}    Get WebElements    ${tbl_${paveChat}_auditData}
    ${listCount}=    Get Length    ${allElements}
    FOR    ${the_element}    IN RANGE    ${listCount}
        ${actualText}    Get Text    ${allElements}[${the_element}]
        ${expectedText}    Convert To String    ${tabAuditData}
        ${checkValue}=    Run Keyword And Return Status    Should Contain    ${expectedText}    ${actualText}
        IF    ${listcount}==${the_element}
            Fail    Element text is not found in the audit data grid.
        END
    END