*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SearchInteractionPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
 
*** Variables ***

${lbl_Policyholder_claim_buildremark_RemarksMsg}    xpath://span[@data-test-id="202211081010310900658" and contains(text(), '{}')]
${BuildRemarksID}                                   xpath://span[@data-test-id="20160210082412023111408" and @class="standard"]                
${lbl_BuildRemarkCloseTab}                          xpath://span[@aria-label="Close Tab"]

*** Keywords ***

Get Build Remark ID
  ${BuildRemarks}    Get Text    ${BuildRemarksID}
  ${BuildRemarksNumber}=    Strip String    ${BuildRemarks}    characters=() 
  Set Global Variable    ${BuildRemarksNumber}

Verify OperatorID displayed in the Remarks section
    [Arguments]    ${OperatorID}
    Select the PegaGadget1Ifr iFrame
    ${operatorIDValue}    format string    ${lbl_Policyholder_claim_buildremark_RemarksMsg}    ${OperatorID}
    Wait Until Element Is Visible    ${operatorIDValue}    timeout=${mTimeout}  
    sleep    2s

Close Build Remark Tab
    Unselect Frame
    Click Element    ${lbl_BuildRemarkCloseTab}