###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}AgentChannel${/}Settings.resource

* Variables
${tab_Account_Members}    xpath://div[@aria-label='Members']
${tbl_Account_Accounts_sectionHeader}           xpath://h2[contains(@class,'header-title') and (text()='Members')]
${tbl_Account_Accounts_columnHeaders}           xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Account-Members')]//th[@role='columnheader']
${tbl_Account_Accounts_rows}                    xpath://table[contains(data-test-id="202105101556170651576")]
${btn_Account_Accounts_rowAuditCheckbox}        xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Account-Members')]//tr[@pl_index='tableRowNumber']//td//input
${tbl_Account_Accounts_rowHeaderFieldValues}    xpath://tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']//span
@{tbl_Account_Accounts_columnHeaderValues}      Owner    Employee #    SSN    Status
${inpt_Account_Members_phName}    xpath://div[contains(@class,'content-item content-field item-1 remove-top-spacing remove-left-spacing flex')]/child::div[1]//input
${inpt_Account_Members_employeeNo}    xpath://div[contains(@class,'content-item content-field item-2 flex')]/child::div[1]//input
${inpt_Account_Members_ssn}    xpath://div[contains(@class,'field-item dataValueWrite')]/span/input[contains(@name,'SSN')]
${lbl_Account_Members_otherResults}    xpath://label[contains(text(),'Other Results')]
${tbl_Account_Members_Result}    xpath://tr[@pl_index='1']//td[@data-attribute-name='Policy holder']//span[contains(text(),'BODA')]



*** Keywords

Apply Policyholder name filter to the Account Members table
    [Arguments]    ${PolicyHolderName}
    Wait for page loading icon to complete
    Select the PegaGadget1Ifr iFrame
    Wait until element is visible    ${inpt_Account_Members_phName}
    Input Text    ${inpt_Account_Members_phName}    ${PolicyHolderName}    clear=True
    Press Keys    None    TAB
    Wait until element is visible    ${tbl_Account_Members_Result}     timeout=${mTimeout}
    
Apply Employee Number filter to the Account Members table
    [Arguments]    ${PolicyHolderEmployeeNumber} 
    Wait for page loading icon to complete
    Select the PegaGadget1Ifr iFrame
    Wait until element is visible    ${inpt_Account_Members_employeeNo}
    Input Text    ${inpt_Account_Members_employeeNo}    ${PolicyHolderEmployeeNumber}    clear=True
    Press Keys    None    TAB
    Wait until element is visible    ${tbl_Account_Members_Result}     timeout=${mTimeout}

Apply SSN filter to the Account Members table
    [Arguments]    ${PolicyHolderSSN} 
    Wait for page loading icon to complete
    Select the PegaGadget1Ifr iFrame
    Wait until element is visible    ${inpt_Account_Members_ssn}    timeout=${lTimeout}
    Input Text    ${inpt_Account_Members_ssn}    ${PolicyHolderSSN}    clear=True
    Press Keys    None    TAB
    Wait until element is visible    ${tbl_Account_Members_Result}     timeout=${lTimeout}

Clear Filters on Members Table
    Wait for page loading icon to complete
    Select the PegaGadget1Ifr iFrame
    Wait until element is visible    ${inpt_Account_Members_phName}    timeout=${lTimeout}
    Clear Element Text    ${inpt_Account_Members_phName}
    sleep    2s
    Wait until element is visible    ${inpt_Account_Members_employeeNo}    timeout=${lTimeout}
    Clear Element Text    ${inpt_Account_Members_employeeNo}
    sleep    2s
    Wait until element is visible    ${inpt_Account_Members_ssn}    timeout=${lTimeout}
    Clear Element Text    ${inpt_Account_Members_ssn}
    sleep    2s
    Wait for page loading icon to complete

