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
${tab_AgentChat_Summary}    xpath://div[@aria-label='Summary']

##  Contact Center History
${tbl_AgentChat_Summary_ContactCenterHistory_sectionHeader}         xpath://h2[contains(@class,'header-title')]//div[text()='Contact Center History']
${tbl_AgentChat_Summary_ContactCenterHistory_columnHeaders}         xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-ContactHistoryCIF-CallCenterContactHistory')]//th[@role='columnheader']
@{tbl_AgentChat_Summary_ContactCenterHistory_columnHeaderValues}    Tracking #    Date    CallerName    Caller Type    Caller Relationship    Destination    Routing Reasons
${tbl_AgentChat_ContactCenterHistory_rowHeaderFieldValues}          xpath://tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']//span
${tbl_AgentChat_ContactCenterHistory_rowCollapseIcon}               xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-ContactHistoryCIF-CallCenterContactHistory')]//tr[@pl_index='tableRowNumber']//td//span

${tbl_AgentChat_Summary_ContactCenterHistory_expandedColumnHeaders}         xpath://div[contains(@uniqueid,'SID1634653226516')]//span[contains(@class,'dataLabelForRead')]
@{tbl_AgentChat_Summary_ContactCenterHistory_expandedColumnHeaderValues}    Tracking #    Date    Caller Name    Caller Type
...    Caller Relationship    CSR    Status    Call Reasons    Routing Reasons    Destinations
${tbl_AgentChat_ContactCenterHistory_expandedRowHeaderFieldValues}          xpath://div[contains(@base_ref,'pxResults(rowNumber)')]//span[contains(@data-ui-meta,'AgentCallCenterInfo')]//span[(text()='rowName')]//following-sibling::div

${tbl_AgentChat_Summary_ContactCenterHistory_Label_expandedColumnHeaders}         xpath://div[contains(@uniqueid,'SID1634653226516')]//label[contains(@class,'dataLabelForRead')]
@{tbl_AgentChat_Summary_ContactCenterHistory_Label_expandedColumnHeaderValues}    Other Comments
${tbl_AgentChat_ContactCenterHistory_Label_expandedRowHeaderFieldValues}          xpath://div[contains(@base_ref,'pxResults(rowNumber)')]//label[(text()='rowName')]//following-sibling::div

${radioBtn_AgentChat_Summary_IvrSelfServiceOnly}    xpath://label[contains(text(),'IVR Self Service Only')]
${radioBtn_AgentChat_Summary_IvrOptOutOnly}         xpath://label[contains(text(),'IVR Opt-Out Only')]
${radioBtn_AgentChat_Summary_AllCalls}              xpath://label[contains(text(),'All Calls')]

## Writing Number Details
${tbl_AgentChat_Summary_WritingNumberDetails_sectionHeader}         xpath://h2[contains(@class,'header-title') and (text()='Writing Number Details')]
${btn_AgentChat_Summary_WritingNumberDetails_rowAuditCheckbox}      xpath://input[contains(@class,'audit-history-checkbox')]
${tbl_AgentChat_Summary_WritingNumberDetails_columnHeaders}         xpath://div[contains(@data-test-id,'202110051041330285273')]//span[contains(@class,'dataLabelForRead')]
@{tbl_AgentChat_Summary_WritingNumberDetails_columnHeaderValues}    Contract Date    Pending Cancel    Mail Block    Entity #    Tax ID
...    No Pay Rate    Assoc. Term. Date    PPI    National Producer Nbr    Incentive Fund Contributor    Special Vesting    Credit Union Number
...    Agreement Type    Adjusted Service Date    Bridging Agreement Date    Adjusted Contest Date    Daily EFT    Monthly EFT    Draw EFT
...    Last Maintenance Date    Last Produced Date    Letter Sent Date    License Cancel Date    Reinstatement Date
${tbl_AgentChat_WritingNumberDetails_expandedRowFieldValues}          xpath://span[contains(text(),'rowName')]//following-sibling::div


* Keywords
Verify that the Summary Customer360 tab is displayed
    Verify that the AgentChat ContactCenterHistory table is displayed on the Summary tab
    Verify that the AgentChat WritingNumberDetails table is displayed on the Summary tab

Verify that the AgentChat ${tableName} table is displayed on the Summary tab
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_AgentChat_Summary_${tableName}_sectionHeader}     timeout=${mTimeout}
        IF    '${tableName}'=='ContactCenterHistory'
            FOR    ${fieldValue}  IN  @{tbl_AgentChat_Summary_ContactCenterHistory_columnHeaderValues}
                Run Keyword    Verify that the AgentChat Summary_ContactCenterHistory table contains the column header ${fieldValue}
            END
        ELSE
            FOR    ${fieldValue}  IN  @{tbl_AgentChat_Summary_WritingNumberDetails_columnHeaderValues}
                Run Keyword    Verify that the AgentChat Summary_WritingNumberDetails table contains the column header ${fieldValue}
            END
        END
    ELSE
        Do Nothing
    END

Verify that you can select the ${radioButton} radio button in the AgentChat ContactCenterHistory section on the Summary tab
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Click the AgentChat button    radioBtn_AgentChat_Summary_${radioButton}
    ELSE
        Do Nothing
    END

Verify that the AgentChat ContactCenterHistory table expand row section is displayed on the Summary tab
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        FOR    ${fieldValue}  IN  @{tbl_AgentChat_Summary_ContactCenterHistory_expandedColumnHeaderValues}
            Run Keyword    Verify that the AgentChat Summary_ContactCenterHistory table contains the expanded row header ${fieldValue}
        END
        FOR    ${fieldValue}  IN  @{tbl_AgentChat_Summary_ContactCenterHistory_Label_expandedColumnHeaderValues}
            Run Keyword    Verify that the AgentChat Summary_ContactCenterHistory_Label table contains the expanded row header ${fieldValue}
        END
    ELSE
        Do Nothing
    END
    
As an ${paveChat} CCS select the Audit checkbox in the Writing Number Details section on the C360 Summary tab
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait Until Element Is Visible    ${btn_AgentChat_Summary_WritingNumberDetails_rowAuditCheckbox}     timeout=${mTimeout}
        Run keyword    Click the ${paveChat} button    btn_AgentChat_Summary_WritingNumberDetails_rowAuditCheckbox
    ELSE
        Do Nothing
    END

Verify that row number ${rowNumber} contains the correct ${paveChat} c360 info for WritingNumber ${writingNumber} and companyNumber ${companyNumber} and callFilter ${callFilter} in the ContactCenterHistory table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get row number ${rowNumber} API ContactCenterHistory details for writingNumber ${writingNumber} and companyNumber ${companyNumber} and callFilter ${callFilter}
        
        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_Summary_ContactCenterHistory_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the ${paveChat} ContactCenterHistory table
        END
        
        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_Summary_ContactCenterHistory_expandedColumnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the expanded UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the ${paveChat} ContactCenterHistory table
        END

        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_Summary_ContactCenterHistory_Label_expandedColumnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the expanded UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the ${paveChat} ContactCenterHistory_Label table
        END
    ELSE
        Do Nothing
    END

Verify the correct ${paveChat} c360 info is displayed for WritingNumber ${writingNumber} and companyNumber ${companyNumber} in the WritingNumberDetails table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API WritingNumberDetails details for writingNumber ${writingNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_Summary_WritingNumberDetails_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} WritingNumberDetails table
        END
    ELSE
        Do Nothing
    END

