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
${tab_PolicyHolderChat_Policy_Persons}    xpath://div[@aria-label='Persons']

## Persons - Associate Information ##
${tbl_PolicyHolderChat_Policy_AssociateInformation_sectionHeader}         xpath://div[text()='Associate Information']
${tbl_PolicyHolderChat_Policy_AssociateInformation_sectionHeader_txt}     Associate Information
${tbl_PolicyHolderChat_Policy_AssociateInformation_columnHeaders}         xpath://div[contains(@data-test-id,'201910070228330642858')]//span[contains(@class,'dataLabelForRead')]
@{tbl_PolicyHolderChat_Policy_AssociateInformation_columnHeaderValues}    Name    Email Address    Phone Number    Writing#    Address    City, State Zip    Status
${tbl_PolicyHolderChat_Policy_AssociateInformation_expandedRowFieldValues}           xpath:(//span[(text()='rowName')]//following-sibling::div)[last()]
${tbl_PolicyHolderChat_Policy_AssociateInformation_sectionHeaderIcon}     xpath://div[@title='tableSection']//i[contains(@class,'icon-openclose')]
${btn_PolicyHolderChat_Persons_rowAuditCheckbox}                          xpath:(//span[contains(@data-ui-meta,'AuditHistory')]//input[contains(@class,'audit-history-checkbox')])[last()]
${btn_PolicyHolderChat_CustomerInfo_rowAuditCheckbox}                          xpath:(//span[contains(@data-ui-meta,'AuditHistory')]//input[contains(@class,'audit-history-checkbox')])[1]

## Persons - Members ##
${tbl_PolicyHolderChat_Policy_Members_sectionHeader}           xpath://div[text()='Members']
${tbl_PolicyHolderChat_Policy_Members_sectionHeader_txt}       Members
${tbl_PolicyHolderChat_Policy_Members_expandSection}    xpath://div[@title="Coverage Cell Information"]/i[contains(@class,'icon-openclose')]
${tbl_PolicyHolderChat_Policy_Members_columnHeaders}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-PersonList')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_Policy_Members_columnHeaderValues}    Name    Relationship    DOB    Gender
${tbl_PolicyHolderChat_Policy_Members_rowHeaderFieldValues}           xpath://tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']//span
${tbl_PolicyHolderChat_Policy_Members_sectionHeaderIcon}     xpath://div[@title='tableSection']//i[contains(@class,'icon-openclose')]



* Keywords
Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_Persons tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='Associate Information'
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_AssociateInformation_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_AssociateInformation_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_AssociateInformation_columnHeaderValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_AssociateInformation table contains the column header ${fieldValue}
        END
    ELSE IF    '${tableName}'=='Members'
        Click the PolicyHolderChat button    tbl_PolicyHolderChat_Policy_Members_expandSection
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_Members_sectionHeader}    timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_Members_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Members_columnHeaderValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Members table contains the column header ${fieldValue}
        END
        # Check for labels
    END

Verify the correct ${paveChat} c360 info is displayed for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the associateInformation table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API AssociateInformation details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_AssociateInformation_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            IF    '${fieldValue}'=='Phone Number'
                ${getUiFieldValue}=    Replace String    ${tbl_${paveChat}_Policy_AssociateInformation_expandedRowFieldValues}    rowName    ${fieldValue}
                ${uiActualValue}=    Get Text    ${getUiFieldValue}
                ${uiFieldValue}=    Remove String    ${uiActualValue}    (    )    -    ${SPACE}
                Verify that the UI value is equal to the API value    ${uiFieldValue}    Policy_AssociateInformation    ${apiField}
            ELSE
                Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Policy_AssociateInformation table
            END
        END
    ELSE
        Do Nothing
    END

Verify that row number ${rowNumber} contains the correct PolicyHolderChat c360 info for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the members table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_Members_sectionHeader}    timeout=${sTimeout}
        Scroll button or label into view    ${tbl_PolicyHolderChat_Policy_Members_sectionHeader}

        Run Keyword    Get row number ${rowNumber} API Members details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Members_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the PolicyHolderChat Policy_Members table
        END
    ELSE
        Do Nothing
    END
