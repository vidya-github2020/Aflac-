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
${tab_PolicyHolderChat_Policy_Suspense}    xpath://div[@aria-label='Suspense']

## Suspense ##
${tbl_PolicyHolderChat_Policy_Suspense_sectionHeader}          xpath://h2[text()='Suspense']
${tbl_PolicyHolderChat_Policy_Suspense_sectionHeader_txt}      Suspense
${tbl_PolicyHolderChat_Policy_Suspense_columnHeaders}          xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-Suspense')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_Policy_Suspense_columnHeadersValues}    Suspense Account #    Total
${btn_PolicyHolderChat_Suspense_rowAuditCheckbox}       xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-Suspense')]//tr[@pl_index='tableRowNumber']//td//input
${btn_PolicyHolderChat_SuspenseParent_rowAuditCheckbox}       xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-Suspense')]//tr[@pl_index='tableRowNumber']//td//input)[1]
${btn_PolicyHolderChat_SuspenseChild_rowAuditCheckbox}       xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-Suspense')]//tr[@pl_index='tableRowNumber']//td//input)[last()]
${tbl_PolicyHolderChat_SuspenseParent_rowCollapseIcon}         xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-Suspense')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span)[1]


* Keywords
Verify that the Policy_Suspense Customer360 tab is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Suspense_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Suspense table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_Suspense tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='Suspense'
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_Suspense_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_Suspense_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Suspense_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat PolicyInformation_Suspense table contains the column header ${fieldValue}
        END 
    END
