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
${tab_AgentChat_Contracts}    xpath://div[@aria-label='Contracts']
${tbl_AgentChat_Contracts_sectionHeader}        xpath://h2[contains(@class,'header-title') and (text()='Contracts')]
${tbl_AgentChat_Contracts_columnHeaders}        xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-Contracts-AgentContractList')]//th[@role='columnheader']
${tbl_AgentChat_Contracts_rowsExpandIcons}      xpath://table[contains(@data-test-id,'201910071717280742516')]//span[contains(@class,'expandRowDetails')]
${tbl_AgentChat_Contracts_rowsCollapseIcons}    xpath://table[contains(@data-test-id,'201910071717280742516')]//span[contains(@class,'collapseRowDetails')]
${tbl_AgentChat_Contracts_rowCollapseIcon}      xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-Contracts-AgentContractList')]//tr[@pl_index='tableRowNumber']//td//span
${tbl_AgentChat_Contracts_expandedColumnHeaders}    xpath://div[contains(@param_name,'EXPANDEDSubSectionContactsDetailsForCust360B')]//span[contains(@class,'dataLabelForRead heading')]
${btn_AgentChat_Contracts_rowAuditCheckbox}     xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-Contracts-AgentContractList')]//tr[@pl_index='tableRowNumber']//td//input

${tbl_AgentChat_Contracts_rowHeaderFieldValues}    xpath://tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']//span
${tbl_AgentChat_Contracts_expandedRowFieldValues}    xpath://span[(text()='rowName')]//following-sibling::div

@{tbl_AgentChat_Contracts_columnHeaderValues}    Start Date    Stop Date    Manager    Sit Code    Level    State    Comm Str    Assoc Type    Adv Ind
@{tbl_AgentChat_Contracts_expandedColumnHeaderValues}    Manager Level    Manager Sit Code    State Manager Code    Advance Type 
...    FATS Block Percentage    FATS Start Date    FATS Stop Date    Paid As Earned Start Date    Paid As Earned Stop Date 
...    Rule 1    Rate Code 1    Distribution Percentage 1    Rule 2    Rate Code 2    Distribution Percentage 2    Rule 3
...    Rate Code 3    Distribution Percentage 3    Contract Remarks


* Keywords
Verify that the AgentChat Contracts table is displayed
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_AgentChat_Contracts_sectionHeader}     timeout=${mTimeout}

        FOR    ${fieldValue}  IN  @{tbl_AgentChat_Contracts_columnHeaderValues}
            Run Keyword    Verify that the AgentChat Contracts table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END
    
Verify that the Contracts table expand row section is displayed
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{tbl_AgentChat_Contracts_expandedColumnHeaderValues}
            Run Keyword    Verify that the AgentChat Contracts table contains the expanded row header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that row number ${rowNumber} contains the correct ${paveChat} c360 info for WritingNumber ${writingNumber} and companyNumber ${companyNumber} in the Contracts table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get row number ${rowNumber} API Contracts details for writingNumber ${writingNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_Contracts_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the ${paveChat} Contracts table
        END
        
        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_Contracts_expandedColumnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Contracts table
        END
    ELSE
        Do Nothing
    END

