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
${tab_PolicyHolderChat_Policy_Refunds}    xpath://div[@aria-label='Refunds']

## Refunds ##
${tbl_PolicyHolderChat_Policy_Refunds_sectionHeader}          xpath://h2[text()='Refunds']
${tbl_PolicyHolderChat_Policy_Refunds_sectionHeader_txt}      Refunds
${tbl_PolicyHolderChat_Policy_Refunds_columnHeaders}          xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-RefundChecks')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_Policy_Refunds_columnHeadersValues}    Payee Name    Check Date    Policy    Description    Check    Status    Check Type    State code
${btn_PolicyHolderChat_Policy_Refunds_rowAuditCheckbox}       xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-RefundChecks')]//tr[@pl_index='tableRowNumber']//td//input
${tbl_PolicyHolderChat_Policy_Refunds_rowCollapseIcon}        xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-RefundChecks')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span)[1]

* Keywords
Verify that the Policy_Refunds Customer360 tab is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Refunds_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Refunds table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_Refunds tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='Refunds'
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_Refunds_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_Refunds_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Refunds_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Refunds table contains the column header ${fieldValue}
        END 
    END
