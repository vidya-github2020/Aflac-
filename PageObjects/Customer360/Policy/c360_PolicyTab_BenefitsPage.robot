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
${tab_PolicyHolderChat_Policy_Benefits}    xpath://div[@aria-label='Benefits']

## Benefits ##
${tbl_PolicyHolderChat_Policy_Benefits_sectionHeader}          xpath://h2[text()='Benefits']
${tbl_PolicyHolderChat_Policy_Benefits_sectionHeader_txt}      Benefits
${tbl_PolicyHolderChat_Policy_Benefits_columnHeaders}          xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-BenefitList')]//th[@role='columnheader']
@{tbl_PolicyHolderChat_Policy_Benefits_columnHeadersValues}    Plan Code    Series    Dependent Coverage    Benefit Count
${btn_PolicyHolderChat_Benefits_rowAuditCheckbox}              xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-BenefitList')]//tr[@pl_index='tableRowNumber']//td//input
${btn_PolicyHolderChat_BenefitsChild_rowAuditCheckbox}              xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-BenefitList')]//tr[@pl_index='tableRowNumber']//td//input)[last()]
${tbl_PolicyHolderChat_Benefits_rowCollapseIcon}               xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-BenefitList')]//tr[@pl_index='tableRowNumber']//td//span
${tbl_PolicyHolderChat_BenefitsParent_rowCollapseIcon}         xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-BenefitList')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span)[1]
${tbl_PolicyHolderChat_BenefitsChild_rowCollapseIcon}         xpath:(//table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-BenefitList')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span)[last()]

* Keywords
Verify that the Policy_Benefits Customer360 tab is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Benefits_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Benefits table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_Benefits tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='Benefits'
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_Benefits_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_Benefits_sectionHeader
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Benefits_columnHeadersValues}
            Run Keyword    Verify that the PolicyHolderChat Policy_Benefits table contains the column header ${fieldValue}
        END 
    END
