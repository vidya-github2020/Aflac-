*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot

*** Variables ***
${dd_policyHolderChat_Policy_PendedBusiness_PolicyNumber}    xpath://select[@data-test-id='20150113072103010458995']
${dd_policyHolderChat_Policy_PendedBusiness_PolicyNumber_option}    xpath://option[contains(text(),'Pending')]
${btn_policyHolderChat_Policy_Returns_Responses}    xpath://h2[text()='Responses']
${btn_policyHolderChat_Policy_Returns_Row1}    xpath://tr[@data-test-id='202008100725360708161-R1']/td/span
${lbl_policyHolderChat_Policy_Remarks}    xpath:(//span[@data-test-id='2016072109335505834280'])[2]
${SS_C360_Intent_wrapupBtn}    xpath://button[@data-test-id='2018080902461007071328']


*** Keywords ***
Verify return remarks row contains the data as ${RowData} in policy tab and responses page  
    Wait Until Element Is Visible    ${btn_policyHolderChat_Policy_Returns_Row1}    timeout=${sTimeout} 
    Table Row Should Contain    ${btn_policyHolderChat_Policy_Returns_Row1}    1    ${RowData}
    Wait Until Element Is Visible    ${lbl_policyHolderChat_Policy_Remarks}    timeout=${sTimeout}
    ${actualText}=    Get Text    ${lbl_policyHolderChat_Policy_Remarks}	
    IF        '${RowData}'=='17'
    ${expectedText}    Convert To String        FAX RECEIVED: PLEASE ALLOW ADDITIONAL TIME FOR HANDLING.
    ELSE    
    ${expectedText}    Convert To String        FAX RECEIVED: PLEASE ALLOW 48 HOURS FOR HANDLING.
    END
    Should Be Equal    ${actualText}    ${expectedText}		 
    Sleep    2s