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
${lbl_AgentChat_chatVolumeTrend}        xpath://h2[contains(@class,'header-title') and contains(text(),'Chat Volume Trend By Queue')]
${lbl_AgentChat_chatVolumeTrend_txt}    Chat Volume Trend By Queue

${lbl_AgentChat_csatData}               xpath://h2[contains(@class,'header-title') and contains(text(),'CSAT Data')]
${lbl_AgentChat_csatData_txt}           CSAT Data
${lbl_AgentChat_csat_columnHeader_1}    xpath://th[contains(@data-test-id,'201909031623160390943-th-0')]//div[contains(text(),'Queue Name')]
${lbl_AgentChat_csat_columnHeader_2}    xpath://th[contains(@data-test-id,'201909031623160390943-th-1')]//div[contains(text(),'Total Surveys Answered')]
${lbl_AgentChat_csat_columnHeader_3}    xpath://th[contains(@data-test-id,'201909031623160390943-th-2')]//div[contains(text(),'Total CSAT Questions Answered')]
${lbl_AgentChat_csat_columnHeader_4}    xpath://th[contains(@data-test-id,'201909031623160390943-th-3')]//div[contains(text(),'Positive CSAT Answer Count')]
${lbl_AgentChat_csat_columnHeader_5}    xpath://th[contains(@data-test-id,'201909031623160390943-th-4')]//div[contains(text(),'Average Net Promoter Score (%)')]
${lbl_AgentChat_csat_columnHeader_6}    xpath://th[contains(@data-test-id,'201909031623160390943-th-5')]//div[contains(text(),'Average Ease Score (%)')]
${lbl_AgentChat_csat_columnHeader_7}    xpath://th[contains(@data-test-id,'201909031623160390943-th-6')]//div[contains(text(),'Average CSR Rating (%)')]
${lbl_AgentChat_csat_tableRow}          xpath://tr[contains(@data-test-id,'201909031623160390943')]

${lbl_AgentChat_liveChatHandling}        xpath://h2[contains(@class,'header-title') and contains(text(),'Live Chat Handling')]
${lbl_AgentChat_liveChatHandling_txt}    Live Chat Handling
${lbl_AgentChat_lchr_columnHeader_1}     xpath://th[contains(@data-test-id,'201909032150380699578-th-0')]//div[contains(text(),'Queue Name')]
${lbl_AgentChat_lchr_columnHeader_2}     xpath://th[contains(@data-test-id,'201909032150380699578-th-1')]//div[contains(text(),'Interactive Average Handle Time (m)')]
${lbl_AgentChat_lchr_columnHeader_3}     xpath://th[contains(@data-test-id,'201909032150380699578-th-2')]//div[contains(text(),'Cumulative Chat Time (m)')]
${lbl_AgentChat_lchr_columnHeader_4}     xpath://th[contains(@data-test-id,'201909032150380699578-th-3')]//div[contains(text(),'Total Interactive Chats')]
${lbl_AgentChat_lchr_tableRow}           xpath://tr[contains(@data-test-id,'201909032150380699578')]

${lbl_AgentChat_chatRoutingStats}        xpath://h2[contains(@class,'header-title') and contains(text(),'Chat Routing Statistics')]
${lbl_AgentChat_chatRoutingStats_txt}    Chat Routing Statistics
${lbl_AgentChat_crs_columnHeader_1}      xpath://th[contains(@data-test-id,'201909032150380699578-th-0')]//div[contains(text(),'Queue Name')]
${lbl_AgentChat_crs_columnHeader_2}      xpath://th[contains(@data-test-id,'201909032150380699578-th-1')]//div[contains(text(),'Transfer Rate (%)')]
${lbl_AgentChat_crs_columnHeader_3}      xpath://th[contains(@data-test-id,'201909032150380699578-th-2')]//div[contains(text(),'Reroute Rate (%)')]
${lbl_AgentChat_crs_columnHeader_4}      xpath://th[contains(@data-test-id,'201909032150380699578-th-3')]//div[contains(text(),'No Agent Rate (%)')]
${lbl_AgentChat_crs_columnHeader_5}      xpath://th[contains(@data-test-id,'201909032150380699578-th-4')]//div[contains(text(),'Abandoned Rate (%)')]
${lbl_AgentChat_crs_columnHeader_6}      xpath://th[contains(@data-test-id,'201909032150380699578-th-5')]//div[contains(text(),'Total Abandoned Chats')]
${lbl_AgentChat_crs_columnHeader_7}      xpath://th[contains(@data-test-id,'201909032150380699578-th-6')]//div[contains(text(),'Resolved Rate (%)')]
${lbl_AgentChat_crs_columnHeader_8}      xpath://th[contains(@data-test-id,'201909032150380699578-th-7')]//div[contains(text(),'Average Wait Time (m)')]
${lbl_AgentChat_crs_columnHeader_9}      xpath://th[contains(@data-test-id,'201909032150380699578-th-8')]//div[contains(text(),'Total Requested Interactive Chats')]
${lbl_AgentChat_crs_columnHeader_10}     xpath://th[contains(@data-test-id,'201909032150380699578-th-9')]//div[contains(text(),'Total Offered Chats')]
${lbl_AgentChat_crs_tableRow}            xpath://tr[contains(@data-test-id,'201909032150380699578')]

