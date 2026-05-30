*** Settings ***
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}PolicyHolderSmartScreen${/}SearchInteractionPage.robot
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}TestSuites${/}PolicyHolderChat${/}CcsChatKeywords.robot
*** Variables ***     
${results_FirstRow}                    xpath://tr[@class='oddRow cellCont' and @data-test-id='202107162256110885681-R1']
${results_c360view}                    xpath://h3[@class='layout-group-item-title' and text()='Summary']
${results_AccountName}                 xpath://tr[@data-test-id='202107162256110885681-R1' and @class='oddRow cellCont']//td[1]/div/span 
${results_TaxId_field}                 xpath://span[text()='Please enter the valid 9 digit Tax ID.']
${fld_tooltipText_TaxID}               xpath://i[contains(@title,'Please enter the valid 9 digit Tax ID')]  
${results_HeaderAccountName}           xpath://div[@class='cellIn ' and contains(text(),'Account Name')]
${results_AccountName_field}           xpath://div[@id='$PpyWorkPage$pEntities$pSearchStringAccountNameError']           
${searchresults_Status_field}          xpath://th[@id='a7' and @sortfield='.Status']  
${fld_informational_msg_City}          xpath://span[text()='Please enter Account Name or Address 1 & Zip Code'] 
${fld_informational_msg_State}         xpath://span[text()='Please enter Account Name or Address 1 & Zip Code']  
${results_InvoiceNumber_field}         xpath://span[text()='Please enter the valid 6 characters Invoice number']
${results_AccountNumber_field}         xpath://span[text()='Please enter valid Account (at least 5 characters) or Group Number (13 characters)']
${fld_tooltipText_AccountName}         xpath://i[contains(@title,'Please enter full Account Name.')]
${results_Phonecall_AccountName}       xpath:(//span[@data-test-id="2016072109335505834280"])[2]
${fld_tooltipText_AccountNumber}       xpath://i[contains(@title,'Please enter valid Account (at least 5 characters) or Group Number (13 characters)')] 
${fld_tooltipText_InvoiceNumber}       xpath://i[contains(@title,'Please enter the valid 6 characters Invoice number')]
${fld_informational_msg_Zipcode}       xpath://span[text()='Please enter Account Name or Address 1']
${fld_informational_msg_Address1}      xpath://span[text()='Please enter Zip Code.']  
${fld_informational_msg_AccountName}          xpath://span[contains(text(),'Please enter 1 more field from City, State, Zip Code.')]
${searchresults_Billingaddress_field}         xpath://div[contains(@class,'cellIn') and text()='Billing address']     
${searchresults_Locationaddress_field}        xpath://div[contains(@class,'cellIn') and text()='Location address']  

${fld_tooltipText_AccountNameCheckbox}                     xpath://i[contains(@title,'Select the check box only if Account Name is searched partially.')]
${fld_SSUser_SearchInteraction_Search_City}                xpath://input[@data-test-id='Address-SearchStringCity' and @id='9a8784a2']   
${fld_SSUser_SearchInteraction_Search_State}               xpath://Select[@data-test-id='Address-SearchStringState' and @id='ba48380c']    
${fld_SSUser_SearchInteraction_Search_TaxId}               xpath://input[@data-test-id='Account-SearchStringTaxID' and contains(@name,'TaxID')]
${fld_SSUser_SearchInteraction_Search_Address}             xpath://div[text()='Address'] 
${fld_SSUser_SearchInteraction_Search_Zipcode}             xpath://input[@data-test-id='Address-SearchStringZipCode' and @id='ee1ccb3b']
${fld_SSUser_SearchInteraction_Search_Address1}            xpath://input[@data-test-id='Address-SearchStringAddressLine1' and @id='f3494930'] 
${fld_SSUser_SearchInteraction_Search_StateOption}         xpath://select[@data-test-id='Address-SearchStringState']/option[text()='FL']
${fld_SSUser_SearchInteraction_Search_AccountName}         xpath://input[@data-test-id='Account-SearchStringAccountName' and @id='7bd0c124']   
${fld_SSUser_SearchInteraction_Search_InvoiceNumber}       xpath://input[@id='61a95b5e' and @data-test-id='Account-SearchStringInvoiceNumber']  
${fld_SSUser_SearchInteraction_Search_AccountNumber}              xpath://input[@data-test-id='Account-SearchStringAccountNumber' and @id='60ee210d']   
${fld_SSUser_SearchInteraction_Search_InvoiceNumber}              xpath://input[@id='61a95b5e' and @data-test-id='Account-SearchStringInvoiceNumber']  
${btn_policyHolderChat_Search_SearchInteraction_Reset}            xpath://div[contains(text(),'Reset')]        
${btn_policyHolderChat_Search_SearchInteraction_Address}          xpath://div[@class='header-left' and @title='Address']
${btn_policyHolderChat_Search_SearchInteraction_AccountSearch}    xpath://button[@data-test-id='SearchCustomer-Search']
${chkBox_policyHolderChat_SearchInteraction_Search_AccountName}    xpath://input[@data-test-id='Account-SearchStringFullAccountNameIncluded' and contains(@id,'1d280bfd')]

*** Keywords ***
Verify account search results Data
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${results_AccountName}    timeout=${sTimeout}
    ${actualText}    Get Text    ${results_AccountName}
    IF    '${actualText}'=='NYMAN JEWELERS' 
      ${expectedText}    Convert To String    NYMAN JEWELERS 
     ELSE IF    '${actualText}'=='SOUTH TEXAS AMATEUR FOOT'
      ${expectedText}    Convert To String     SOUTH TEXAS AMATEUR FOOT
     ELSE IF    '${actualText}'=='MONROE COUNTY PROFESSIONAL'   
      ${expectedText}    Convert To String     MONROE COUNTY PROFESSIONAL
    END
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s

Verify header text in search results data when search as account
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${results_HeaderAccountName}    timeout=${sTimeout}
    ${actualText}    Get Text    ${results_HeaderAccountName} 
    ${expectedText}    Convert To String        Account Name    
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s    

Verify the ${field} validation message in account search interaction page 
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${results_${field}_field}    timeout=${sTimeout}
    ${actualText}    Get Text    ${results_${field}_field}
    IF    '${field}'=='AccountNumber'
         ${expectedText}    Convert To String    Please enter valid Account (at least 5 characters) or Group Number (13 characters)
    ELSE IF    '${field}'=='AccountnameCheckbox'
        ${expectedText}    Convert To String    Please enter valid Account Name with at least first 3 characters.
    ELSE IF     '${field}'=='AccountName'
        ${expectedText}    Convert To String    Please enter valid Account Name with at least first 3 characters              
    ELSE IF     '${field}'=='TaxID'
        ${expectedText}    Convert To String    Please enter the valid 9 digit Tax ID.   
    ELSE IF     '${field}'=='InvoiceNumber'
        ${expectedText}    Convert To String    Please enter the valid 6 characters Invoice number
    
    END
    Should Contain    ${actualText}    ${expectedText}
    Sleep    2s

Select a value as '${DropDownSelection}' from the ${dropdownField} field on the ${screenName} screen in the ${section} section
    Wait Until Element Is Visible    ${fld_SSUser_${section}_${screenName}_${dropdownField}}    timeout=${sTimeout}
    Scroll button or label into view    ${fld_SSUser_${section}_${screenName}_${dropdownField}}    
    Click Element   ${fld_SSUser_${section}_${screenName}_${dropdownField}}
    Select From List By Value    ${fld_SSUser_${section}_${screenName}_${dropdownField}}    ${DropDownSelection}     
    Sleep    5s    

Verify the ${field} informational message in account search interaction page 
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_informational_msg_${field}}     timeout=${sTimeout}
    ${actualText}    Get Text    ${fld_informational_msg_${field}} 
    IF    '${field}'=='Address1'
         ${expectedText}    Convert To String    Please enter Zip Code. 
    ELSE IF     '${field}'=='City'
        ${expectedText}    Convert To String    Please enter Account Name or Address 1 & Zip Code              
    ELSE IF     '${field}'=='State'
        ${expectedText}    Convert To String    Please enter Account Name or Address 1 & Zip Code  
    ELSE IF     '${field}'=='ZipCode'
        ${expectedText}    Convert To String    Please enter Account Name or Address 1 
    ELSE IF     '${field}'=='AccountName'
        ${expectedText}    Convert To String    Please enter 1 more field from City, State, Zip Code. 
    END
    Should Contain    ${actualText}    ${expectedText}
    Sleep    2s

