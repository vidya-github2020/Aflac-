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
${tab_AgentChat_NewAndPendedBusiness}    xpath://div[@aria-label='New and Pended Business']
${tbl_AgentChat_NewAndPendedBusiness_sectionHeader}      xpath://h2[contains(@class,'header-title') and (text()='New and Pended Business')]
${tbl_AgentChat_NewAndPendedBusiness_columnHeaders}      xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-NPB-AgentNewAndPendedBusinessList')]//th[@role='columnheader']
${btn_AgentChat_NewAndPendedBusiness_rowAuditCheckbox}   xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-NPB-AgentNewAndPendedBusinessList')]//tr[@pl_index='tableRowNumber']//td//input

${tbl_AgentChat_NewAndPendedBusiness_rowHeaderFieldValues}    xpath://tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']//span

@{tbl_AgentChat_NewAndPendedBusiness_columnHeaderValues}    Trans #    Status    Policy Holder
...    Policy #    Account #    LOB    Plan Code    Dest    Response Date

* Keywords
Verify that the AgentChat New And Pended Business table is displayed
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_AgentChat_NewAndPendedBusiness_sectionHeader}     timeout=${mTimeout}

        FOR    ${fieldValue}  IN  @{tbl_AgentChat_NewAndPendedBusiness_columnHeaderValues}
            Run Keyword    Verify that the AgentChat NewAndPendedBusiness table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that row number ${rowNumber} contains the correct ${paveChat} c360 info for WritingNumber ${writingNumber} and companyNumber ${companyNumber} in the NewAndPendedBusiness table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get row number ${rowNumber} API NewAndPendedBusiness details for writingNumber ${writingNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_NewAndPendedBusiness_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the ${paveChat} NewAndPendedBusiness table
        END
    ELSE
        Do Nothing
    END

