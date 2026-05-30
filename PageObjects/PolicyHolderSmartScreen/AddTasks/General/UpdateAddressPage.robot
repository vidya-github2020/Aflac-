*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SearchInteractionPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
 
*** Variables ***
${fld_policyHolderChat_general_exitComment}                     xpath://textarea[contains(@data-test-id,'2016050409042601071560')]
${fld_SSUser_general_PHUpdateHomeAddress_reason}                xpath://select[@data-test-id='202210190539250531851']
${fld_policyHolder_general_PHUpdateHomeAddress_City}            xpath://input[@data-test-id='20200306184601059860135' and contains(@name,'City')]
${fld_policyHolder_general_PHUpdateHomeAddress_State}           xpath://select[@id='1e4bea1c' and contains(@name,'State')]
${btn_policyHolderChat_addTask_general_UpdateAddress}           xpath://a[@data-test-id='2014123005242607302524'  and text()='Update Address']
${fld_policyHolder_general_PHUpdateHomeAddress_ZipCode}         xpath://input[@data-test-id='20200306184601059962385' and contains(@name,'ZipCode')]
${btn_policyHolderChat_general_PHUpdateHomeAddress_exit}        xpath://div[@class='pzbtn-mid'and text()='Exit']
${btn_policyHolderChat_general_PHUpdateHomeAddress_close}       xpath://button[text()='Close'] 
${btn_policyHolderChat_general_PHUpdateHomeAddress_Reset}       xpath://button[contains(text(),'Reset')]
${btn_policyHolderChat_general_PHUpdateHomeAddress_submit}      xpath://button[@data-test-id='2015021306370007097332' and text()='Submit'] 
${fld_policyHolder_general_PHUpdateHomeAddress_StateOption}     xpath://select[@id='1e4bea1c' and contains(@name,'State')]/option[text()='dropDownOption']   
${lbl_policyHolderChat_general_UpdateAddress_sectionHeader}     xpath://div[@data-test-id='201802050138300957582']
${fld_policyHolder_general_PHUpdateHomeAddress_Addressline1}    xpath://input[@data-test-id='20200306184601059858676' and contains(@name,'AddressLine1')]
${fld_policyHolder_general_PHUpdateHomeAddress_Addressline2}    xpath://input[@data-test-id='20200306184601059859428' and contains(@name,'AddressLine2')] 

${chkBox_policyHolderChat_general_PHUpdateHomeAddress_AddressUpdate}         xpath://input[@data-test-id='2020030915031408655149'and @type='checkbox']  
${btn_policyHolderChat_general_PHUpdateHomeAddress_closeOnExitTask}          xpath://button[@data-test-id='2015021306370007097332' and text()='Close']   
                                                       
*** Keywords ***
Update Policyholder Address Fields In PHUpdateHomeAddress Screen
    [Arguments]    ${Address1}    ${Address2}    ${City}    ${StateCode}    ${ZipCode}      
    Wait for pega masking icon to complete
    Sleep    5s    
    Wait Until Element Is Visible    ${fld_policyHolder_general_PHUpdateHomeAddress_Addressline1}    timeout=${mTimeout}    
    Clear Element Text    ${fld_policyHolder_general_PHUpdateHomeAddress_Addressline1}
    Sleep    5s    
    Press Keys  ${fld_policyHolder_general_PHUpdateHomeAddress_Addressline1}    ${Address1}    
    Press Keys    None    TAB
    Sleep    2s
    Input Text    ${fld_policyHolder_general_PHUpdateHomeAddress_Addressline2}    ${Address2}    clear=True
    Press Keys    None    TAB
    Sleep    2s
    Clear Element Text    ${fld_policyHolder_general_PHUpdateHomeAddress_City}
    Press Keys    ${fld_policyHolder_general_PHUpdateHomeAddress_City}    ${City}    
    Press Keys    None    TAB
    Sleep    2s
    Click Element   ${fld_policyHolder_general_PHUpdateHomeAddress_State}
    ${selectStateOption}=    Replace String    ${fld_policyHolder_general_PHUpdateHomeAddress_StateOption}    dropDownOption    ${StateCode}
    Sleep    2s
    Wait Until Element Is Visible    ${selectStateOption}    timeout=${xxlTimeout}
    Click Element    ${selectStateOption}        
    Sleep    2s
    Input Text    ${fld_policyHolder_general_PHUpdateHomeAddress_ZipCode}    ${ZipCode}    clear=True
    Sleep    2s
   


