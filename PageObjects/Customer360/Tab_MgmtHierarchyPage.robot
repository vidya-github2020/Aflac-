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
${tab_AgentChat_MgmtHierarchy}    xpath://div[@aria-label='Mgmt Hierarchy']
${tbl_AgentChat_MgmtHierarchy_sectionHeader}      xpath://h2[contains(@class,'header-title') and (text()='Management Hierarchy')]
${tbl_AgentChat_MgmtHierarchy_columnHeaders}      xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-MgmtHrcy-AgentManagementHierarchyList')]//th[@role='columnheader']
${tbl_AgentChat_MgmtHierarchy_rowCollapseIcon}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-MgmtHrcy-AgentManagementHierarchyList')]//tr[@pl_index='tableRowNumber']//td//span
${tbl_AgentChat_ExpandedMgmtHierarchy_rowCollapseIcon}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-MgmtHrcy-ManagementHierarchy')]//tr[@pl_index='tableRowNumber']//td//span
${tbl_AgentChat_MgmtHierarchy_expandedColumnHeaders}      xpath://div[contains(@param_name,'EXPANDEDSubSectionMgmtMgrContactDetailsB')]//h2[contains(@class,'header-title')]
${btn_AgentChat_MgmtHierarchy_rowAuditCheckbox}   xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-MgmtHrcy-AgentManagementHierarchyList')]//tr[@pl_index='tableRowNumber']//td//input

${tbl_AgentChat_MgmtHierarchy_rowHeaderFieldValues}      xpath://tr[contains(@data-test-id,'201910071717280742516') and (@pl_index='rowNumber')]//td[@data-attribute-name='rowName']//span
${tbl_AgentChat_MgmtHierarchy_expandedRowHeaderFieldValues}    xpath://tr[@expanded="true"]//tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']//span
${tbl_AgentChat_MgmtHierarchy_expandedRowFieldValues}    xpath://span[(text()='rowName')]//following-sibling::div
${btn_AgentChat_MgmtHierarchy_MgrWritingNumberLink}      xpath://a[contains(@data-test-id,'202106140828390008778') and contains(text(),'mgrWritingNo')]

@{tbl_AgentChat_MgmtHierarchy_columnHeaderValues}    Start Date    Sit Code    Contract Type    Level
@{tbl_AgentChat_MgmtHierarchy_expandedColumnHeaderValues}    Mgr Name    Start Date    Contract Type
...    Writing #    Level    Sit Code    State Code
@{tbl_AgentChat_MgmtHierarchy_expExpandedColumnHeaderValues}    Managers Contact Info
@{tbl_AgentChat_MgmtHierarchy_expExpandedFieldValues}    Phone #    Fax #

* Keywords
Verify that the AgentChat MgmtHierarchy table is displayed
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_AgentChat_MgmtHierarchy_sectionHeader}     timeout=${mTimeout}

        FOR    ${fieldValue}  IN  @{tbl_AgentChat_MgmtHierarchy_columnHeaderValues}
            Run Keyword    Verify that the AgentChat MgmtHierarchy table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that the AgentChat MgmtHierarchy expanded table is displayed
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete

        FOR    ${fieldValue}  IN  @{tbl_AgentChat_MgmtHierarchy_expandedColumnHeaderValues}
            Run Keyword    Verify that the AgentChat MgmtHierarchy table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that the AgentChat MgmtHierarchy expanded table row section is displayed
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{tbl_AgentChat_MgmtHierarchy_expExpandedColumnHeaderValues}
            Run Keyword    Verify that the AgentChat MgmtHierarchy table contains the expanded row header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that row number ${rowNumber} contains the correct ${paveChat} c360 info for WritingNumber ${writingNumber} and companyNumber ${companyNumber} in the MgmtHierarchy table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get row number ${rowNumber} API MgmtHierarchy details for writingNumber ${writingNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_MgmtHierarchy_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the ${paveChat} MgmtHierarchy table
        END
    ELSE
        Do Nothing
    END

Verify that expanded row ${expandedRowNumber} for row number ${rowNumber} contains the correct ${paveChat} c360 info for WritingNumber ${writingNumber} and companyNumber ${companyNumber} in the ExpandedMgmtHierarchy table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get expanded row ${expandedRowNumber} for row number ${rowNumber} API MgmtHierarchy details for writingNumber ${writingNumber} and companyNumber ${companyNumber}

        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_MgmtHierarchy_expandedColumnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the expanded UI ${fieldValue} in row ${expandedRowNumber} contains the Mgmt${apiField} API value in the ${paveChat} MgmtHierarchy table
        END

        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_MgmtHierarchy_expExpandedFieldValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} MgmtHierarchy table
        END
    ELSE
        Do Nothing
    END

