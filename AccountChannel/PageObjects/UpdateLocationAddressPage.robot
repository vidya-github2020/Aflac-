*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SearchInteractionPage.robot

*** Variables ***
${btn_addTasks}                                                          xpath://button[@data-test-id='2014111401004903823658' and  @title='Add task']
${btn_addTask_addTasks}                                                  xpath://button[@data-test-id='20150527044600067319555' and text()='Add tasks']
${fld_policyHolderChat_general_exitComment}                              xpath://textarea[contains(@data-test-id,'2016050409042601071560')]
${fld_Account_general_LocationAddress_ZipCode}                           xpath:(//input[@data-test-id='20200306184601059860135' and contains(@name,'ZipCode')])[2]
${fld_Account_general_UpdateBilling/LocationAddress_City}                xpath://input[@data-test-id='20200306184601059860135' and contains(@name,'City')]
${fld_Account_general_UpdateBilling/LocationAddress_State}               xpath://select[@id='0dfb1801' and contains(@name,'State')]
${fld_SSUser_general_UpdateBilling/LocationAddress_reason}               xpath://select[@data-test-id='202210190539250531851']
${fld_Account_general_UpdateBilling/LocationAddress_ZipCode}             xpath://input[@data-test-id='20200306184601059860135' and contains(@name,'ZipCode')]   
${fld_Account_general_UpdateBilling/LocationAddress_StateOption}         xpath://select[@id='0dfb1801' and contains(@name,'State')]/option[text()='dropDownOption']   
${fld_Account_general_UpdateBilling/LocationAddress_AddressLine1}        xpath://input[@data-test-id='20200306184601059962385' and contains(@name,'AddressLine1')]
${fld_Account_general_UpdateBilling/LocationAddress_AddressLine2}        xpath://input[@data-test-id='20200306184601059962385' and contains(@name,'AddressLine2')] 
${btn_policyHolderChat_general_UpdateBilling/LocationAddress_exit}       xpath://div[@class='pzbtn-mid'and text()='Exit']
${btn_policyHolderChat_general_UpdateBilling/LocationAddress_close}      xpath://button[text()='Close'] 
${btn_policyHolderChat_general_UpdateBilling/LocationAddress_reset}          xpath://a[@data-test-id='202110131921320083837' and  text()='Reset']
${btn_policyHolderChat_general_UpdateBilling/LocationAddress_submit}         xpath://button[@data-test-id='2015021306370007097332' and text()='Submit'] 
${btn_policyHolderChat_addTask_general_UpdateBilling/LocationAddress}        xpath://a[@data-test-id='2014123005242607302524' and text()='Update Billing/Location Address']
${fld_Account_general_UpdateBilling/LocationAddress_PayrollContact}          xpath://span[@data-test-id='202302012323310412746-Label']
${fld_Account_general_UpdateBilling/LocationAddress_PrincipleContact}        xpath://span[@data-test-id='2023020123233104102-Label']
${lbl_policyHolderChat_general_UpdateBilling/LocationAddress_sectionHeader}           xpath://h2[@class='heading_2_dataLabelRead']
${btn_policyHolderChat_general_UpdateBilling/LocationAddress_closeOnExitTask}         xpath://button[@data-test-id='2015021306370007097332' and text()='Close']
${chkBox_policyHolderChat_general_UpdateBilling/LocationAddress_BillingAddressUpdate}       xpath://input[@data-test-id='2020030915031408655149'and @type='checkbox']                                                           


*** Keywords ***

Update Account Address Fields In UpdateBilling/LocationAddress Screen
    [Arguments]    ${Address1}    ${Address2}    ${City}    ${StateCode}    ${ZipCode}
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_Account_general_UpdateBilling/LocationAddress_AddressLine1}    timeout=${mTimeout}    
    Clear Element Text    ${fld_Account_general_UpdateBilling/LocationAddress_AddressLine1}
    sleep    2s
    Input Text    ${fld_Account_general_UpdateBilling/LocationAddress_AddressLine1}    ${Address1}    clear=True 
    sleep    2s
    Press Keys    None    TAB
    Sleep    2s
    Input Text    ${fld_Account_general_UpdateBilling/LocationAddress_AddressLine2}    ${Address2}    clear=True
    Press Keys    None    TAB
    Sleep    2s
    Clear Element Text    ${fld_Account_general_UpdateBilling/LocationAddress_City}
    sleep    2s
    Input Text    ${fld_Account_general_UpdateBilling/LocationAddress_City}    ${City}    clear=True
    Press Keys    None    TAB
    Sleep    2s
    Click Element   ${fld_Account_general_UpdateBilling/LocationAddress_State}
    ${selectStateOption}=    Replace String    ${fld_Account_general_UpdateBilling/LocationAddress_StateOption}    dropDownOption    ${StateCode}
    Sleep    2s
    Wait Until Element Is Visible    ${selectStateOption}    timeout=${xxlTimeout}
    Click Element    ${selectStateOption}        
    Sleep    2s
    Input Text    ${fld_Account_general_UpdateBilling/LocationAddress_ZipCode}    ${ZipCode}    clear=True
    Sleep    2s
   
Verify the field on UpdateLocationAddressPage 
    [Arguments]    ${text}
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_Account_general_UpdateBilling/LocationAddress_${text}}    timeout=${mTimeout}
    ${actualText}    Get Text    ${fld_Account_general_UpdateBilling/LocationAddress_${text}}
    ${expectedText}    Convert To String    ${text}
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s

Update Account Address Zipcode Field In LocationAddress Screen
    [Arguments]     ${ZipCode}
    Wait for pega masking icon to complete
    Sleep    5s    
    Wait Until Element Is Visible    ${fld_Account_general_LocationAddress_ZipCode}    timeout=${mTimeout}    
    Input Text    ${fld_Account_general_LocationAddress_ZipCode}    ${ZipCode}    clear=True 
    Sleep    2s