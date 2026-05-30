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
${tab_PolicyHolderChat_InsuredInformation}    xpath://div[@aria-label='Insured Information']
@{tbl_PolicyHolderChat_InsuredInformation_sectionHeaderValues}    SolutionCenterHistory    Policies    Claims    RecentInteractions    RecentCases

## Solution Center History section ##
${tbl_PolicyHolderChat_InsuredInformation_SolutionCenterHistory_sectionHeader}          xpath://h2[text()='Solution Center History']
${tbl_PolicyHolderChat_InsuredInformation_SolutionCenterHistory_sectionHeader_txt}      Solution Center History
${tbl_PolicyHolderChat_InsuredInformation_SolutionCenterHistory_rowExpandIcon}          xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-ContactHistoryCIF-CallCenterContactHistory')]//tr[@pl_index='tableRowNumber']/td/span
${tbl_PolicyHolderChat_InsuredInformation_SolutionCenterHistory_columnHeaders}          xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-ContactHistoryCIF-CallCenterContactHistory')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_InsuredInformation_SolutionCenterHistory_columnHeadersValues}    Tracking #/ID    Date    Caller    Relationship    Caller Type    CSR    Status    Routing Reasons / IVR Tx    Call Reasons

## Policies section ##
${tbl_PolicyHolderChat_InsuredInformation_Policies_sectionHeader}          xpath://h3/div[text()='Policies']
${tbl_PolicyHolderChat_InsuredInformation_Policies_sectionHeader_txt}      Policies    
${tbl_PolicyHolderChat_InsuredInformation_Policies_rowExpandIcon}          xpath://table[contains(@pl_prop_class,'Policy')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span
${tbl_PolicyHolderChat_InsuredInformation_Policies_expandSection}          xpath://div[@title="Policies"]/i[contains(@class,'icon-openclose')]
${tbl_PolicyHolderChat_InsuredInformation_Policies_columnHeaders}          xpath://table[contains(@pl_prop_class,'Policy')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_InsuredInformation_Policies_columnHeadersValues}    Policy #    Plan Code    LOB    Status    Coverage Type    Effective Date    Termination Date    Bill Form    Modal Premium    Bill Mode 

