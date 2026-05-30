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
${tab_PolicyHolderChat_Policy_LetterHistory}    xpath://div[@aria-label='Letter <br>History']

## LetterHistory ##
${tbl_PolicyHolderChat_Policy_LetterHistory_sectionHeader}          xpath://h2[text()='Letter History']
${tbl_PolicyHolderChat_Policy_LetterHistory_sectionHeader_txt}      Letter History
${tbl_PolicyHolderChat_Policy_LetterHistory_columnHeaders}          xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-LetterHistory')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_Policy_LetterHistory_columnHeadersValues}    Claim #    Letter    Date Ordered    Para 1    Para 2    Para 3    Para 4    Desk #
${btn_PolicyHolderChat_LetterHistory_rowAuditCheckbox}       xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-LetterHistory')]//tr[@pl_index='tableRowNumber']//td//input
${tbl_PolicyHolderChat_LetterHistory_rowCollapseIcon}         xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-LetterHistory')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span)[1]

* Keywords
Verify that the Policy_LetterHistory Customer360 tab is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_LetterHistory_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_LetterHistory table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_LetterHistory tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='LetterHistory'
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_LetterHistory_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_LetterHistory_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_LetterHistory_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_LetterHistory table contains the column header ${fieldValue}
        END 
    END
