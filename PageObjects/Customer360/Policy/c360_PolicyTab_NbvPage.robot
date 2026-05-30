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
${tab_PolicyHolderChat_Policy_Nbv}    xpath://div[@aria-label='NBV']

## NBV ##
${tbl_PolicyHolderChat_Policy_Nbv_columnHeaders}           xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-AuditMessages')]//th[@role='columnheader']
${tbl_PolicyHolderChat_Policy_Nbv_tableRows}               xpath://tr[contains(@data-test-id,'')]
@{tbl_PolicyHolderChat_Policy_Nbv_columnHeaderValues}      Msg    Control Info    Severity    Notes
${btn_PolicyHolderChat_Nbv_rowAuditCheckbox}               xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-AuditMessages')]//tr[@pl_index='tableRowNumber']//td//input
${btn_PolicyHolderChat_nbvInsuredInfo_rowAuditCheckbox}    xpath://span[contains(@data-ui-meta,'AuditHistory')]//input[contains(@onchange,'Insured Info')]

* Keywords
Verify that the PolicyHolderChat Nbv table is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete

        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Nbv_columnHeaderValues}
            Run Keyword    Verify that the PolicyHolderChat Nbv table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END
    
