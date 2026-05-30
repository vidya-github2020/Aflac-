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
${tab_PolicyHolderChat_Policy_AssocComm}    xpath://div[@aria-label='Assoc Comm']

## Assoc Comm ##
${tbl_PolicyHolderChat_Policy_AssocComm_sectionHeader}          xpath://h2[text()='Associate Commission']
${tbl_PolicyHolderChat_Policy_AssocComm_sectionHeader_txt}      Associate Commission
${tbl_PolicyHolderChat_Policy_AssocComm_columnHeaders}          xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-AssocComm')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_Policy_AssocComm_columnHeadersValues}    Split    Writing Assoc    Start Date    Stop Date    Comm %
${btn_PolicyHolderChat_AssocComm_rowAuditCheckbox}       xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-AssocComm')]//tr[@pl_index='tableRowNumber']//td//input
${btn_PolicyHolderChat_AssocCommParent_rowAuditCheckbox}       xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-AssocComm')]//tr[@pl_index='tableRowNumber']//td//input)[1]
${btn_PolicyHolderChat_AssocCommChild_rowAuditCheckbox}       xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-CommHierarchy')]//tr[@pl_index='tableRowNumber']//td//input)[1]
${tbl_PolicyHolderChat_AssocComm_rowCollapseIcon}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-AssocComm')]//tr[@pl_index='tableRowNumber']//td//span
${tbl_PolicyHolderChat_AssocCommParent_rowCollapseIcon}    xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-AssocComm')]//tr[@pl_index='tableRowNumber']//td//span)[1]
${btn_PolicyHolderChat_CommHierarchy_rowAuditCheckbox}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-CommHierarchy')]//tr[@pl_index='tableRowNumber']//td//input

* Keywords
Verify that the Policy_AssocComm Customer360 tab is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_AssocComm_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_AssocComm table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_AssocComm tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='AssociateCommission'
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_AssocComm_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_AssocComm_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_AssocComm_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_AssocComm table contains the column header ${fieldValue}
        END 
    END
