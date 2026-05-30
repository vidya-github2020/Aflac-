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
${tab_PolicyHolderChat_Policy_Accounting}    xpath://div[@aria-label='Accounting']

## Accounting ##
${tbl_PolicyHolderChat_Policy_Accounting_sectionHeader}          xpath://h2[text()='Payments']
${tbl_PolicyHolderChat_Policy_Accounting_sectionHeader_txt}      Payments
${tbl_PolicyHolderChat_Policy_Accounting_columnHeaders}          xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-Accounting')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_Policy_Accounting_columnHeadersValues}    Tran Code    Entry Date    Previous PTD    Amt Received    Amt Applied    Billing Form    Account
${btn_PolicyHolderChat_Policy_Accounting_rowAuditCheckbox}       xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-Accounting')]//tr[@pl_index='tableRowNumber']//td//input
${btn_PolicyHolderChat_accountingBankingInformation_rowAuditCheckbox}    xpath://span[contains(@data-ui-meta,'AuditHistory')]//input[contains(@onchange,'Bank Info')]

* Keywords
Verify that the Policy_Accounting Customer360 tab is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Accounting_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Accounting table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_Accounting tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='Payments'
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_Accounting_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_Accounting_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Accounting_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Accounting table contains the column header ${fieldValue}
        END 
    END
