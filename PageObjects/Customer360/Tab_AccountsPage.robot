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
${tab_AgentChat_Accounts}    xpath://div[@aria-label='Accounts']
${tbl_AgentChat_Accounts_sectionHeader}           xpath://h2[contains(@class,'header-title') and (text()='Servicing Accounts')]
${tbl_AgentChat_Accounts_columnHeaders}           xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-Accounts-AccountList')]//th[@role='columnheader']
${tbl_AgentChat_Accounts_rows}                    xpath://table[contains(data-test-id="201910071717280742516")]
${btn_AgentChat_Accounts_rowAuditCheckbox}        xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-Accounts-AccountList')]//tr[@pl_index='tableRowNumber']//td//input
${tbl_AgentChat_Accounts_rowHeaderFieldValues}    xpath://tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']//span
@{tbl_AgentChat_Accounts_columnHeaderValues}      Account #    Account Name    Status    Last Billed Amount

${lbl_AgentChat_Accounts_dialogContent}               ${lbl_ccsMessageBar}
${lbl_AgentChat_Accounts_dialogContent_wrapUp_txt}    ${lbl_wrapUpMessage}
${tbl_AgentChat_Accounts_wrapUpAuditData}             ${tbl_wrapUpAuditData}

* Keywords
Verify that the AgentChat Accounts table is displayed
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_AgentChat_Accounts_sectionHeader}     timeout=${mTimeout}

        FOR    ${fieldValue}  IN  @{tbl_AgentChat_Accounts_columnHeaderValues}
            Run Keyword    Verify that the AgentChat Accounts table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that row number ${rowNumber} contains the correct ${paveChat} c360 info for WritingNumber ${writingNumber} and companyNumber ${companyNumber} in the Accounts table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Run Keyword    Get row number ${rowNumber} API Accounts details for writingNumber ${writingNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_Accounts_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the ${paveChat} Accounts table
        END
    ELSE
        Do Nothing
    END