${lbl_AgentChat_volumeTrendLegend_1}    xpath://*[name()="svg"]//*[name()="text" and text()="AflacGroup"]
${lbl_AgentChat_volumeTrendLegend_2}    xpath://*[name()="svg"]//*[name()="text" and text()="AgentQueue"]
${lbl_AgentChat_volumeTrendLegend_3}    xpath://*[name()="svg"]//*[name()="text" and text()="AssociateBillingQueue"]
${lbl_AgentChat_volumeTrendLegend_4}    xpath://*[name()="svg"]//*[name()="text" and text()="AssociateClaimsQueue"]
${lbl_AgentChat_volumeTrendLegend_5}    xpath://*[name()="svg"]//*[name()="text" and text()="AssociateCompensationQueue"]
${lbl_AgentChat_volumeTrendLegend_6}    xpath://*[name()="svg"]//*[name()="text" and text()="AssociateGeneralQueue"]
${lbl_AgentChat_volumeTrendLegend_7}    xpath://*[name()="svg"]//*[name()="text" and text()="AssociateNBSQueue"]
${lbl_AgentChat_volumeTrendLegend_8}    xpath://*[name()="svg"]//*[name()="text" and text()="PHQueue"]

${fld_AgentChat_reportStartDate}    xpath://input[contains(@id,'cadf506f')]
${fld_AgentChat_reportEndDate}      xpath://input[contains(@id,'3efa0336')]

${AgentChat_newStartDate_VolTrendReport}    3/20/2023 8:00 AM
${AgentChat_newEndDate_VolTrendReport}      3/27/2023 6:00 PM


* Keywords
Verify that the AgentChat CCS report section is visible
    [Arguments]    ${ele}    ${eleName}
    Sleep    5s
    Wait Until Element Is Visible    ${ele}    timeout=${lTimeout}
    Element Text Should Be    ${ele}    ${eleName}

Update the date fields for the AgentChat chat volume trend report
    Sleep    3s
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${lbl_AgentChat_chatVolumeTrend}    timeout=${lTimeout}
    Element Text Should Be    ${lbl_AgentChat_chatVolumeTrend}    ${lbl_AgentChat_chatVolumeTrend_txt}
    Wait Until Element Is Visible    ${fld_AgentChat_reportStartDate}    timeout=${mTimeout}
    Input Text    ${fld_AgentChat_reportStartDate}    ${AgentChat_newStartDate_VolTrendReport}    clear=True
    Press Keys    None    TAB
    Wait Until Element Is Visible    ${fld_AgentChat_reportEndDate}    timeout=${mTimeout}
    Input Text    ${fld_AgentChat_reportEndDate}    ${AgentChat_newEndDate_VolTrendReport}    clear=True
    Press Keys    None    TAB
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${lbl_AgentChat_volumeTrendLegend_1}    timeout=${lTimeout}

Verify that the Chat Routing Statistics table is displayed
    Verify that the AgentChat CCS report section is visible    ${lbl_AgentChat_chatRoutingStats}    ${lbl_AgentChat_chatRoutingStats_txt}
    Table Column Should Contain   ${lbl_AgentChat_crs_columnHeader_1}     1    Queue Name
    Table Column Should Contain   ${lbl_AgentChat_crs_columnHeader_2}     1    Transfer Rate (%)
    Table Column Should Contain   ${lbl_AgentChat_crs_columnHeader_3}     1    Reroute Rate (%)
    Table Column Should Contain   ${lbl_AgentChat_crs_columnHeader_4}     1    No Agent Rate (%)
    Table Column Should Contain   ${lbl_AgentChat_crs_columnHeader_5}     1    Abandoned Rate (%)
    Table Column Should Contain   ${lbl_AgentChat_crs_columnHeader_6}     1    Total Abandoned Chats
    Table Column Should Contain   ${lbl_AgentChat_crs_columnHeader_7}     1    Resolved Rate (%)
    Table Column Should Contain   ${lbl_AgentChat_crs_columnHeader_8}     1    Average Wait Time (m)
    Table Column Should Contain   ${lbl_AgentChat_crs_columnHeader_9}     1    Total Requested Interactive Chats
    Table Column Should Contain   ${lbl_AgentChat_crs_columnHeader_10}    1    Total Offered Chats
    Table Row Should Contain    ${lbl_AgentChat_crs_tableRow}    2    AFLAC Group
    Table Row Should Contain    ${lbl_AgentChat_crs_tableRow}    3    Associate Claims
    Table Row Should Contain    ${lbl_AgentChat_crs_tableRow}    4    Associate General
    Table Row Should Contain    ${lbl_AgentChat_crs_tableRow}    5    Everwell
    Table Row Should Contain    ${lbl_AgentChat_crs_tableRow}    6    Overall
    Table Row Should Contain    ${lbl_AgentChat_crs_tableRow}    7    Policy

