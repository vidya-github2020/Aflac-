*** Settings ***
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}AccountSearchInteractionPage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}ViewInvoicesPage.robot

Suite Setup       Run Keywords    Login as a SmartScreenUser SSAccountOneUser CCS user
...               AND             Verify header text as Smart Screens 
Test Setup        Run Keywords    On the SmartScreen open a new indexing interaction
...               AND    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field  
...               AND    Enter the value as 'LJR11' in the AccountNumber field on Search screen in the SearchInteraction section
...               AND    Click on the AccountSearch button on the SearchInteraction screen of the Search section
...               AND    Verify header text in search results data when search as account                           
Test Teardown     Close current interaction 
Suite Teardown    Run Keywords    Logout from the SmartScreen portal

*** Test Cases ***
TC_01_Verify Account Invoice Quick View
  [Tags]    B-331777    B-331753
  Click on the Action button on the SearchResult screen of the Search section
  Click on the ViewInvoices button on the SearchResult screen of the Search section 
  Select row 1 in the Invoices table on the Invoice screen in the Account section
  Verify InvoiceDetails and InvoiceBreakdown tables are displayed for selected Invoice
  Select Invoice OK button 

   


     