###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}AgentChannel${/}Settings.resource

* Variables
${tab_AgentChat_Images}    xpath://div[@aria-label='Images']
${fld_AgentChat_Images_fromDate}     xpath://input[@data-test-id='202102110527350241885']
${fld_AgentChat_Images_toDate}       xpath://input[@data-test-id='202102110527350241759']
${btn_AgentChat_Images_getImages}    xpath://button[@data-test-id='202102110527350241464']
# ${tbl_AgentChat_Images_sectionHeader}    xpath://h2[contains(@class,'header-title') and (text()='Images')]
${tbl_AgentChat_Images_columnHeaders}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Images')]//th[@role='columnheader']
${tbl_AgentChat_Images_tableRows}        xpath://tr[contains(@data-test-id,'202003251842570969299')]

@{tbl_AgentChat_Images_columnHeaderValues}    Received Date    View Image    Doc Type    Origin Channel

* Keywords
Verify that the AgentChat Images table is displayed
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${fld_AgentChat_Images_fromDate}     timeout=${mTimeout}
        Wait Until Element Is Visible    ${fld_AgentChat_Images_toDate}       timeout=${mTimeout}
        Wait Until Element Is Visible    ${btn_AgentChat_Images_getImages}    timeout=${mTimeout}

        FOR    ${fieldValue}  IN  @{tbl_AgentChat_Images_columnHeaderValues}
            Run Keyword    Verify that the AgentChat Images table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

# Table row data for Writing Number: Y6757
# Verify that the AgentChat Images table row data is displayed
#     Sleep    2s
#     Table Row Should Contain    ${lbl_AgentChat_csat_tableRow}    2    24-Sep-2021
#     Table Row Should Contain    ${lbl_AgentChat_csat_tableRow}    4    20-May-2021
#     Table Row Should Contain    ${lbl_AgentChat_csat_tableRow}    7    26-Apr-2021