Verify that the Chat Volume Trend table is displayed
    Element Text Should Be    ${lbl_AgentChat_volumeTrendLegend_1}    AflacGroup
    Element Text Should Be    ${lbl_AgentChat_volumeTrendLegend_2}    AgentQueue
    Element Text Should Be    ${lbl_AgentChat_volumeTrendLegend_4}    AssociateClaimsQueue
    Element Text Should Be    ${lbl_AgentChat_volumeTrendLegend_6}    AssociateGeneralQueue
    Element Text Should Be    ${lbl_AgentChat_volumeTrendLegend_8}    PHQueue

Verify that the CSAT Data table is displayed
    Verify that the AgentChat CCS report section is visible    ${lbl_AgentChat_csatData}    ${lbl_AgentChat_csatData_txt}
    Table Column Should Contain   ${lbl_AgentChat_csat_columnHeader_1}    1    Queue Name
    Table Column Should Contain   ${lbl_AgentChat_csat_columnHeader_2}    1    Total Surveys Answered
    Table Column Should Contain   ${lbl_AgentChat_csat_columnHeader_3}    1    Total CSAT Questions Answered
    Table Column Should Contain   ${lbl_AgentChat_csat_columnHeader_4}    1    Positive CSAT Answer Count
    Table Column Should Contain   ${lbl_AgentChat_csat_columnHeader_5}    1    Average Net Promoter Score (%)
    Table Column Should Contain   ${lbl_AgentChat_csat_columnHeader_6}    1    Average Ease Score (%)
    Table Column Should Contain   ${lbl_AgentChat_csat_columnHeader_7}    1    Average CSR Rating (%)
    Table Row Should Contain    ${lbl_AgentChat_csat_tableRow}    2    AFLAC Group
    Table Row Should Contain    ${lbl_AgentChat_csat_tableRow}    3    Associate Claims
    Table Row Should Contain    ${lbl_AgentChat_csat_tableRow}    4    Associate General
    Table Row Should Contain    ${lbl_AgentChat_csat_tableRow}    5    Everwell
    Table Row Should Contain    ${lbl_AgentChat_csat_tableRow}    6    Overall
    Table Row Should Contain    ${lbl_AgentChat_csat_tableRow}    7    Policy

Verify that the Live Chat Handling table is displayed
    Verify that the AgentChat CCS report section is visible    ${lbl_AgentChat_liveChatHandling}    ${lbl_AgentChat_liveChatHandling_txt}
    Table Column Should Contain   ${lbl_AgentChat_lchr_columnHeader_1}    1    Queue Name
    Table Column Should Contain   ${lbl_AgentChat_lchr_columnHeader_2}    1    Interactive Average Handle Time (m)
    Table Column Should Contain   ${lbl_AgentChat_lchr_columnHeader_3}    1    Cumulative Chat Time (m)
    Table Column Should Contain   ${lbl_AgentChat_lchr_columnHeader_4}    1    Total Interactive Chats
    Table Row Should Contain    ${lbl_AgentChat_lchr_tableRow}    2    AFLAC Group
    Table Row Should Contain    ${lbl_AgentChat_lchr_tableRow}    3    Associate Claims
    Table Row Should Contain    ${lbl_AgentChat_lchr_tableRow}    4    Associate General
    Table Row Should Contain    ${lbl_AgentChat_lchr_tableRow}    5    Everwell
    Table Row Should Contain    ${lbl_AgentChat_lchr_tableRow}    6    Overall
    Table Row Should Contain    ${lbl_AgentChat_lchr_tableRow}    7    Policy

Verify that the Queue Monitoring table is displayed
    The Queue monitor section is visible    ${lbl_AgentChat_queueMonitor}    ${lbl_AgentChat_queueMonitor_txt}
    Table Column Should Contain   ${lbl_AgentChat_queueMonitor_col1}    1     Occupancy
    Table Column Should Contain   ${lbl_AgentChat_queueMonitor_col2}    1     Queues
    Table Column Should Contain   ${lbl_AgentChat_queueMonitor_col3}    1     Current wait time
    Table Column Should Contain   ${lbl_AgentChat_queueMonitor_col4}    1     Queued conversations
    Table Column Should Contain   ${lbl_AgentChat_queueMonitor_col5}    1     Active conversations
    Table Column Should Contain   ${lbl_AgentChat_queueMonitor_col6}    1     Active CSRs
    #Table Column Should Contain   ${lbl_AgentChat_queueMonitor_col7}    1     CSRs available to join
    Verify that the Queue name is not displayed in the list    AssociateCompensationQueue
    Verify that the Queue name is not displayed in the list    AssociateBillingQueue
    Verify that the Queue name is not displayed in the list    AssociateNBSQueue
    Verify that the Queue name is displayed in the list    AssociateGeneralQueue

