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
${tab_PolicyHolderChat_Policy_ClaimRecap}    xpath://div[@aria-label='Claim Recap']
${tab_PolicyHolderChat_Policy_ClaimRecapBenefits}    xpath://div[@data-layout-id="202310191737010752"]//h3[text()='Benefits']
${tab_PolicyHolderChat_Policy_ClaimRecapMissingTeeth}    xpath://div[@data-layout-id="202310191737010762"]//h3[text()='Missing Teeth']

## ClaimRecap ##
${tbl_PolicyHolderChat_Policy_ClaimRecap_sectionHeader}        xpath://h3[text()='Search Options']
${tbl_PolicyHolderChat_Policy_ClaimRecap_sectionHeader_txt}    Search Options
${btn_PolicyHolderChat_ClaimRecap_rowAuditCheckbox}            xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-KeyValue')]//tr[@pl_index='tableRowNumber']//td//input
${btn_PolicyHolderChat_ClaimRecapParent_rowAuditCheckbox}      xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-KeyValue')]//tr[@pl_index='tableRowNumber']//td//input)[1]
${btn_PolicyHolderChat_ClaimRecapChild_rowAuditCheckbox}      xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Claim')]//tr[@pl_index='tableRowNumber']//td//input)[last()]
${btn_PolicyHolderChat_ClaimRecapBenefits_rowAuditCheckbox}      xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-BenefitList')]//tr[@pl_index='tableRowNumber']//td//input)[last()]
${btn_PolicyHolderChat_ClaimRecapMissingTeeth_rowAuditCheckbox}      xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-MissingTeeth')]//tr[@pl_index='tableRowNumber']//td//input)[last()]
${tab_PolicyHolderChat_ClaimRecap_ClaimsTab}                   xpath://h3[@class='layout-group-item-title' and text()='Claims']
${btn_Expand_ClaimRecapByPolicy}                               xpath:(//span[@class='expandRowDetails'])[last()]
${tbl_PolicyHolderChat_ClaimRecapByPolicy_Claims_columnHeaders}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Claim')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_ClaimRecapByPolicy_Claims_columnHeadersValues}    Claim #    LOBs    Date Rec    Date Paid    Claimant    P    L    D    Total    Treatment Date(s)    BDOS    EDOS    Relationship
${tbl_PolicyHolderChat_ClaimsRecap_rowCollapseIcon}    xpath:(//table[contains(@pl_prop_class,'Claim')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span)[last()]
${tbl_PolicyHolderChat_ClaimsRecapParent_rowCollapseIcon}    xpath:(//table[contains(@data-test-id,"202008130759200412975")]//tr[@pl_index='tableRowNumber']/td/div/div/div/span)[1]
${tbl_PolicyHolderChat_ClaimsRecapChild_rowCollapseIcon}    xpath:(//table[contains(@data-test-id,"201910071717280742516")]//tr[@pl_index='tableRowNumber']/td/div/div/div/span)[last()]
@{tbl_PolicyHolderChat_Policy_ClaimRecapDetails_columnHeaderValues}    SheetNumber    LOB    Policy#    Plan Code    Date Paid    Paid Amount    Status    Occ Date    Diag Code    Relation    BDOS    EDOS
@{tbl_PolicyHolderChat_Policy_Dental_ClaimRecapDetails_columnHeaderValues}    SheetNumber    LOB    Policy#    Plan Code    Date Paid    Paid Amount    Status    Relation    BDOS    EDOS
@{tbl_PolicyHolderChat_Policy_Medsup_ClaimRecapDetails_columnHeaderValues}    CCN    BDOS    EDOS    Part    Aflac Ded    Aflac Paid    Place Of Service    Reserve Days Used
@{tbl_PolicyHolderChat_Policy_ClaimRecap_SearchOptions_columnHeaderValues}    Relationship    Total
@{tbl_PolicyHolderChat_Policy_ClaimRecap_Dental_SearchOptions_columnHeaderValues}    Person Name    Total
@{tbl_PolicyHolderChat_Policy_ClaimRecap_Medsup_SearchOptions_columnHeaderValues}    Part    Totals
@{tbl_PolicyHolderChat_Policy_ClaimRecap_Summary_columnHeaderValues}    Claim #    LOBs    Date Rec    Date Paid    Claimant    P    L    D    Total    Occurrence date    Diagnostic code    BDOS    EDOS    Relationship    #Treatment Date(s)  excluded  
@{tbl_PolicyHolderChat_Policy_ClaimRecap_Dental_Summary_columnHeaderValues}    Claim #    LOBs    Date Rec    Date Paid    Claimant    P    L    D    Total    BDOS    EDOS    Relationship    #Treatment Date(s)  excluded  
@{tbl_PolicyHolderChat_Policy_ClaimRecap_Medsup_Summary_columnHeaderValues}    Claim #    BDOS    EDOS    Parts    Date Paid    Aflac Ded    Aflac Paid    Total Paid    Place Of Service    BPS Date    Reserve Days Used
${tbl_PolicyHolderChat_Policy_ClaimRecapDetails_expandedRowFieldValues}    xpath:(//span[(text()='rowName')]//following-sibling::div)[last()]
${tbl_PolicyHolderChat_Dental_Policy_ClaimRecapDetails_expandedRowFieldValues}    xpath:(//span[(text()='rowName')]//following-sibling::div)[last()]
${tbl_PolicyHolderChat_Medsup_Policy_ClaimRecapDetails_rowHeaderFieldValues}      xpath://tr[contains(@data-test-id,'202306231149500418814') and (@pl_index='rowNumber')]//td[@data-attribute-name='rowName']//span
${tbl_PolicyHolderChat_AH_Policy_ClaimRecap_SearchOptions_expandedRowFieldValues}    xpath:(//span[(text()='rowName')]//following-sibling::div)[last()]
${tbl_PolicyHolderChat_Dental_Policy_ClaimRecap_SearchOptions_expandedRowFieldValues}    xpath:(//span[(text()='rowName')]//following-sibling::div)[last()]
${tbl_PolicyHolderChat_Medsup_Policy_ClaimRecap_SearchOptions_expandedRowFieldValues}    xpath:(//span[(text()='rowName')]//following-sibling::div)[last()]
${tbl_PolicyHolderChat_Policy_ClaimRecap_expandedRowFieldValues}           xpath:(//tr[@pl_index="rowNumber"]//td[@data-attribute-name="fieldValue"])[last()]
${tbl_PolicyHolderChat_AH_Policy_ClaimRecap_rowHeaderFieldValues}    xpath:(//tr[@pl_index="rowNumber"]//td[@data-attribute-name="rowName"])[last()]
${tbl_PolicyHolderChat_Dental_Policy_ClaimRecap_rowHeaderFieldValues}    xpath:(//tr[@pl_index="rowNumber"]//td[@data-attribute-name="rowName"])[last()]
${tbl_PolicyHolderChat_Medsup_Policy_ClaimRecap_rowHeaderFieldValues}    xpath:(//tr[@pl_index="rowNumber"]//td[@data-attribute-name="rowName"])[last()]
${tbl_PolicyHolderChat_Total}                                    xpath://span[@data-test-id="202008110726410758799"]
${tbl_PolicyHolderChat_Relationship}                             xpath://span[@data-test-id="202008110726410757288"]

* Keywords

Expand Claim Recap By Policy
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${btn_Expand_ClaimRecapByPolicy}    timeout=${sTimeout}
    Scroll button or label into view    ${btn_Expand_ClaimRecapByPolicy}
    Click Element    ${btn_Expand_ClaimRecapByPolicy}

Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_ClaimRecapClaims tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='ClaimRecapbyPolicyClaims'
        Expand Claim Recap By Policy
        ${rowCollapseIcon}=    Replace String    ${tbl_PolicyHolderChat_ClaimsRecap_rowCollapseIcon}    tableRowNumber    1
        Wait Until Element Is Visible    ${rowCollapseIcon}    timeout=${xxlTimeout}
        Scroll button or label into view    ${rowCollapseIcon}
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_ClaimRecapByPolicy_Claims_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat ClaimRecapByPolicy_Claims table contains the column header ${fieldValue}
        END
    END    

Verify the correct ${paveChat} c360 info is displayed for claimID ${claimID} and companyNumber ${companyNumber} in the ClaimsRecap table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimDetails details for claimNumber ${claimID} and companyNumber ${companyNumber} in ClaimRecap
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_ClaimRecapDetails_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Policy_ClaimRecapDetails table
        END
    ELSE
        Do Nothing
    END
    
Verify the correct ${paveChat} c360 info is displayed for Dental claimID ${claimID} and companyNumber ${companyNumber} in the ClaimsRecap table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimDetails details for Dental claimNumber ${claimID} and companyNumber ${companyNumber} in ClaimRecap
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Dental_ClaimRecapDetails_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Dental_Policy_ClaimRecapDetails table
        END
    ELSE
        Do Nothing
    END

Verify that row number ${rowNumber} contains the correct PolicyHolderChat c360 info for Medsup policyNumber ${policyNumber} and companyNumber ${companyNumber} in the ClaimsRecap table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimDetails details for Medsup policyNumber ${policyNumber} and companyNumber ${companyNumber} in ClaimRecap
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Medsup_ClaimRecapDetails_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the PolicyHolderChat Medsup_Policy_ClaimRecapDetails table
        END
    ELSE
        Do Nothing
    END   
       
Verify the correct ${paveChat} c360 info is displayed for AH policyNumber ${policyNumber} and companyNumber ${companyNumber} in the ClaimsSearch table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimSearchOptions details for AH policyNumber ${policyNumber} and companyNumber ${companyNumber} in ClaimRecap
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_ClaimRecap_SearchOptions_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} AH_Policy_ClaimRecap_SearchOptions table
        END
    ELSE
        Do Nothing
    END

Verify the correct ${paveChat} c360 info is displayed for Dental policyNumber ${policyNumber} and companyNumber ${companyNumber} in the ClaimsSearch table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimSearchOptions details for Dental policyNumber ${policyNumber} and companyNumber ${companyNumber} in ClaimRecap
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_ClaimRecap_Dental_SearchOptions_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Dental_Policy_ClaimRecap_SearchOptions table
        END
    ELSE
        Do Nothing
    END

Verify the correct ${paveChat} c360 info is displayed for Medsup policyNumber ${policyNumber} and companyNumber ${companyNumber} in the ClaimsSearch table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimSearchOptions details for Medsup policyNumber ${policyNumber} and companyNumber ${companyNumber} in ClaimRecap
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_ClaimRecap_Medsup_SearchOptions_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Medsup_Policy_ClaimRecap_SearchOptions table
        END
    ELSE
        Do Nothing
    END

Verify that row number ${rowNumber} contains the correct PolicyHolderChat c360 info for AH policyNumber ${policyNumber} and companyNumber ${companyNumber} in the ClaimsSummary table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimSummary details for AH policyNumber ${policyNumber} and companyNumber ${companyNumber} in ClaimRecap
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_ClaimRecap_Summary_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the PolicyHolderChat AH_Policy_ClaimRecap table
        END
    ELSE
        Do Nothing
    END

Verify that row number ${rowNumber} contains the correct PolicyHolderChat c360 info for Dental policyNumber ${policyNumber} and companyNumber ${companyNumber} in the ClaimsSummary table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimSummary details for Dental policyNumber ${policyNumber} and companyNumber ${companyNumber} in ClaimRecap
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_ClaimRecap_Dental_Summary_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the PolicyHolderChat Dental_Policy_ClaimRecap table
        END
    ELSE
        Do Nothing
    END    

Verify that row number ${rowNumber} contains the correct PolicyHolderChat c360 info for Medsup policyNumber ${policyNumber} and companyNumber ${companyNumber} in the ClaimsSummary table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimSummary details for Medsup policyNumber ${policyNumber} and companyNumber ${companyNumber} in ClaimRecap
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_ClaimRecap_Medsup_Summary_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the PolicyHolderChat Medsup_Policy_ClaimRecap table
        END
    ELSE
        Do Nothing
    END        