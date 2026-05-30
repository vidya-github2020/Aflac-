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
${tab_Account_Invoices}    xpath:(//div[@aria-label='Invoices'])[last()]
${tbl_Account_Accounts_sectionHeader}           xpath://h2[contains(@class,'header-title') and (text()='Invoices')]
${tbl_Account_Accounts_columnHeaders}           xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Account-Invoices')]//th[@role='columnheader']
${tbl_Account_Accounts_rows}                    xpath://table[contains(data-test-id="202105101556170651576")]
${btn_Account_Accounts_rowAuditCheckbox}        xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Account-Invoices')]//tr[@pl_index='tableRowNumber']//td//input
${tbl_Account_Accounts_rowHeaderFieldValues}    xpath://tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']//span
@{tbl_Account_Accounts_columnHeaderValues}      Owner    Employee #    SSN    Status
${inpt_Account_Invoices_phName}                 xpath://div[contains(@class,'content-item content-field item-1 remove-top-spacing remove-left-spacing flex')]/child::div[1]//input
${inpt_Account_Invoices_employeeNo}             xpath://div[contains(@class,'content-item content-field item-2 flex')]/child::div[1]//input
${inpt_Account_Invoices_ssn}                    xpath://div[contains(@class,'content-item content-field item-3 flex')]/child::div[1]//input
${lbl_Account_Invoices_otherResults}            xpath://label[contains(text(),'Other Results')]
${tbl_Account_Invoices_Result}                  xpath://tr[@pl_index='1']//td[@data-attribute-name='Owner']//span[contains(text(),'EDG')]
${tbl_Account_Invoices_InvoiceNo}               xpath://a[contains(@data-test-id,'2016072109335505834280') and contains(text(),'{}')]
${tbl_Account_Persons_Email_Address}            xpath://div//span[contains(text(),'{}')]



*** Keywords

Check for Invoice Number in Invoice Table
    [Arguments]    ${invoiceNumberInTable}
    ${invoiceNumberValue}    format string    ${tbl_Account_Invoices_InvoiceNo}    ${invoiceNumberInTable}
    Wait Until Element Is Visible    ${invoiceNumberValue}    timeout=${lTimeout}

Check for Email Address on Persons Table
    [Arguments]    ${emailAddress}
    ${emailAddressValue}    format string    ${tbl_Account_Persons_Email_Address}    ${emailAddress}
    Wait Until Element Is Visible    ${emailAddressValue}    timeout=${lTimeout}    