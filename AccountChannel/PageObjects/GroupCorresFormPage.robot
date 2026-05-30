*** Settings ***
Resource    ${EXECDIR}${/}AccountChannel${/}PageObjects${/}ReprintEnvelopePage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
*** Variables ***
${lbl_Account_GroupCorresForm_txt}                               Please review the below details before generating Group Correspondence Form                           
${lbl_Account_general_GroupCorresForm_txt}                       The Group Correspondence Form generated
${lbl_Account_GroupCorresForm_InformationalMsg}                  xpath://h3[contains(text(),'Please review the below details before generating ')]
${btn_policyHolderChat_Search_SearchResult_Action}               xpath://button[@data-test-id='202211031652150809121']
${btn_policyHolderChat_general_GroupCorresForm_exit}             ${btn_policyHolderChat_general_ReprintEnvelop_exit}    
${btn_policyHolderChat_general_GroupCorresForm_close}            xpath://button[@data-test-id='20150216042226087912495']
${btn_policyHolderChat_general_GroupCorresForm_submit}           xpath://button[@data-test-id='2015021306370007097332']                
${lbl_Account_general_GroupCorresForm_ConfirmationMsg}           xpath://div[@data-test-id='202004071016180736621'] 
${btn_policyHolderChat_addTask_general_GroupCorresForm}          xpath://a[@data-test-id='2014123005242607302524' and contains(text(),'Group Corres Form')]
${btn_policyHolderChat_Search_SearchResult_GroupCorresForm}      xpath://span[contains(text(),'Group Corres Form')]
${lbl_policyHolderChat_general_GroupCorresForm_sectionHeader}    xpath://h2[@class='heading_2_dataLabelRead' and contains(text(),'Group')]

*** Keywords ***
Verify that on click of Group Corres Form option should display in PDF format 
    Sleep    1s
    Wait Until Element Is Visible    ${btn_policyHolderChat_Search_SearchResult_GroupCorresForm}    timeout=${xxlTimeout}
    Click element    ${btn_policyHolderChat_Search_SearchResult_GroupCorresForm}
    Switch window    NEW
    Sleep    10s
    Close window
    Switch window    MAIN
    Sleep    1s

Verify that ${ConfirmationMessage} confirmationmessage is displayed on the ${taskOption} screen of the ${taskSection} section
    Wait for pega masking icon to complete
    Sleep    2s
    Wait Until Element Is Visible    ${lbl_Account_${taskSection}_${taskOption}_ConfirmationMsg}    timeout=${mTimeout}
    Scroll button or label into view    ${lbl_Account_${taskSection}_${taskOption}_ConfirmationMsg}
    Wait for pega masking icon to complete
    ${actualText}    Get Text    ${lbl_Account_${taskSection}_${taskOption}_ConfirmationMsg}

    IF    '${ConfirmationMessage}'=='GroupCorresForm'
        ${expectedText}    Set Variable    ${lbl_Account_${taskSection}_${taskOption}_txt}
    ELSE IF    '${ConfirmationMessage}'=='ReprintEnvelope'
        ${expectedText}    Set Variable    ${lbl_Account_${taskSection}_${taskOption}_txt}
    ELSE IF    '${ConfirmationMessage}'=='UpdateLocationAddress'      
         ${expectedText}    Set Variable    ${lbl_Account_${taskSection}_${taskOption}_txt}
    ELSE IF    '${ConfirmationMessage}'=='UpdatePhoneNumber'      
         ${expectedText}    Set Variable    ${lbl_Account_${taskSection}_${taskOption}_txt}     
    END
    Should Be Equal    ${actualText}    ${expectedText}

Verify that the informational message displayed on the Group Corres Form screen
   Wait for pega masking icon to complete
    Sleep    2s
    Wait Until Element Is Visible    ${lbl_Account_GroupCorresForm_InformationalMsg}    timeout=${mTimeout}
    ${actualText}    Get Text    ${lbl_Account_GroupCorresForm_InformationalMsg}
    ${expectedText}    Set Variable    ${lbl_Account_GroupCorresForm_txt}
    Should Be Equal    ${actualText}    ${expectedText}