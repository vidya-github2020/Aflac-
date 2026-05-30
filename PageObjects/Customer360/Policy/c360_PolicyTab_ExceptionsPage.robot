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
${tab_PolicyHolderChat_Policy_Exceptions}    xpath://div[@aria-label='Exceptions']

## Exceptions ##
${tbl_PolicyHolderChat_Policy_Exceptions_sectionHeader}          xpath://h2[text()='Exceptions']
${tbl_PolicyHolderChat_Policy_Exceptions_sectionHeader_txt}      Exceptions
${tbl_PolicyHolderChat_Policy_Exceptions_columnHeaders}          xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-Exception')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_Policy_Exceptions_columnHeadersValues}    Desk    SeqNo    ExceptionCode    Comments
${btn_PolicyHolderChat_Policy_Exceptions_rowAuditCheckbox}       xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-Exception')]//tr[@pl_index='tableRowNumber']//td//input


* Keywords
Verify that the Policy_Exceptions Customer360 tab is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Exceptions_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Exceptions table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_Exceptions tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='Exceptions'
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_Exceptions_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_Exceptions_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Exceptions_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Exceptions table contains the column header ${fieldValue}
        END 
    END
