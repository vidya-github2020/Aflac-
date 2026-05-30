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
${header_claimInfo_NewClaimTabIcon}                               ${tab_policyHolderChat_claim_claimInfo_NewClaimTab}
${tab_policyHolderChat_claim_claimInfo_NewClaimTab}               xpath://img[@aria-label='Open Claim in new tab' and contains(@data-test-id,'202509251424270457641')]
${btn_policyHolderChat_claim_selectedClaims_appealDeniedClaim}    xpath://a[@data-test-id='202004070654500938362627' and contains (text(),'Appeal Denied')]
${btn_policyHolderChat_claim_selectedClaims_reviewDeniedClaim}    xpath://a[@data-test-id='202004070654500938362627' and contains (text(),'Review Denied')]

##  TASK -- ImagesTab
${tab_policyHolderChat_claim_claimInfo_Images}                    xpath://h3[text()='Images']
${chkBox_policyHolderChat_images_imagesInfo_imagesData}           xpath:(//input[@class='audit-history-checkbox' and contains(@onchange,'Images Tab')])

##  TASK -- SheetsTab
${tab_policyHolderChat_claim_claimInfo_Sheets}                    xpath://h3[text()='Sheets']
${btn_PolicyHolderChat_sheets_rowAuditCheckbox}                   xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-CommHierarchy')]//tr[@pl_index='tableRowNumber']//td//input
${chkBox_policyHolderChat_sheets_sheetsInfo_sheetsData}           xpath:(//span[contains(@class,'PAVE-alignleft left-aligned')]//input[@class='audit-history-checkbox'])[2]
@{tbl_PolicyHolderChat_Claims_Benefits_columnHeadersValues}       Ben Code    Phase Code    Surg.    Units    Treat.    Charge    Payout
${tbl_PolicyHolderChat_Claims_Benefits_expandedRowFieldValues}    xpath:(//td[@data-attribute-name='rowName']/div/span)[1]
${btn_policyHolderChat_claim_claimInfo_Sheets}                    xpath:(//h3[text()='Sheets'])[last()]

##  TASK -- SummaryTab
${tab_policyHolderChat_claim_claimInfo_Summary}                   xpath://div[@aria-label="Summary"]/h3[text()='Summary']
${btn_PolicyHolderChat_summary_rowAuditCheckbox}                  xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-CommHierarchy')]//tr[@pl_index='tableRowNumber']//td//input
${chkBox_policyHolderChat_summary_summaryInfo_summaryData}        xpath://span[contains(@class,'PAVE-alignleft left-aligned')]//input[@class='audit-history-checkbox']
 
##  TASK -- ChecksTab
${tab_policyHolderChat_claim_claimInfo_Checks}                    xpath://h3[text()='Checks']
${btn_policyHolderChat_claim_claimInfo_Checks}                    xpath:(//h3[text()='Checks'])[last()]
${btn_PolicyHolderChat_checks_rowAuditCheckbox}                   xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-CommHierarchy')]//tr[@pl_index='tableRowNumber']//td//input
${dd_policyHolderChat_claim_c360_claim_000119196}                 xpath://select[contains(@data-test-id,'20200312051532059014880')]//option[contains(@value,'119196')]
${chkBox_policyHolderChat_checks_checksInfo_payeeData}            xpath:(//span[contains(@class,'PAVE-alignleft left-aligned')]//input[@class='audit-history-checkbox'])[3]
${chkBox_policyHolderChat_checks_checksInfo_mailToData}           xpath:(//span[contains(@class,'PAVE-alignleft left-aligned')]//input[@class='audit-history-checkbox'])[4]
${chkBox_policyHolderChat_checks_checksInfo_checksData}           xpath:(//span[contains(@class,'PAVE-alignleft left-aligned')]//input[@class='audit-history-checkbox'])[2]
${chkBox_policyHolderChat_checks_checksInfo_payeeRowCheckbox}     xpath://div[@title='Payee']/i[@class='icon icon-openclose']
${chkBox_policyHolderChat_checks_checksInfo_mailToRowCheckbox}    xpath://div[@title='Mail To']/i[@class='icon icon-openclose']


##  TASK -- RemarksTab
${radioBtn_policyHolderChat_remarks_claim}                        xpath://label[text()='Claim']
${radioBtn_policyHolderChat_remarks_group}                        xpath://label[text()='Group']
${tab_policyHolderChat_claim_claimInfo_Remarks}                   xpath://h3[text()='Remarks']
${tbl_policyHolderChat_claim_claimInfo_rowCollapseIcon}           xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Remarks')]//tr[@pl_index='tableRowNumber']/td/div/div/div/span
${chkBox_policyHolderChat_claim_claimInfo_claimData}              xpath:(//div[contains(@class,'flex-row')]/input[contains(@onchange,'Sheet')])[2]
${chkBox_policyHolderChat_group_groupInfo_groupData}              xpath:(//div[contains(@class,'flex-row')]/input[contains(@onchange,'Sheet')])[3]
${chkBox_policyHolderChat_sheet_sheetInfo_sheetData}              xpath:(//div[contains(@class,'flex-row')]/input[contains(@onchange,'Sheet')])[1]
# @{tbl_policyholderchat_claim_claimInfo_Remarks_columnHeaderValues}    Sheet#    Desk    Seq    Date    Disclosure?    Remarks
@{tbl_policyholderchat_claim_claimInfo_Remarks_columnHeaderValues}    Sheet#    Desk    Seq    Disclosure?    Remarks
${tbl_policyholderchat_claim_claimInfo_Remarks_expandedRowFieldValues}    xpath:(//span[(text()='rowName')]//following-sibling::div)[last()]

##  TASK -- EDITab
${tab_policyHolderChat_claim_claimInfo_EDI}                       xpath://h3[text()='EDI']
${chkBox_policyHolderChat_edi_ediInfo_generalInfo}                xpath://span[contains(@class,'left')]//input[contains(@onchange,'General')]
${chkBox_policyHolderChat_edi_ediInfo_patientInfo}                xpath://div[@title='Patient Information']
${chkBox_policyHolderChat_edi_ediInfo_providerInfo}               xpath://div[@title='Provider Info']
${chkBox_policyHolderChat_edi_ediInfo_ediRemarksInfo}             xpath://div[@title='EDI Remarks']
${chkBox_policyHolderChat_edi_ediInfo_patientInfoCheckbox}        xpath://span[contains(@class,'left')]//input[contains(@onchange,'Patient')]
${chkBox_policyHolderChat_edi_ediInfo_providerInfoCheckbox}       xpath://span[contains(@class,'left')]//input[contains(@onchange,'Provider')]
${chkBox_policyHolderChat_edi_ediInfo_ediRemarksInfoCheckbox}     xpath://span[contains(@class,'left')]//input[contains(@onchange,'EDI Remarks')]

## CCN Details tab
${fld_CCNdetails_claim_CCN}                 xpath://span[contains(text(),'123455AH') and (@data-test-id= '202305180106180730812')]
${header_claimInfo_Benefits}                xpath://h2[contains(text(),'Benefits')] 
${fld_CCNdetails_claim_Status}              xpath://span[contains(text(),'Computer Paid') and (@data-test-id= '202305180106180731954')]
${fld_CCNdetails_claim_Approved}            xpath://span[contains(text(),'$90.00') and (@data-test-id= '202305180106180735776')]
${header_claimInfo_CCNDetails}              xpath://h2[contains(text(),'CCN Details')]
${lbl_claim_Benefits_tableRow}              xpath://tr[contains(@data-test-id,'202305180215230199575-R1')]  
${lbl_claim_Benefits_columnHeader_1}        xpath://th[contains(@data-test-id,'20160721093355058239712')]//div[contains(text(),'Plan Code')]
${lbl_claim_Benefits_columnHeader_2}        xpath://th[contains(@data-test-id,'202305180217070858839')]//div[contains(text(),'Ttmt Date')]
${lbl_claim_Benefits_columnHeader_3}        xpath://th[contains(@data-test-id,'202305180217070859902')]//div[contains(text(),'Billed')]
${lbl_claim_Benefits_columnHeader_4}     	xpath://th[contains(@data-test-id,'202305180217070860865')]//div[contains(text(),'Approved')]	
${lbl_claim_Benefits_columnHeader_5}        xpath://th[contains(@data-test-id,'202305180217070861345')]//div[contains(text(),'Aflac Paid')]
${lbl_claim_Benefits_columnHeader_6}        xpath://th[contains(@data-test-id,'20230518021707086214')]//div[contains(text(),'Aflac Ded')]
${lbl_claim_Benefits_columnHeader_7}        xpath://th[contains(@data-test-id,'202305180217070863468')]//div[contains(text(),'Audit Notes')]
${lbl_claim_Benefits_columnHeader_8}        xpath://th[contains(@data-test-id,'202305180217070864675')]//div[contains(text(),'Provider')]	
${chkBox_policyHolderChat_CCN_CCNInfo_CCNClaims1}     xpath:(//input[@type='checkbox' and contains(@onchange,'readElements')])[1]

## Benefit Letter tab
${tab_policyHolderChat_claim_claimInfo_BenefitLetter}                       xpath://h3[text()='Benefit Letter']
${chkBox_policyHolderChat_benefit_checkInfo_CheckInfo}     xpath://span[contains(@class,'header-title-table')]//input
${chkBox_policyHolderChat_benefit_checkInfo_CheckItemizationInfo}     xpath://tr[@data-test-id='201910071717280742516-R1-L1R1']//input

${opt_policyHolderChat_claim_c360_claim}                   xpath://div[@data-test-id="202311211514430665383"]
${tab_policyHolderChat_claim_claimInfo_CCNs}               xpath:(//h3[text()='CCNs'])[2] 
${dd_policyHolderChat_claim_c360_claim_000189017}          xpath://select[contains(@data-test-id,'20200312051532059014880')]//option[contains(@value,'189017')]
${dd_policyHolderChat_claim_c360_claim_000818339}          xpath://select[contains(@data-test-id,'20200312051532059014880')]//option[contains(@value,'818339')]
${dd_policyHolderChat_claim_c360_claim_001925286}          xpath://div/span[contains(text(),'Claim 001925286 ACCIDENT (recv 10/11/2025)')]
${dd_policyHolderChat_claim_c360_claim_001917146}          xpath://div/span[contains(text(),'Claim 001917146')]
${dd_policyHolderChat_claim_c360_claim_001915663}          xpath://div/span[contains(text(),'Claim 001915663')]
${dd_policyHolderChat_claim_c360_claim_1936118}            xpath://div/span[contains(text(),'Claim 1936118')]
@{tbl_PolicyHolderChat_Claim_CCNs_columnHeaderValues}      CCN    Assc    MA    BDOS    EDOS    Part    Billed    Approved    Aflac Ded    Aflac Paid    Med Ded    Processed/Stamped    Provider
${tbl_PolicyHolderChat_ClaimControlNumbers_rowHeaderFieldValues}    xpath://tr[contains(@data-test-id,'201910071717280742516')]/td[@data-attribute-name="rowName"]

@{tbl_PolicyHolderChat_Claim_CCNDetails_HeaderValues}      ClaimControlNumber    StatusDescription    DatePaid    MedicareGapCode    UserLogon    ProcessStampedDate    DaysCharged    DateOfService    Billed    Approved    AflacPaid    AflacDed    MedicareDed    Units    #PatientID test data no value so no API data
${tbl_PolicyHolderChat_ClaimCCNDetails_expandedRowFieldValues}    xpath://div[contains(@data-ui-meta,'rowName')]//div

@{tbl_PolicyHolderChat_Claim_CCNDetailsTotalAmountPaid_HeaderValues}      InsuredPaid    ProviderPaid    EstatePaid    MiscPaid
${tbl_PolicyHolderChat_ClaimCCNDetailsTotalAmountPaid_rowHeaderFieldValues}    xpath://div[contains(@data-ui-meta,'fieldValue')]//div

@{tbl_PolicyHolderChat_Claim_CCNDetailsProvider_HeaderValues}     Provider.Name2.Last    Provider.ProviderNumber    Provider.PhoneNumber 
${tbl_PolicyHolderChat_ClaimCCNDetailsProvider_expandedRowFieldValues}    xpath://div[contains(@data-ui-meta,'rowName')]//div

@{tbl_PolicyHolderChat_Claim_CCNDetailsBenefits_HeaderValues}    Ttmt Date    Billed    Approved    Aflac Paid    Aflac Ded    Audit Notes    Provider    Payee    Units    # Plan Code known issue not being sent thro to C360 yet
${tbl_PolicyHolderChat_ClaimCCNDetailsBenefits_rowHeaderFieldValues}    xpath://tr[contains(@data-test-id,'202305180215230199575')]/td[@data-attribute-name="rowName"]

@{tbl_PolicyHolderChat_Claim_PaymentNotes_HeaderValues}           Code    Note
${tbl_PolicyHolderChat_ClaimCCNDetailsPaymentNotes_rowHeaderFieldValues}    xpath://tr[contains(@data-test-id,'202305180333100573111')]/td[@data-attribute-name="rowName"]

*** Keywords 
Verify the ${paveChat} displays the "${tabAuditData}" Audit Data on the wrap up screen
    Wait Until Element Is Visible    ${tbl_${paveChat}_auditData}     timeout=${mTimeout}
    ${allElements}    Get WebElements    ${tbl_${paveChat}_auditData}
    ${listCount}=    Get Length    ${allElements}   
    
    FOR    ${the_element}    IN RANGE    ${listCount}
        ${actualText}    Get Text    ${allElements}[${the_element}]
        ${expectedText}    Convert To String    ${tabAuditData}
        ${checkValue}=    Run Keyword And Return Status    Should Contain    ${expectedText}    ${actualText}
        
        IF    ${listcount-1}==${the_element}
            Fail    Element text is not found in the audit data grid.
        END
        
    END

Verify Header '${header}' visible in claimInfo screen 
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${header_claimInfo_${header}}    timeout=${lTimeout}
    Sleep    2s    

Verify the CCNdetails ${field} field data on claimtab in c360 screen
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_CCNdetails_claim_${field}}    timeout=${mTimeout}
    ${actualText}    Get Text    ${fld_CCNdetails_claim_${field}}
    IF    '${field}'=='CCN'
        ${expectedText}    Convert To String    123455AH
    ELSE IF    '${field}'=='Status'
        ${expectedText}    Convert To String    Computer Paid
    ELSE IF    '${field}'=='Approved'
        ${expectedText}    Convert To String    $90.00
    END
    Should Contain    ${actualText}    ${expectedText}
    Sleep    2s

Verify that the medsup claim Benefits table data is displayed
    Table Column Should Contain   ${lbl_claim_Benefits_columnHeader_1}    1    Plan Code
    Table Column Should Contain   ${lbl_claim_Benefits_columnHeader_2}    1    Ttmt Date
    Table Column Should Contain   ${lbl_claim_Benefits_columnHeader_3}    1    Billed
    Table Column Should Contain   ${lbl_claim_Benefits_columnHeader_4}    1    Approved
    Table Column Should Contain   ${lbl_claim_Benefits_columnHeader_5}    1    Aflac Paid
    Table Column Should Contain   ${lbl_claim_Benefits_columnHeader_6}    1    Aflac Ded
    Table Column Should Contain   ${lbl_claim_Benefits_columnHeader_7}    1    Audit Notes 
    Table Column Should Contain   ${lbl_claim_Benefits_columnHeader_8}    1    Provider
    Table Row Should Contain      ${lbl_claim_Benefits_tableRow}         2     02/01/2025

Verify that row number ${rowNumber} contains the correct PolicyHolderChat c360 CCNs info for claimNumber ${claimNumber} and companyNumber ${companyNumber} in the ClaimControlNumbers table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API CCNs for claimNumber ${claimNumber} and companyNumber ${companyNumber} in ClaimControlNumbers table
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Claim_CCNs_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the PolicyHolderChat ClaimControlNumbers table
        END
    ELSE
        Do Nothing
    END   

Verify CCN contains the correct ${paveChat} CCN Details for claimNumber ${claimNumber} with ccnId ${ccnId}, sheetNumber ${sheetNumber} and companyNumber ${companyNumber} in ClaimControlDetails table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API CCN Details for claimNumber ${claimNumber} with ${ccnId}, ${sheetNumber} and companyNumber ${companyNumber} in ClaimControlDetails table
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Claim_CCNDetails_HeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} ClaimCCNDetails table
        END

        # Total Amount Paid excluded for the moment as no test data

        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Claim_CCNDetailsProvider_HeaderValues} 
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} ClaimCCNDetailsProvider table

        END

        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Claim_CCNDetailsBenefits_HeaderValues} 
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row 1 contains the ${apiField} API value in the PolicyHolderChat ClaimCCNDetailsBenefits table
        END

        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Claim_PaymentNotes_HeaderValues} 
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row 1 contains the ${apiField} API value in the PolicyHolderChat ClaimCCNDetailsPaymentNotes table
        END

        # EDI Information excluded for the moment as no test data

    ELSE
        Do Nothing
    END   

Verify the correct ${paveChat} c360 info is displayed for claimID ${claimID} and companyNumber ${companyNumber} in the Claims Sheets Benifits table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimSheets Benefits details for claimID ${claimID} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Claims_Benefits_columnHeadersValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Claims_Benefits table
        END
    ELSE
        Do Nothing
    END
  
Verify the correct ${paveChat} c360 info is displayed for claimID ${claimID} and companyNumber ${companyNumber} in the Claims Checks table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimChecks details for claimID ${claimID} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Claims_Checks_columnHeadersValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Claims_Checks table 
        END
    ELSE
        Do Nothing
    END    

Verify the correct ${paveChat} c360 info is displayed for claimID ${claimNumber} and companyNumber ${companyNumber} in the claim_claimInfo_Remarks table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API ClaimsRemarks for claimNumber ${claimNumber} and companyNumber ${companyNumber} in ClaimRemarks table
        
        FOR    ${fieldValue}  IN  @{tbl_policyholderchat_claim_claimInfo_Remarks_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} claim_claimInfo_Remarks table
        END
    ELSE
        Do Nothing
    END
  
    
      
