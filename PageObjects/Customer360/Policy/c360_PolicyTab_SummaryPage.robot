###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}Settings.resource

* Variables
${tab_PolicyHolderChat_Policy_Summary}    xpath://div[@aria-label='Summary']

## Summary Data ##
${chkBox_policyHolderChat_Summary_SummaryInfo_SummaryData}               xpath://input[contains(@onchange,'Summary')]
${tbl_PolicyHolderChat_Policy_Summary_summaryData_sectionHeader}         xpath://h2[contains(text(),'Summary Data')]
${fld_policyHolderChat_Policy_Summary_summaryData_fieldName}             xpath://div[contains(@data-ui-meta,'fieldName')]
@{tbl_PolicyHolderChat_Policy_Summary_summaryData_columnHeaderValues}    Policy Number    LOB    Status    Bill Form    Billable Premium
...    Mode    Mode Premium    Last Accounting Date    Paid To Date    Original Issue Date    Effective Date
...    Termination Date    Coverage Type    Issue State    Series    Process Date    Issue Code    Billed To Date    
...    Customer Number    Division    Plan Code    Family Effective Date    Loc Zip    Medicare #    Owner    PO Mail Block    
...    DOD   Loc State    Termination Reason
${tbl_PolicyHolderChat_Policy_Summary_summaryData_expandedRowFieldValues}    xpath:(//span[(text()='rowName')]//following-sibling::div)[last()]

${tbl_PolicyHolderChat_Policy_Summary_solutionCenterHistory_sectionHeader}          //h2[contains(text(),'Solution Center History')]
${tbl_PolicyHolderChat_Policy_Summary_CertificatesolutionCenterHistory_sectionHeader}           //h3[contains(text(),'Solution Center History')]
${tbl_PolicyHolderChat_Policy_Summary_solutionCenterHistory_columnHeaders}          xpath://table[contains(@AFL-Ins-Data-ContactHistoryCIF-CallCenterContactHistory')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_Policy_Summary_solutionCenterHistory_columnHeadersValues}    Tracking #/ID    Date    Caller    Relationship    Caller Type    CSR    Status   Routing Reasons / IVR Tx    Call Reasons 
${btn_PolicyHolderChat_Policy_Summary_solutionCenterHistory_rowAuditCheckbox}       xpath://table[contains(@AFL-Ins-Data-ContactHistoryCIF-CallCenterContactHistory')]//tr[@pl_index='tableRowNumber']//td//input

${tbl_PolicyHolderChat_Policy_Summary_recentClaims_sectionHeader}          //h2[contains(text(),'Recent Claims')]
${tbl_PolicyHolderChat_Policy_Summary_recentClaims_columnHeaders}          xpath://table[contains(@AFL-Ins-Data-Claim')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_Policy_Summary_recentClaims_columnHeadersValues}    SheetNumber    LOB    Policy#    Plan Code    Date Paid    Paid Amount    Status    Occ Date    Diag Code    Relation    BDOS    EDOS
${tbl_PolicyHolderChat_Policy_Summary_recentClaims_expandedRowFieldValues}    (//span[(text()='rowName')]//following-sibling::div)[last()]
${tbl_PolicyHolderChat_Policy_Summary_recentClaims_sectionHeaderIcon}      xpath://div[@id='EXPAND-PLUSMINUS' and @data-layout-id='202307242132170783']
${tbl_PolicyHolderChat_Policy_Summary_recentClaims_rowCollapseIcon}        xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Claim')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span)[last()]
${btn_PolicyHolderChat_Policy_Summary_recentClaims_rowAuditCheckbox}       xpath://table[contains(@AFL-Ins-Data-Claim')]//tr[@pl_index='tableRowNumber']//td//input
${chkBox_policyHolderChat_Summary_SummaryInfo_recentClaims}                xpath://div[contains(text(),'Recent Claims')]
${chkBox_policyHolderChat_Summary_SummaryInfo_rowAuditCheckbox}            xpath:(//input[contains(@onchange,'Recent Claims')])[1]
${tbl_PolicyHolderChat_recentClaims_rowCollapseIcon}                       xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Claim')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span)[last()]
${btn_PolicyHolderChat_recentClaims_rowAuditCheckbox}                      xpath:(//table[contains(@pl_prop_class,"AFL-Ins-Data-Claim")]//tr[@pl_index='tableRowNumber']//td//input)[last()]

##Medicare Claims
${tbl_PolicyHolderChat_Policy_Summary_recentmedClaims_sectionHeader}          (//div[text()='Medicare Claims'])[last()]
${tbl_PolicyHolderChat_Policy_Summary_recentmedClaims_columnHeaders}          xpath://table[contains(@AFL-Ins-Data-Claim')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_Policy_Summary_recentmedClaims_columnHeadersValues}    Claim #    BDOS    EDOS    Parts    Date Paid    Aflac Ded    Aflac Paid    Total Paid    Place Of Service    BPS Date    Reserve Days Used
${tbl_PolicyHolderChat_Policy_Summary_recentmedClaims_rowHeaderFieldValues}          xpath:(//tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName'])[last()]
${tbl_PolicyHolderChat_Policy_Summary_recentmedClaims_expandedRowFieldValues}    (//span[(text()='rowName')]//following-sibling::div)[last()]
${tbl_PolicyHolderChat_Policy_Summary_recentmedClaims_sectionHeaderIcon}      xpath://div[@id='EXPAND-PLUSMINUS' and @data-layout-id='202308211339260442']
${tbl_PolicyHolderChat_Policy_Summary_recentmedClaims_rowCollapseIcon}        xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Claim')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span)[last()]
${btn_PolicyHolderChat_Policy_Summary_recentmedClaims_rowAuditCheckbox}       xpath://table[contains(@AFL-Ins-Data-Claim')]//tr[@pl_index='tableRowNumber']//td//input
${chkBox_policyHolderChat_Summary_SummaryInfo_recentmedClaims}                xpath://div[contains(text(),'Medicare Claims')]
${chkBox_policyHolderChat_Summary_SummaryInfo_rowAuditCheckbox}            xpath:(//input[contains(@onchange,'Medicare Claims')])[1]


* Keywords
Verify that the Policy_Summary Customer360 tab is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify that the PolicyHolderChat summaryData table is displayed on the Policy_Summary tab
        Verify that the PolicyHolderChat solutionCenterHistory table is displayed on the Policy_Summary tab
        Verify that the PolicyHolderChat recentClaims table is displayed on the Policy_Summary tab
    ELSE
        Do Nothing
    END

Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_Summary tab
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${tbl_policyHolderChat_Policy_Summary_${tableName}_sectionHeader}     timeout=${mTimeout}
    IF    '${tableName}'=='summaryData'
        FOR    ${fieldValue}  IN  @{fld_PolicyHolderChat_Policy_Summary_summaryData_fieldNameValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Summary summaryData section contains the field ${fieldName}
        END
    ELSE IF    '${tableName}'=='solutionCenterHistory'
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Summary_solutionCenterHistory_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Summary_solutionCenterHistory table contains the column header ${fieldValue}
        END 
    ELSE IF    '${tableName}'=='recentClaims'
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Summary_recentClaims_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Summary_recentClaims table contains the column header ${fieldValue}
        END 
    END

Verify that row number ${rowNumber} contains the correct PolicyHolderChat c360 info for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the summaryData table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_Summary_summaryData_sectionHeader}    timeout=${sTimeout}
        Scroll button or label into view    ${tbl_PolicyHolderChat_Policy_Summary_summaryData_sectionHeader}
        Run Keyword    Get row number ${rowNumber} API SummaryData details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{fld_PolicyHolderChat_Policy_Summary_summaryData_fieldNameValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the PolicyHolderChat summaryData table
        END
    ELSE
        Do Nothing
    END


Verify the correct ${paveChat} c360 info is displayed for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the summaryData table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API SummaryData details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_${paveChat}_Policy_Summary_summaryData_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Policy_Summary_summaryData table
        END
    ELSE
        Do Nothing
    END

Verify the correct ${paveChat} c360 info is displayed for claimID ${claimID} and companyNumber ${companyNumber} in the recentClaims table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API RecentClaimDetails details for claimID ${claimID} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Summary_recentClaims_columnHeadersValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Policy_Summary_recentClaims table
        END
    ELSE
        Do Nothing
    END


Verify that row number ${rowNumber} contains the correct PolicyHolderChat c360 info for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the Policy MedicareClaims table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_Summary_recentmedClaims_sectionHeader}    timeout=${mTimeout}
        Scroll button or label into view    ${tbl_PolicyHolderChat_Policy_Summary_recentmedClaims_sectionHeader}

        Run Keyword    Get row number ${rowNumber} API RecentMediClaim details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Summary_recentmedClaims_columnHeadersValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the PolicyHolderChat Policy_Summary_recentmedClaims table
        END
    ELSE
        Do Nothing
    END