Verify the c360 screen details 
    Wait for pega masking icon to complete
    Select the PegaGadget1Ifr iFrame     
    Wait Until Element Is Visible    ${results_FirstRow}    timeout=${sTimeout}
    Double Click Element    ${results_FirstRow}
    Wait Until Element Is Visible    ${results_c360view}    timeout=${lTimeout}  
    ${actualText}    Get Text    ${results_c360view} 
    ${expectedText}    Convert To String        Summary  
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s 

Verify the tooltip text for ${field} field in account search interaction page
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_tooltiptext_${field}}    timeout=${mTimeout}
    Mouse Over    ${fld_tooltiptext_${field}}
    ${actualText}    Get Element Attribute    ${fld_tooltiptext_${field}}    title
    IF    '${field}'=='AccountName'
        ${expectedText}    Convert To String     Please enter full Account Name. 
    ELSE IF    '${field}'=='AccountnameCheckbox'
        ${expectedText}    Convert To String    Select the check box only if Account Name is searched partially. Enter at least first character.
    ELSE IF    '${field}'=='AccountNumber'
        ${expectedText}    Convert To String    Please enter valid Account (at least 5 characters) or Group Number (13 characters)
    ELSE IF    '${field}'=='TaxID'
        ${expectedText}    Convert To String    Please enter the valid 9 digit Tax ID  
    ELSE IF    '${field}'=='InvoiceNumber'
        ${expectedText}    Convert To String    Please enter the valid 6 characters Invoice number 
    ELSE IF    '${field}'=='Address1'
        ${expectedText}    Convert To String    Please enter valid Address 1. 
    ELSE IF    '${field}'=='Address1Checkbox'
        ${expectedText}    Convert To String    Select the check box only if Address 1 is searched partially.
    ELSE IF    '${field}'=='City'
        ${expectedText}    Convert To String    Please enter valid City. 
    ELSE IF    '${field}'=='State'
        ${expectedText}    Convert To String    Please enter valid State.
    ELSE IF    '${field}'=='Zipcode'
        ${expectedText}    Convert To String    Please enter the valid 5 digit Zip Code        
    END
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s  

Verify that the ${headername} header displayed in account search results screen
   Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${searchresults_${headername}_field}    timeout=${sTimeout}
    ${actualText}    Get Text    ${searchresults_${headername}_field}
    IF    '${headername}'=='AccountName'
     ${expectedText}    Convert To String        Account Name
    ELSE IF    '${headername}'=='AccountNumber'
     ${expectedText}    Convert To String        Account Number
    ELSE IF    '${headername}'=='Billingaddress'
     ${expectedText}    Convert To String        Billing address
    ELSE IF    '${headername}'=='Locationaddress' 
     ${expectedText}    Convert To String       Location address
    ELSE IF    '${headername}'=='PointofContact'  
      ${expectedText}    Convert To String       Point of Contact
    ELSE IF    '${headername}'=='TaxID'  
      ${expectedText}    Convert To String       Tax ID
    ELSE IF    '${headername}'=='Status'  
      ${expectedText}    Convert To String       Status
    END  
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s 

Verify the account search results Data as
    [Arguments]    ${text}
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${results_Phonecall_AccountName}    timeout=${sTimeout}
    ${actualText}    Get Text    ${results_Phonecall_AccountName}
    ${expectedText}    Convert To String    ${text}
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s






  
