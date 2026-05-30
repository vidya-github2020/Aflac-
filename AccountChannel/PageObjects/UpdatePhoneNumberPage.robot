*** Settings ***
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}PageObjects_Resources.robot
*** Variables ***
${fld_errorMsg}                                                    (//span[@id='PegaRULESErrorFlag'])[1]
${fld_errorMsg2}                                                    (//span[@id='PegaRULESErrorFlag'])[2]
${lbl_Account_general_updatePhoneNumber_txt}                       Phone Number updated successfully
${fld_SSUser_general_updatePhoneNumber_phoneNumber}                xpath://input[@data-test-id='202203031053450971973']    
${btn_policyHolderChat_general_updatePhoneNumber_exit}             ${btn_policyHolderChat_general_ReprintEnvelop_exit}    
${btn_policyHolderChat_general_updatePhoneNumber_close}            ${btn_policyHolderChat_general_ReprintEnvelop_close}   
${btn_policyHolderChat_general_updatePhoneNumber_reset}            xpath://button[@data-test-id='20200309165727048430241' and  text()='Reset']
${btn_policyHolderChat_general_updatePhoneNumber_submit}           ${btn_policyHolderChat_general_ReprintEnvelop_submit} 
${lbl_Account_general_updatePhoneNumber_ConfirmationMsg}           xpath://div[contains(@class,'flex-nowrap dl_vt_center')] 
${btn_policyHolderChat_addTask_general_updatePhoneNumber}          xpath://a[@data-test-id='2014123005242607302524' and contains(text(),'Update Phone Number')]
${lbl_policyHolderChat_general_updatePhoneNumber_sectionHeader}              xpath://label[@class='heading_2_dataLabelRead' and contains(text(),' Update')]
${chkBox_policyHolderChat_general_updatePhoneNumber_PhoneNumberUpdate}       xpath://input[@data-test-id='2020030915031408655149'and @type='checkbox']

*** Keywords ***
Input the value as '${inputValue}' in the ${fieldName} field on ${screenName} screen in the ${section} section
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_SSUser_${section}_${screenName}_${fieldName}}    timeout=${sTimeout}
    Clear Element Text     ${fld_SSUser_${section}_${screenName}_${fieldName}}
    Sleep    2s    
    ${randomString}=    Generate Random String    2    [NUMBERS]
    Press Keys      ${fld_SSUser_${section}_${screenName}_${fieldName}}    ${inputValue}${randomString}         
    Press Keys    None    TAB
    Sleep    2s

Verify the validation error message in updatePhoneNumber screen
    Wait Until Element Is Visible    ${fld_errorMsg}     timeout=${sTimeout}
    ${actualText}    Get Text   ${fld_errorMsg}
    ${expectedText}    Convert To String   Phone number must be 10 digits  
    Should Be Equal    ${actualText}    ${expectedText}   
    Wait Until Element Is Visible    ${fld_errorMsg2}     timeout=${sTimeout}
    ${actualText1}    Get Text   ${fld_errorMsg2}
    ${expectedText1}    Convert To String   Please enter a valid Phone Number  
    Should Be Equal    ${actualText1}    ${expectedText1} 