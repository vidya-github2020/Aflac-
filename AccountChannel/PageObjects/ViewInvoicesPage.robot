*** Settings ***
Resource    ${EXECDIR}${/}AccountChannel${/}Settings.resource

*** Variables ***
${btn_policyHolderChat_Search_SearchResult_ViewInvoices}      xpath://span[contains(text(),'View Invoices')]
${btn_policyHolderChat_Search_SearchResult_Action}            xpath://button[@data-test-id='202211031652150809121']
${tbl_policyHolderChat_Account_Invoice_Invoices}              xpath://a[@data-test-id='2016072109335505834280' and contains (@name,'Invoices(rowNumber)')]
${tbl_InvoiceDetails}                                         xpath://h2[contains(@class,'header-title') and contains(text(),'Invoice Details')]
${tbl_InvoiceBreakdown}                                       xpath://nobr/span[@class="heading_2"]
${btn_Invoice_OK}                                             xpath://button[@id="Submit"]

*** Keywords ***

Verify ${tableHeading} and ${tableHeading2} tables are displayed for selected Invoice
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${tbl_${tableHeading}}    timeout=${mTimeout}
    ${actualText}    Get Text    ${tbl_${tableHeading}}
    ${expectedText}    Convert To String    Invoice Details      
    Should Be Equal    ${actualText}    ${expectedText}
    Wait Until Element Is Visible    ${tbl_${tableHeading2}}    timeout=${sTimeout}
    ${actualText}    Get Text    ${tbl_${tableHeading2}}
    ${expectedText}    Convert To String    Invoice Breakdown      
    Should Contain    ${actualText}    ${expectedText}

Select Invoice OK button
    Wait Until Element Is Visible    ${btn_Invoice_OK}    timeout=${sTimeout}
    Scroll Element Into View    ${btn_Invoice_OK}    
    Click Element   ${btn_Invoice_OK}