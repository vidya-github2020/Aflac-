*** Settings ***
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PageObjects_Resources.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SearchInteractionPage.robot
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot

*** Variables ***
${lbl_M1LetterGeneration_tableRow}               xpath://span[contains(text(),'A0003555')]
${lbl_M1LetterGeneration_tableRow}               xpath:(//div[contains(@class,'oflowDivM ')]/span[text()='A-Active'])[3]

${lbl_policyHolder_dialogContent_txt}            The request for M1 Letter already exists.      
${lbl_policyHolder_ConfirmationMsg_txt}          Letter Request Sent 
${lbl_M1LetterGeneration_columnHeader_1}         xpath://th[contains(@data-test-id,'202210291403140671978')]//div[contains(@class,'cellIn')][text()='Policy Number']
${lbl_M1LetterGeneration_columnHeader_2}         xpath://th[contains(@data-test-id,'202210291403140674161')]//div[contains(@class,'cellIn')][text()='Policy status']
${lbl_M1LetterGeneration_columnHeader_3}         xpath://th[contains(@data-test-id,'202210291403140674554')]//div[contains(@class,'cellIn')][text()='LOB'] 
${lbl_M1LetterGeneration_columnHeader_4}         xpath://th[contains(@data-test-id,'202210291403140675863')]//div[contains(@class,'cellIn')][text()='Billing Form']
${lbl_M1LetterGeneration_columnHeader_5}         xpath://th[contains(@data-test-id,'202211220533110804834')]//div[contains(@class,'cellIn')][text()='Group Status']
${lbl_M1LetterGeneration_columnHeader_6}         xpath://th[contains(@data-test-id,'202211220533110805509')]//div[contains(@class,'cellIn')][text()='Suspended Code']
${lbl_M1LetterGeneration_columnHeader_7}         xpath://th[contains(@data-test-id,'202211220533110806650')]//div[contains(@class,'cellIn')][text()='Special Flag']
${lbl_policyHolder_M1LetterGeneration_dialogContent}     xpath://span[contains(@class,'inspector-span')]//div[@id='RULE_KEY']//div[@id='RULE_KEY']//span[contains(@class,'inspector-span')]//li[contains(text(),'The request for M1 Letter already exists.')] 
${lbl_policyHolder_M1LetterGeneration_ConfirmationMsg}    xpath://div[contains(text(),'Letter Request Sent')]
${btn_policyHolderChat_General_M1LetterGeneration_Exit}             xpath://div[text()='Exit']
${btn_policyHolderChat_General_M1LetterGeneration_Close}            xpath://button[@data-test-id='20150216042226087912495' and contains(text(),'Close')]
${btn_policyHolderChat_General_M1LetterGeneration_Submit}           xpath://button[text()='Submit']
${btn_policyHolderChat_addTask_General_M1LetterGeneration}          xpath://a[@data-test-id='2014123005242607302524'  and contains(text(),'M1 Letter Generation')]
${lbl_policyHolderChat_General_M1LetterGeneration_SectionHeader}    xpath://div[@data-test-id='201802050138300957582']

*** Keywords ***
Verify that the M1 Letter Generation table is displayed on the M1LetterGeneration screen of the General section    
    Table Column Should Contain   ${lbl_M1LetterGeneration_columnHeader_1}    1    Policy Number	
    Table Column Should Contain   ${lbl_M1LetterGeneration_columnHeader_2}    1    Policy status	
    Table Column Should Contain   ${lbl_M1LetterGeneration_columnHeader_3}    1    LOB
    Table Column Should Contain   ${lbl_M1LetterGeneration_columnHeader_4}    1    Billing Form
    Table Column Should Contain   ${lbl_M1LetterGeneration_columnHeader_5}    1    Group Status
    Table Column Should Contain   ${lbl_M1LetterGeneration_columnHeader_6}    1    Suspended Code
    Table Column Should Contain   ${lbl_M1LetterGeneration_columnHeader_7}    1    Special Flag
    Table Row Should Contain    ${lbl_M1LetterGeneration_tableRow}    2    A0003555
    Table Row Should Contain    ${lbl_M1LetterGeneration_tableRow}    2    A-Active

Verify the M1LetterGeneration message is displayed on the M1LetterGeneration screen of the General section
  Click on the Submit button on the M1LetterGeneration screen of the General section
    
    ${present}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${lbl_policyHolder_M1LetterGeneration_ConfirmationMsg}    timeout=${sTimeout}
    IF    '${present}'=='True'
      Verify that the M1LetterGeneration ConfirmationMsg message is displayed
      Click on the Close button on the M1LetterGeneration screen of the General section        
    ELSE
      Verify that the M1LetterGeneration dialogContent message is displayed
      Click on the Exit button on the M1LetterGeneration screen of the General section 
    END
   
Verify that the M1LetterGeneration ${message} message is displayed
    Wait for pega masking icon to complete
    Sleep    2s
    Wait Until Element Is Visible    ${lbl_policyHolder_M1LetterGeneration_${message}}    timeout=${xxlTimeout}
    Scroll button or label into view    ${lbl_policyHolder_M1LetterGeneration_${message}}
    Wait for pega masking icon to complete
    ${actualText}    Get Text    ${lbl_policyHolder_M1LetterGeneration_${message}}
    ${expectedText}    Set Variable    ${lbl_policyHolder_${message}_txt} 
    Should Be Equal    ${actualText}    ${expectedText}         
    
    
