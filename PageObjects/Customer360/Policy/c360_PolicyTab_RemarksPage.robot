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
${tab_PolicyHolderChat_Policy_Remarks}    xpath://div[@aria-label='Remarks']

## Remarks ##
${radioBtn_PolicyHolderChat_Policy_Remarks_criticalRemarks}    xpath://input[@value='Critical Remarks']
${radioBtn_PolicyHolderChat_Policy_Remarks_policyRemarks}      xpath://span/label[contains(@for,'Policy Remarks')]
${radioBtn_PolicyHolderChat_Policy_Remarks_claimsRemarks}      xpath://input[@value='Claim Remarks']
${btn_PolicyHolderChat_Policy_Remarks_add}                     xpath://button[@data-test-id='202112021717480382412']
${tbl_PolicyHolderChat_Policy_Remarks_columnHeaders}           xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-RemarkList')]//th[@role='columnheader']
${tbl_PolicyHolderChat_Policy_Remarks_tableRows}               xpath://tr[contains(@data-test-id,'201910120631300651812')]
@{tbl_PolicyHolderChat_Policy_Remarks_columnHeaderValues}      Date    Type    E-number    Remark
${btn_PolicyHolderChat_Remarks_rowAuditCheckbox}               xpath:(//span[contains(@data-ui-meta,'AuditHistory')]//input[contains(@class,'audit-history-checkbox')])[2]
${btn_PolicyHolderChat_CriticalRemarks_rowAuditCheckbox}       xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Policy-RemarkList')]//tr[@pl_index='tableRowNumber']//td//input
${btn_policyHolderChat_policy_policyRemarks_Add}               xpath://button[@data-test-id='202112021717480382412' and text()='Add']
${btn_policyHolderChat_policy_addRemarks_Save}                 xpath://div[text()='Save']
${btn_policyHolderChat_policy_addRemarks_Cancel}                xpath://button[@data-test-id='20150526011933006028737']
${fld_policyHolderChat_policy_addRemarks_remarks}              xpath://textarea[@data-test-id='202112030228140331205']
${btn_policyHolderChat_policy_policyRemarks_Refresh}           xpath://button[@data-test-id='202112021717480382412' and text()='Refresh']
${chkBox_policyHolderChat_policy_addRemarks_Tracking_No}       xpath:(//label[contains(@class,'radioLabel') and text()='No'])[2]
${chkBox_policyHolderChat_policy_addRemarks_Critical_No}       xpath://label[@for='60255d71No' and text()='No']
${chkBox_policyHolderChat_policy_addRemarks_policyServices}    xpath://input[@data-test-id='202112171231310922562']
${btn_policyHolderChat_policy_addRemarks_Close}                xpath://button[@data-test-id='20211209183907024077']
${chkBox_policyHolderChat_policy_Remarks_policyRemarks}        xpath://label[text()='Policy Remarks']
${btn_policyHolderChat_policy_policyRemarks_Edit}              xpath:(//div[@data-test-id='202112090958050201157']/div[2]/span/i[@class='icons'])[2]
${chkBox_policyHolderChat_policy_editRemarks_Critical}         xpath://input[@data-test-id='202112031751150500580']
${btn_policyHolderChat_policy_editRemarks_ERCancel}            xpath://button[@data-test-id='202112031820390112985']
${btn_policyHolderChat_policy_editRemarks_ERSave}              xpath://button[@data-test-id='202112031820390112626' and text()='Save']
${btn_policyHolderChat_policy_policyRemarks_Delete}            xpath:(//div[@data-test-id='202112090958050201157']/div[3]/span/i[@class='icons'])[2]
${btn_policyHolderChat_policy_deleteRemark_DRCancel}           xpath://button[@data-test-id='202112070125130075763']

* Keywords
Verify that the PolicyHolderChat Remarks table is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${radioBtn_PolicyHolderChat_Policy_Remarks_criticalRemarks}    timeout=${mTimeout}
        Wait Until Element Is Visible    ${radioBtn_PolicyHolderChat_Policy_Remarks_policyRemarks}      timeout=${mTimeout}
        Wait Until Element Is Visible    ${radioBtn_PolicyHolderChat_Policy_Remarks_claimsRemarks}      timeout=${mTimeout}
        Wait Until Element Is Visible    ${btn_PolicyHolderChat_Policy_Remarks_add}                     timeout=${mTimeout}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_Remarks_columnHeaderValues}
            Run Keyword    Verify that the PolicyHolderChat Remarks table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END
