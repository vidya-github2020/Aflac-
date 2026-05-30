*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot

*** Variables ***
${dd_errorMsg_field}                                  xpath://span[@class='iconError dynamic-icon-error']
${lbl_policyHolder_claim_buildremark_txt}             Build Remarks is successfully created. Please confirm!               
${btn_policyHolderChat_claim_buildremark_Exit}        xpath://div[text()='Exit']
${tab_policyHolderChat_claim_claimInfo_Checks}        xpath://h3[contains(@class,'layout-group-item-title') and text()='Checks']
${btn_policyHolderChat_claim_buildremark_Close}       xpath://button[text()='Close'] 
${lbl_policyHolder_claim_buildremark_checkdata}       xpath://span[@data-test-id='202211030405540268557']
${btn_policyHolderChat_claim_buildremark_Submit}      xpath://button[text()='Submit']
${fld_SSUser_claim_buildremark_Void/StopPmtDate}            xpath://input[@data-test-id='202211030352100255459']
${btn_policyHolderChat_claim_claimInfo_buildremark}         xpath://button[contains(text(),'Build Remarks')]
#${lbl_policyHolder_claim_buildremark_sectionHeader}         xpath://span[@data-test-id='202211030405540268557-Label']   
${dd_policyHolderChat_claim_buildremark_callStatus}         xpath://select[@data-test-id='202211030340070266204']   
${dd_policyHolderChat_claim_buildremark_documentType}       xpath://select[@id='c9d5732d']
${lbl_Policyholder_claim_buildremark_ConfirmationMsg}       xpath://div[@data-test-id='202004071016180736621']
${lbl_policyHolderChat_claim_buildremark_sectionHeader}     xpath://h2[@class='heading_2_dataLabelRead']
${dd_policyHolderChat_claim_buildremark_dispositionType}             xpath://select[@data-test-id='202211030340070265433']
${dd_policyHolderChat_claim_buildremark_callStatus_option}           xpath://select[contains(@data-test-id,'202211030340070266204')]//option[contains(text(),'dropDownOption')]
${dd_policyHolderChat_claim_buildremark_informationSource}           xpath://select[@data-test-id='202211030340070265958']
${dd_policyHolderChat_claim_buildremark_documentType_option}         xpath://select[contains(@data-test-id,'202211030340070264292')]//option[contains(@value,'dropDownOption')]
${dd_policyHolderChat_claim_buildremark_dispositionType_option}       xpath://select[contains(@data-test-id,'202211030340070265433')]//option[contains(@value,'dropDownOption')]
${dd_policyHolderChat_claim_buildremark_informationSource_option}     xpath://select[contains(@data-test-id,'202211030340070265958')]//option[contains(text(),'dropDownOption')]

## AddTask Variables ####
${lbl_policyHolder_general_Buildremark_txt}                    ${lbl_policyHolder_claim_buildremark_txt} 
${btn_policyHolderChat_general_Buildremark_Exit}               ${btn_policyHolderChat_claim_buildremark_Exit}           
${btn_policyHolderChat_general_Buildremark_Close}              ${btn_policyHolderChat_claim_buildremark_Close}
${btn_policyHolderChat_general_buildremark_Submit}             ${btn_policyHolderChat_claim_buildremark_Submit}    
${fld_SSUser_general_Buildremark_Void/StopPmtDate}             ${fld_SSUser_claim_buildremark_Void/StopPmtDate}   
${btn_policyHolderChat_addTask_general_BuildRemark}            xpath://a[@data-test-id='2014123005242607302524' and contains(text(),'Build Remark')]   
${dd_policyHolderChat_general_Buildremark_callStatus}          ${dd_policyHolderChat_claim_buildremark_callStatus}  
${dd_policyHolderChat_general_Buildremark_documentType}        ${dd_policyHolderChat_claim_buildremark_documentType}
${lbl_Policyholder_general_Buildremark_ConfirmationMsg}        ${lbl_Policyholder_claim_buildremark_ConfirmationMsg}  
${lbl_policyHolderChat_general_BuildRemark_sectionHeader}       ${lbl_policyHolderChat_claim_buildremark_sectionHeader} 
${dd_policyHolderChat_general_Buildremark_dispositionType}      ${dd_policyHolderChat_claim_buildremark_dispositionType}  
${dd_policyHolderChat_general_Buildremark_callStatus_option}    ${dd_policyHolderChat_claim_buildremark_callStatus_option}  
${dd_policyHolderChat_general_Buildremark_informationSource}           ${dd_policyHolderChat_claim_buildremark_informationSource}
${dd_policyHolderChat_general_Buildremark_documentType_option}         ${dd_policyHolderChat_claim_buildremark_documentType_option}
${dd_policyHolderChat_general_Buildremark_dispositionType_option}       ${dd_policyHolderChat_claim_buildremark_dispositionType_option}
${dd_policyHolderChat_general_Buildremark_informationSource_option}     ${dd_policyHolderChat_claim_buildremark_informationSource_option}

*** Keywords ***
Verify that the ${dropdownValue} is selected and RemarksPreview data is displayed 
    Wait for pega masking icon to complete
     ${actualText}    Get Text       ${lbl_policyHolder_claim_buildremark_checkdata}
     IF    '${dropdownValue}'=='OriginalCheck'   
    ${expectedText}    Convert To String     SMART SCREENS_USER, RMLD TO INS CK# C025818181/$50.00 
    ELSE IF    '${dropdownValue}'=='ReplacementCheck'    
    ${expectedText}    Convert To String         SMART SCREENS_USER, HOLDING LETTER FOR RPLC CK# /26.09 CALL
    ELSE IF    '${dropdownValue}'=='Correspondence'  
    ${expectedText}    Convert To String         SMART SCREENS_USER, REQUEST TO VOID CORESP FEW TO CLAIMS ADMIN FOR REISSUE CALLED INS/NO ANS
    ELSE IF    '${dropdownValue}'=='Phonecall'  
    ${expectedText}    Convert To String         RMLD TO INS CK# NO CHECK NUMBER/NO CHECK AMOUNT CALL CALLED INS/# UNAVAILABLE RTN TO FINANCIAL CONTROL/ CHECK/VOIDS/ PSA-E/
    Should Contain      ${actualText}    ${expectedText}
    Sleep    2s
    END  

Verify validation error message in buildremark page
    ${status}=    Run Keyword And Return Status    Alert Should Be Present     timeout=${sTimeout}
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${dd_errorMsg_field}        timeout=${sTimeout}
    ${actualText}    Get Text    ${dd_errorMsg_field}        
    ${expectedText}    Convert To String    Value cannot be blank
    Should Contain    ${actualText}    ${expectedText}
    Sleep    2s    