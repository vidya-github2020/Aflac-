*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot

*** Variables ***
## Pended Business Intent From AddTask menu###
${lbl_Policyholder_General_pendedBusiness_txt}                  The Destination Code and Remarks has been updated.
${btn_policyHolderChat_General_pendedBusiness_Exit}             xpath://div[text()='Exit']
${btn_policyHolderChat_General_pendedBusiness_Close}            xpath://button[@data-test-id='20150216042226087912495' and contains(text(),'Close')]
${btn_policyHolderChat_General_pendedBusiness_Submit}           xpath://button[text()='Submit']
${btn_policyHolderChat_addTask_General_pendedBusiness}          xpath://a[@data-test-id='2014123005242607302524'  and contains(text(),'Pended Business')]
${dd_policyHolderChat_General_pendedBusiness_PolicyNumber}        ${dd_policyHolderChat_Search_PendedBusiness_PolicyNumber}
${lbl_Policyholder_General_PendedBusiness_ConfirmationMsg}        xpath://div[@data-test-id='202004071016180736621']
${lbl_policyHolderChat_General_pendedBusiness_SectionHeader}      xpath://h2[@class='heading_2_dataLabelRead' and contains(text(),' Pended Business')]
${dd_policyHolderChat_General_pendedBusiness_DestinationCode}      ${dd_policyHolderChat_Search_PendedBusiness_DestinationCode}
${dd_policyHolderChat_General_pendedBusiness_PolicyNumber_option}     xpath://select[contains(@data-test-id,'202211211751580184599')]//option[contains(text(),'Pending')] 
${dd_policyHolderChat_General_pendedBusiness_DestinationCode_option}     xpath://select[contains(@data-test-id,'202211161833270419765')]//option[contains(@value,'dropDownOption')] 