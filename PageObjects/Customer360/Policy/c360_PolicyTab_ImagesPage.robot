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
${tab_PolicyHolderChat_Policy_Images}    xpath://div[@aria-label='Images']

## Images ##
${fld_PolicyHolderChat_Policy_Images_fromDate}              xpath://input[@data-test-id='202102110527350241885']
${fld_PolicyHolderChat_Policy_Images_toDate}                xpath://input[@data-test-id='202102110527350241759']
${btn_PolicyHolderChat_Policy_Images_getImages}             xpath://button[@data-test-id='202102110527350241464']
${tbl_PolicyHolderChat_Policy_Images_columnHeaders}         xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Images')]//th[@role='columnheader']
${tbl_PolicyHolderChat_Policy_Images_tableRows}             xpath://tr[contains(@data-test-id,'202003251842570969299')]
@{tbl_PolicyHolderChat_Policy_Images_columnHeaderValues}    Received Date    View Image    Doc Type    Origin Channel


* Keywords
Verify that the PolicyHolderChat Images table is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${fld_PolicyHolderChat_Policy_Images_fromDate}     timeout=${mTimeout}
        Wait Until Element Is Visible    ${fld_PolicyHolderChat_Policy_Images_toDate}       timeout=${mTimeout}
        Wait Until Element Is Visible    ${btn_PolicyHolderChat_Policy_Images_getImages}    timeout=${mTimeout}

        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Images_columnHeaderValues}
            Run Keyword    Verify that the PolicyHolderChat Images table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END
