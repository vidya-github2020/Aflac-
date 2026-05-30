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
${tab_PolicyHolderChat_Policy_Details}    xpath://div[@data-test-id="201909090334260299901_header"]

## Details - Billing Information Section ##
${chkBox_policyHolderChat_details_detailsInfo_billingInfo}    xpath://input[contains(@onchange,'Billing')]
${tbl_PolicyHolderChat_Policy_BillingInformation_sectionHeader}         xpath://h2[text()='Billing Information']
${tbl_PolicyHolderChat_Policy_BillingInformation_sectionHeader_txt}     Billing Information
${tbl_PolicyHolderChat_Policy_BillingInformation_columnHeaders}         xpath://div[contains(@data-test-id,'201910072239090736404')]//span[contains(@class,'dataLabelForRead')]
@{tbl_PolicyHolderChat_Policy_BillingInformation_columnHeaderValues}    Paid To Date    Billed To Date    Due Day    Bill Form    Billable Premium
...    Suspense Code    Six Code    Surrender    Due Code    Original Bill Form    Billing Mode    G3Trailer    Billing Name    Account Number
...    Dept Type    Cntl Emp Number    Special Hand    Premium Group Control    Mode Premium    Six Code Group    Second Letter
...    Third Letter    Manual
${tbl_PolicyHolderChat_Policy_BillingInformation_expandedRowFieldValues}    xpath:(//span[(text()='rowName')]//following-sibling::div)[last()]

# #Details - Other Information ##
${chkBox_policyHolderChat_details_detailsInfo_otherInfo}              xpath://input[contains(@onchange,'Other')]
${chkBox_policyHolderChat_details_detailsInfo_phaseInfoCheckBox}      xpath://div[@title='Disclose Phase Information']
${tbl_PolicyHolderChat_Policy_OtherInformation_sectionHeader}         xpath://h2[text()='Other Information']
${tbl_PolicyHolderChat_Policy_OtherInformation_sectionHeader_txt}     Other Information
${tbl_PolicyHolderChat_Policy_OtherInformation_expandSection}         xpath://div[@title="Other Information"]/i[contains(@class,'icon-openclose')]
${tbl_PolicyHolderChat_Policy_OtherInformation_columnHeaders}         xpath://div[contains(@data-test-id,'201910072239090736404')]//span[contains(@class,'dataLabelForRead')]
${tbl_PolicyHolderChat_Policy_OtherInformation_sectionHeaderIcon}     xpath://div[@title='tableSection']//i[contains(@class,'icon-openclose')]
# @{tbl_PolicyHolderChat_Policy_OtherInformation_columnHeaderValues}    Last Change Date    Last Accounting Date    Reinstate Date    Micro Film Number    Replace Ind
# ...    Last Rerate Date    Next Rerate Date    Rerate Premium    Transmittal Number    Occupation Code    Claims    Exceptions    Wait Period    Conv Ind    Direct Solicit
@{tbl_PolicyHolderChat_Policy_OtherInformation_columnHeaderValues}    Last Change Date    Last Accounting Date    Micro Film Number
...    Last Rerate Date    Next Rerate Date    Rerate Premium    Transmittal Number    Occupation Code    Exceptions    Wait Period
${tbl_PolicyHolderChat_Policy_OtherInformation_expandedRowFieldValues}    xpath:(//span[(text()='rowName')]//following-sibling::div)[last()]

## Details - Phase Information ##
${chkBox_policyHolderChat_details_detailsInfo_phaseInfo}              xpath://input[contains(@onchange,'Phase')]
${tbl_PolicyHolderChat_Policy_PhaseInformation_sectionHeader}         xpath://h2[text()='Phase Information']
${tbl_PolicyHolderChat_Policy_PhaseInformation_sectionHeader_txt}     Phase Information
${tbl_PolicyHolderChat_Policy_PhaseInformation_expandSection}         xpath://div[@title="Phase Information"]/i[contains(@class,'icon-openclose')]
${tbl_PolicyHolderChat_Policy_PhaseInformation_columnHeaders}         xpath://div[contains(@data-test-id,'201910091701520298171')]//span[contains(@class,'dataLabelForRead')]
${tbl_PolicyHolderChat_Policy_DisclosePhaseInformation_sectionHeaderIcon}     xpath://div[@title='tableSection']//i[contains(@class,'icon-openclose')]
# @{tbl_PolicyHolderChat_Policy_PhaseInformation_columnHeaderValues}    File    Phase #    Plan Code    Effective Date    Original Effective Date    NumberOfUnits    
# ...    RateSchedule    Premium    OccupationalCode    QualifiedStatus    ExitCode    CashValue
@{tbl_PolicyHolderChat_Policy_PhaseInformation_columnHeaderValues}    Phase #    Plan Code    Effective Date    Original Effective Date    Number of Units    
...    Rate Schedule    Premium    Occupational Code    Qualified Status    Exit Code    Cash Value
${tbl_PolicyHolderChat_Policy_PhaseInformation_expandedRowFieldValues}    xpath:(//span[(text()='rowName')]//following-sibling::div)[last()]

## Details - Coverage Cell Information ##
${chkBox_policyHolderChat_Policy_cciInfo_cciHeader}                          xpath://div[text()='Phase']
${btn_PolicyHolderChat_CCIHierarchy_rowAuditCheckbox}                        xpath://table[contains(@pl_prop_class,"Coverage")]//tr[@pl_index='tableRowNumber']//td//input
${tbl_PolicyHolderChat_Policy_CoverageCellInformation_sectionHeader}         xpath://div[@aria-label='Coverage Cell Information']
${tbl_PolicyHolderChat_Policy_CoverageCellInformation_sectionHeader_txt}     Coverage Cell Information
${tbl_PolicyHolderChat_Policy_CoverageCellInformation_expandSection}         xpath://div[@title="Coverage Cell Information"]/i[contains(@class,'icon-openclose')]
${tbl_PolicyHolderChat_Policy_CoverageCellInformation_columnHeaders}         xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-Coverage-CoverageList2')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_Policy_CoverageCellInformation_columnHeaderValues}    Phase    Plan Code    Units    LOB    IssueState    Res State    Start Date    Stop Date    Agent #
${tbl_PolicyHolderChat_CoverageCellInformation_rowHeaderFieldValues}         xpath://tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']//span

## Details - SpecialInformation Messages ##
${btn_PolicyHolderChat_SpecialInformation_rowAuditCheckbox}             xpath://table[contains(@pl_prop_class,"SpecialInfoMessageList")]//tr[@pl_index='tableRowNumber']//td//input
${tbl_PolicyHolderChat_Policy_SpecialInformation_sectionHeader}         xpath://div[@aria-label='Special Information: Messages']
${tbl_PolicyHolderChat_Policy_SpecialInformation_sectionHeader_txt}     Special Information: Messages
${tbl_PolicyHolderChat_Policy_SpecialInformation_expandSection}         xpath://div[@title="Special Information: Messages"]/i[contains(@class,'icon-openclose')]
${tbl_PolicyHolderChat_Policy_SpecialInformation_columnHeaders}         xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-SpecialInfoMessageList')]//th[@role='columnheader']
${tbl_PolicyHolderChat_Policy_SpecialInformation:Messages_sectionHeaderIcon}     xpath://div[@title='tableSection']//i[contains(@class,'icon-openclose')]
@{tbl_PolicyHolderChat_Policy_SpecialInformation_columnHeaderValues}    Person #    Type    Notify Date    Message
${tbl_PolicyHolderChat_Policy_SpecialInformation_rowHeaderFieldValues}         xpath://tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']//span


* Keywords
Verify that the Policy_Details Customer360 tab is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_BillingInformation_columnHeaderValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_BillingInformation table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_Details tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='BillingInformation'
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_BillingInformation_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_BillingInformation_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_BillingInformation_columnHeaderValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_BillingInformation table contains the column header ${fieldValue}
        END
    ELSE IF    '${tableName}'=='OtherInformation'
        Click the PolicyHolderChat button    tbl_PolicyHolderChat_Policy_OtherInformation_expandSection
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_OtherInformation_sectionHeader}    timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_OtherInformation_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_OtherInformation_columnHeaderValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_OtherInformation table contains the column header ${fieldValue}
        END
    ELSE IF    '${tableName}'=='PhaseInformation'
        Click the PolicyHolderChat button    tbl_PolicyHolderChat_Policy_PhaseInformation_expandSection
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_PhaseInformation_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_PhaseInformation_sectionHeader

        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_PhaseInformation_columnHeaderValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_PhaseInformation table contains the column header ${fieldValue}
        END
    ELSE IF    '${tableName}'=='CoverageCellInformation'
        #Click the PolicyHolderChat button    tbl_PolicyHolderChat_Policy_CoverageCellInformation_expandSection
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_CoverageCellInformation_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_CoverageCellInformation_sectionHeader

        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_CoverageCellInformation_columnHeaderValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_CoverageCellInformation table contains the column header ${fieldValue}
        END  
    ELSE IF    '${tableName}'=='SpecialInformation:Messages'
        Click the PolicyHolderChat button    tbl_PolicyHolderChat_Policy_SpecialInformation_expandSection
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_SpecialInformation_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_SpecialInformation_sectionHeader

        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_SpecialInformation_columnHeaderValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_SpecialInformation:Messages table contains the column header ${fieldValue}
        END  
    END

Verify that row number ${rowNumber} contains the correct PolicyHolderChat c360 info for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the CoverageCellInformation table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_CoverageCellInformation_sectionHeader}    timeout=${sTimeout}
        Scroll button or label into view    ${tbl_PolicyHolderChat_Policy_CoverageCellInformation_sectionHeader}

        Run Keyword    Get row number ${rowNumber} API CoverageCellInformation details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_CoverageCellInformation_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the PolicyHolderChat CoverageCellInformation table
        END
    ELSE
        Do Nothing
    END

Verify the correct ${paveChat} c360 info is displayed for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the billingInfo table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API BillingInformation details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_BillingInformation_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Policy_BillingInformation table
        END
    ELSE
        Do Nothing
    END

Verify the correct ${paveChat} c360 info is displayed for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the OtherInfo table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API OtherInformation details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_OtherInformation_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Policy_OtherInformation table
        END
    ELSE
        Do Nothing
    END

Verify the correct ${paveChat} c360 info is displayed for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the PhaseInfo table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API PhaseInformation details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_PhaseInformation_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Policy_PhaseInformation table
        END
    ELSE
        Do Nothing
    END

Verify that row number ${rowNumber} contains the correct PolicyHolderChat c360 info for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the SpecialInfo table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_SpecialInformation_sectionHeader}    timeout=${sTimeout}
        Scroll button or label into view    ${tbl_PolicyHolderChat_Policy_SpecialInformation_sectionHeader}

        Run Keyword    Get row number ${rowNumber} API SpecialInformation details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_SpecialInformation_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the PolicyHolderChat Policy_SpecialInformation table
        END
    ELSE
        Do Nothing
    END