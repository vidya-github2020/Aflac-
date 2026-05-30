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
${lbl_AgentChat_agentSummary_AgentChatFlow_CustomerLabel}    xpath://div[not(@style='display:none;') and contains(@data-test-id,'20180105021550085035')]//span[contains(@data-test-id,'202203151337520234781')]

${opt_wrapUpReason_Agent}    xpath://span[contains(@class,'menu-item-title') and (text()='Agent')]

${opt_wrapUpReason_Agent_BrokerEscalation}                xpath://span[contains(@class,'menu-item-title') and (text()='Broker Escalation')]
${opt_wrapUpReason_Agent_CourseSupport}                   xpath://span[contains(@class,'menu-item-title') and (text()='Course Support')]
${opt_wrapUpReason_Agent_Claims}                          xpath://span[contains(@class,'menu-item-title') and (text()='Claims')]
${opt_wrapUpReason_Agent_ContestAndBonus}                 xpath://span[contains(@class,'menu-item-title') and (text()='Contest and Bonus')]
${opt_wrapUpReason_Agent_Payroll}                         xpath://span[contains(@class,'menu-item-title') and (text()='Payroll')]
${opt_wrapUpReason_Agent_FieldContractingCompensation}    xpath://span[contains(@class,'menu-item-title') and (text()='Field Contracting/Compensation')]
${opt_wrapUpReason_Agent_AflacGroup}                      xpath://span[contains(@class,'menu-item-title') and (text()='AFLAC Group')]
${opt_wrapUpReason_Agent_PolicyInfo}                      xpath://span[contains(@class,'menu-item-title') and (text()='Policy Info')]
${opt_wrapUpReason_Agent_NbsPendingBusiness}              xpath://span[contains(@class,'menu-item-title') and (text()='NBS/Pending Business')]
${opt_wrapUpReason_Agent_SicRating}                       xpath://span[contains(@class,'menu-item-title') and (text()='SIC Rating')]
${opt_wrapUpReason_Agent_Everwell}                        xpath://span[contains(@class,'menu-item-title') and (text()='Everwell')]

${lbl_AgentChat_agent_c360SummaryHeaderFields1}    xpath://span[contains(@data-test-id,'201705020725070683150823')]
${lbl_AgentChat_agent_c360SummaryHeaderFields3}    xpath://span[contains(@data-test-id,'201705020725070683151764')]
${lbl_AgentChat_agent_c360SummaryHeaderFields2}    xpath://span[contains(@data-test-id,'20250916142838046581')]
${tbl_AgentChat_auditData}    xpath://span[contains(@data-test-id,'20180209041245088386102')]

* Keywords
Verify the options are displayed in the ${wrapUpList} wrap up reason list
    Wait for pega masking icon to complete
    Sleep    2s
    IF    '${wrapUpList}'=='Agent'
        Verify the drop down option is displayed    opt_wrapUpReason_Agent_BrokerEscalation
        Verify the drop down option is displayed    opt_wrapUpReason_Agent_CourseSupport
        Verify the drop down option is displayed    opt_wrapUpReason_Agent_Claims
        Verify the drop down option is displayed    opt_wrapUpReason_Agent_ContestAndBonus
        Verify the drop down option is displayed    opt_wrapUpReason_Agent_Payroll
        Verify the drop down option is displayed    opt_wrapUpReason_Agent_FieldContractingCompensation
        Verify the drop down option is displayed    opt_wrapUpReason_Agent_AflacGroup
        Verify the drop down option is displayed    opt_wrapUpReason_Agent_PolicyInfo
        Verify the drop down option is displayed    opt_wrapUpReason_Agent_NbsPendingBusiness
        Verify the drop down option is displayed    opt_wrapUpReason_Agent_SicRating
        Verify the drop down option is displayed    opt_wrapUpReason_Agent_Everwell
    END