## Claims section ##
${tbl_PolicyHolderChat_InsuredInformation_Claims_sectionHeader}          xpath://h2/div[text()='Claims']
${tbl_PolicyHolderChat_InsuredInformation_Claims_sectionHeader_txt}      Claims
${tbl_PolicyHolderChat_Claims_rowCollapseIcon}          xpath://table[contains(@pl_prop_class,'Claim')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span
${tbl_PolicyHolderChat_InsuredInformation_Claims_expandSection}          xpath://div[@title="Claims"]/i[contains(@class,'icon-openclose')]
${tbl_PolicyHolderChat_InsuredInformation_Claims_columnHeaders}          xpath://div[contains(@data-test-id,'201910220734460205794')]//span[contains(@class,'dataLabelForRead')]
@{tbl_PolicyHolderChat_InsuredInformation_Claims_columnHeadersValues}    SheetNumber    LOB    Policy#    Plan Code    Date Paid    Paid Amount    Status    Occ Date    Diag Code    Relation    BDOS    EDOS
${tbl_PolicyHolderChat_InsuredInformation_Claims_expandedRowFieldValues}    (//span[(text()='rowName')]//following-sibling::div)[last()]
${tbl_PolicyHolderChat_InsuredInformation_Claims_pageNumber}    xpath:(//input[contains(@data-test-id,'20141121165713061513232')])[last()]

## Medicare Claims Section ##
${tbl_PolicyHolderChat_InsuredInformation_MediClaims_sectionHeader}          xpath://div[text()='Medicare Claims']
${tbl_PolicyHolderChat_InsuredInformation_MediClaims_sectionHeader_txt}      Medicare Claims
${tbl_PolicyHolderChat_MediClaims_rowCollapseIcon}          xpath://table[contains(@pl_prop_class,'Claim')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span
${tbl_PolicyHolderChat_InsuredInformation_MediClaims_expandSection}          xpath://div[@title="Claims"]/i[contains(@class,'icon-openclose')]
${tbl_PolicyHolderChat_InsuredInformation_MediClaims_rowHeaderFieldValues}          xpath://tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']
@{tbl_PolicyHolderChat_InsuredInformation_MediClaims_columnHeadersValues}    Claim #    BDOS    EDOS    Parts    Date Paid    Aflac Ded    Aflac Paid    Total Paid    Place Of Service    BPS Date    Reserve Days Used
${tbl_PolicyHolderChat_InsuredInformation_MediClaims_expandedRowFieldValues}    (//span[(text()='rowName')]//following-sibling::div)[last()]
${tbl_PolicyHolderChat_InsuredInformation_MediClaims_pageNumber}    xpath:(//input[contains(@data-test-id,'20141121165713061513232')])[last()]
${btn_PolicyHolderChat_EDOSheading}    xpath://div[contains(@class,'cellIn') and contains(text(),'EDOS')]

## Recent Interactions section ##
${tbl_PolicyHolderChat_InsuredInformation_RecentInteractions_sectionHeader}        xpath://h2/div[text()='Recent interactions']
${tbl_PolicyHolderChat_InsuredInformation_RecentInteractions_sectionHeader_txt}    Recent interactions

## Recent Cases section ##
${tbl_PolicyHolderChat_InsuredInformation_RecentCases_sectionHeader}        xpath://h2[text()='Recent cases']
${tbl_PolicyHolderChat_InsuredInformation_RecentCases_sectionHeader_txt}    Recent cases

#Policy Indicators
${fld_Policy_PolicyIndicators_Remarks}               xpath:(//img[@alt='This policy has a Remark'])[1]
${fld_Policy_PolicyIndicators_Maintenance}           xpath:(//img[@alt='This policy has Maintenance History'])[1]
${fld_Policy_PolicyIndicators_AccountHistory}        xpath:(//img[@alt='This policy has Account History'])[1]
${fld_Policy_PolicyIndicators_EverwellExpress}       xpath:(//img[@alt='E60 - Everwell Express'])[1]
${fld_Policy_PolicyIndicators_Cafeteria}             xpath:(//img[@alt='Cafeteria/ Non-Flex'])[1]
${fld_Policy_PolicyIndicators_Remarks_txt}           This policy has a Remark
${fld_Policy_PolicyIndicators_Maintenance_txt}       This policy has Maintenance History
${fld_Policy_PolicyIndicators_AccountHistory_txt}    This policy has Account History
${fld_Policy_PolicyIndicators_EverwellExpress_txt}    E60 - Everwell Express 
${fld_Policy_PolicyIndicators_Cafeteria_txt}          Cafeteria/ Non-Flex

* Keywords
Verify that the InsuredInformation Customer360 tab is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_InsuredInformation_sectionHeaderValues}
            Run Keyword    Verify that the PolicyHolderChat ${fieldValue} table is displayed on the InsuredInformation tab
        END
    ELSE
        Do Nothing
    END

Verify that the PolicyHolderChat ${tableName} table is displayed on the InsuredInformation tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='SolutionCenterHistory'
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_InsuredInformation_SolutionCenterHistory_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_InsuredInformation_SolutionCenterHistory_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_InsuredInformation_SolutionCenterHistory_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat InsuredInformation_SolutionCenterHistory table contains the column header ${fieldValue}
        END
    ELSE IF    '${tableName}'=='Policies'
        #Click the PolicyHolderChat button    tbl_PolicyHolderChat_InsuredInformation_Claims_pageNumber
        Scroll button or label into view    ${tbl_PolicyHolderChat_InsuredInformation_Policies_sectionHeader}  
        #Click the PolicyHolderChat button    tbl_PolicyHolderChat_InsuredInformation_Policies_expandSection
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_InsuredInformation_Policies_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_InsuredInformation_Policies_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_InsuredInformation_Policies_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat InsuredInformation_Policies table contains the column header ${fieldValue}
        END
    ELSE IF    '${tableName}'=='Claims'
        # Click the PolicyHolderChat button    tbl_PolicyHolderChat_InsuredInformation_Claims_expandSection
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_InsuredInformation_Claims_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_InsuredInformation_Claims_sectionHeader

        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_InsuredInformation_Claims_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat InsuredInformation_Claims table contains the column header ${fieldValue}
        END
    ELSE IF    '${tableName}'=='RecentInteractions'
        Verify that the label text is displayed    tbl_PolicyHolderChat_InsuredInformation_RecentInteractions_sectionHeader  
    ELSE IF    '${tableName}'=='RecentCases'
        Verify that the label text is displayed    tbl_PolicyHolderChat_InsuredInformation_RecentCases_sectionHeader  
    END

Verify that row number ${rowNumber} contains the correct PolicyHolderChat c360 info for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the MedicareClaims table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_InsuredInformation_MediClaims_sectionHeader}    timeout=${mTimeout}
        Scroll button or label into view    ${tbl_PolicyHolderChat_InsuredInformation_MediClaims_sectionHeader}

        Run Keyword    Get row number ${rowNumber} API RecentClaimDetailsMedi details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_InsuredInformation_MediClaims_columnHeadersValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the PolicyHolderChat InsuredInformation_MediClaims table
        END
    ELSE
        Do Nothing
    END

Verify the correct ${paveChat} c360 info is displayed for claimID ${claimID} and companyNumber ${companyNumber} in the Claims table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimDetails details for claimID ${claimID} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_InsuredInformation_Claims_columnHeadersValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} InsuredInformation_Claims table
        END
    ELSE
        Do Nothing
    END

Verify the Policy indicators icons in C360 screen ${indicatorType}
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_Policy_PolicyIndicators_${indicatorType}}    timeout=${lTimeout}
    ${actualText}=    Get Element Attribute    ${fld_Policy_PolicyIndicators_${indicatorType}}    alt
    ${expectedText}    Convert To String    ${fld_Policy_PolicyIndicators_${indicatorType}_txt}
    Should Be Equal    ${actualText}    ${expectedText}

