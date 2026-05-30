*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot

*** Variables ***
${lbl_ConfirmationMsg}                                   xpath://div[@data-test-id='202004071016180736621']    
${radioBtn_policyHolderChat_Search_Company}              xpath:(//label[@class='rb_ rb_standard radioLabel'])[2]
${btn_policyHolderChat_General_SixCode_Exit}             xpath://div[text()='Exit']
${btn_policyHolderChat_General_SixCode_Close}            xpath://button[@data-test-id='20150216042226087912495' and contains(text(),'Close')]
${btn_policyHolderChat_General_SixCode_Submit}           xpath://button[text()='Submit']
${btn_policyHolderChat_addTask_General_SixCode}          xpath://a[@data-test-id='2014123005242607302524'  and contains(text(),'Six Code')]
${dd_policyHolderChat_General_SixCode_PolicyNumber}      xpath://select[@data-test-id='202211211751580184599']
${dd_policyHolderChat_General_SixCode_PolicyNumber1}     ${dd_policyHolderChat_General_SixCode_PolicyNumber}   
${dd_policyHolderChat_General_SixCode_PolicyNumber2}     ${dd_policyHolderChat_General_SixCode_PolicyNumber}  
 
${lbl_policyHolderChat_General_SixCode_SectionHeader}          xpath://div[@data-test-id='201802050138300957582']
${dd_policyHolderChat_General_SixCode_PolicyNumber_option}     xpath://option[contains(text(),'A0003642')]
${dd_policyHolderChat_General_SixCode_PolicyNumber1_option}    xpath://option[contains(text(),'A0764344')]
${dd_policyHolderChat_General_SixCode_PolicyNumber2_option}    xpath://option[contains(text(),'A0764344')] 

*** Keywords ***
Verify the confirmation message as '${message}'
    Wait Until Element Is Visible    ${lbl_ConfirmationMsg}     timeout=${lTimeout}
    ${actualText}    Get Text     ${lbl_ConfirmationMsg}    
    IF   	'${message}'=='Not on file'  	
    ${expectedText}    Convert To String        ERROR: POLICY NUMBER NOT ON FILE.
    ELSE IF   '${message}'=='Does not have a 6-code'
        ${expectedText}    Convert To String    ERROR: POLICY ENTERED DOES NOT HAVE A 6-CODE STATUS        
    END	     
        Should Be Equal    ${actualText}    ${expectedText}		 
        Sleep    2s   