Verify that the agent details are displayed in the C360 summary header for the ${ChatFlow} flow
    Wait for pega masking icon to complete
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        IF    '${gEnvironment}'=='SysT'
            Verify the AgentChat details are correct in the C360 summary header field    Phone               ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_Phone_Syst}
            Verify the AgentChat details are correct in the C360 summary header field    Address             ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_Address_Syst}
            #Verify the AgentChat details are correct in the C360 summary header field    CityStateZip       ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_CityStateZip_Syst}
            Verify the AgentChat details are correct in the C360 summary header field    DoB                 ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_DoB_Syst}
            #Verify the AgentChat details are correct in the C360 summary header field    Email               ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_Email_Syst}
            Verify the AgentChat details are correct in the C360 summary header field    SSN                 ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_SSN_Syst}
            Verify the AgentChat details are correct in the C360 summary header field    ContractState       ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_ContractState_Syst}
            Verify the AgentChat details are correct in the C360 summary header field    WritingNumber       ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_WritingNumber_Syst}
            #Verify the AgentChat details are correct in the C360 summary header field    Level               ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_Level_Syst}
            Verify the AgentChat details are correct in the C360 summary header field    Status              ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_Status_Syst}
            Verify the AgentChat details are correct in the C360 summary header field    IVRProfileStatus    ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_IVRProfileStatus_Syst}
            Verify the AgentChat details are correct in the C360 summary header field    StatementBalance    ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_StatementBalance_Syst}
            Verify that the label text is displayed    lbl_AgentChat_agentSummary_AgentChatFlow_CustomerLabel
        ELSE
            Verify the AgentChat details are correct in the C360 summary header field    Phone               ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_Phone}
            Verify the AgentChat details are correct in the C360 summary header field    Address             ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_Address}
            Verify the AgentChat details are correct in the C360 summary header field    DoB                 ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_DoB}
            Verify the AgentChat details are correct in the C360 summary header field    Ssn                 ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_SSN}
            Verify the AgentChat details are correct in the C360 summary header field    ContractState       ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_ContractState}
            Verify the AgentChat details are correct in the C360 summary header field    WritingNumber       ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_WritingNumber}
            Verify the AgentChat details are correct in the C360 summary header field    Level               ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_Level}
            Verify the AgentChat details are correct in the C360 summary header field    Status              ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_Status}
            Verify the AgentChat details are correct in the C360 summary header field    IVRProfileStatus    ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_IVRProfileStatus}
            Verify the AgentChat details are correct in the C360 summary header field    StatementBalance    ${lbl_AgentChat_agentSummary_${ChatFlow}Flow_StatementBalance}    
            Verify that the label text is displayed    lbl_AgentChat_agentSummary_AgentChatFlow_CustomerLabel
        END
    ELSE
        Do Nothing
    END

Verify the AgentChat details are correct in the C360 summary header field
    [Arguments]    ${fieldName}    ${expectedValue}
    Wait for pega masking icon to complete
    IF    '${fieldName}'=='Phone' or '${fieldName}'=='DoB' or '${fieldName}'=='WritingNumber' or '${fieldName}'=='Level' or '${fieldName}'=='ContractState' or '${fieldName}'=='Status' or '${fieldName}'=='IVRProfileStatus'
        ${allElements}=    Return the AgentChat c360 summary header fields 1
    ELSE IF    '${fieldName}'=='StatementBalance'            
        ${allElements}=    Return the AgentChat c360 summary header fields 2
    ELSE   
        ${allElements}=    Return the AgentChat c360 summary header fields 3      
    END

    ${listCount}=    Get Length    ${allElements}
    FOR    ${the_element}    IN RANGE    ${listCount}
        ${actualText}    Get Text    ${allElements}[${the_element}]
        ${expectedText}    Convert To String    ${expectedValue}
        Exit For Loop IF    '${actualText}'=='${expectedText}'
        IF    ${listcount-1}==${the_element}
            Fail    Element text is not found in the agent summary header.
        END
    END

Return the AgentChat c360 summary header fields ${fieldNumber}
    Select the PegaGadget1Ifr iFrame
    Wait Until Element Is Visible    ${lbl_AgentChat_agent_c360SummaryHeaderFields${fieldNumber}}    timeout=${mTimeout}
    ${allElements}    Get WebElements    ${lbl_AgentChat_agent_c360SummaryHeaderFields${fieldNumber}}
    RETURN    ${allElements}
