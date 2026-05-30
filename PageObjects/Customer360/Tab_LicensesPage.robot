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
${tab_AgentChat_Licenses}    xpath://div[@aria-label='Licenses']
${tbl_AgentChat_Licenses_sectionHeader}      xpath://h2[contains(@class,'header-title') and (text()='States Licensed')]
${tbl_AgentChat_Licenses_columnHeaders}      xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-Licenses-AgentLicenseList')]//th[@role='columnheader']
${tbl_AgentChat_Licenses_rowCollapseIcon}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-Licenses-AgentLicenseList')]//tr[@pl_index='tableRowNumber']//td//span
${tbl_AgentChat_Licenses_expandedColumnHeaders}    xpath://div[contains(@node_name,'LicensesDetailsForCust360')]//span[contains(@class,'dataLabelForRead heading')]
${tbl_AgentChat_Licenses_expandedColumnHeaders_YesNo}    xpath://div[contains(@node_name,'LicensesDetailsForCust360')]//div[contains(@class,'dataLabelRead heading')]
${btn_AgentChat_Licenses_rowAuditCheckbox}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent-Licenses-AgentLicenseList')]//tr[@pl_index='tableRowNumber']//td//input

${tbl_AgentChat_Licenses_rowHeaderFieldValues}    xpath://tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']//span
${tbl_AgentChat_Licenses_expandedRowFieldValues}    xpath://span[(text()='rowName')]//following-sibling::div
${tbl_AgentChat_Licenses_expandedRowYesNoFieldValues}    xpath://div[(text()='rowName')]//following-sibling::div/span/img

@{tbl_AgentChat_Licenses_columnHeaderValues}    State    License #    Res/Non    Status    Appt Eff Date    Appt Exp Date
@{tbl_AgentChat_Licenses_expandedColumnHeaderValues}    Pending Date    Licenses Effective Date    Reinstatement Date
...    Renew Application    Appt Termination Date    License Expire Date    Business Blocked    Remarks
@{tbl_AgentChat_Licenses_expandedColumnYesNoHeaderValues}    LIF    A & H    MS    LTC    UL    VUL    DIS    CT8

* Keywords
Verify that the AgentChat Licenses table is displayed
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_AgentChat_Licenses_sectionHeader}     timeout=${mTimeout}

        FOR    ${fieldValue}  IN  @{tbl_AgentChat_Licenses_columnHeaderValues}
            Run Keyword    Verify that the AgentChat Licenses table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that the AgentChat Licenses table expand row section is displayed
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{tbl_AgentChat_Licenses_expandedColumnHeaderValues}
            Run Keyword    Verify that the AgentChat Licenses table contains the expanded row header ${fieldValue}
        END

        FOR    ${fieldValue}  IN  @{tbl_AgentChat_Licenses_expandedColumnYesNoHeaderValues}
            Run Keyword    Verify that the AgentChat Licenses table contains the expanded row YesNo header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that row number ${rowNumber} contains the correct ${paveChat} c360 info for WritingNumber ${writingNumber} and companyNumber ${companyNumber} in the Licenses table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get row number ${rowNumber} API Licenses details for writingNumber ${writingNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_Licenses_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the ${paveChat} Licenses table
        END
        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_Licenses_expandedColumnYesNoHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the Yes or No UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Licenses table
        END
        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_Licenses_expandedColumnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Licenses table
        END
    ELSE
        Do Nothing
    END

