*** Settings ***
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}AccountSearchInteractionPage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}ReprintEnvelopePage.robot
Suite Setup       Run Keywords    Login as a SmartScreenUser SSAccountOneUser CCS user
...               AND    Verify header text as Smart Screens 
...               AND    On the SmartScreen open a new indexing interaction
...               AND    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field  
...               AND    Enter the value as 'DEAN SELLERS INC' in the AccountName field on Search screen in the SearchInteraction section
...               AND    Click on the AccountSearch button on the SearchInteraction screen of the Search section
...               AND    Verify header text in search results data when search as account
...               AND    Verify the c360 screen details                                   
Test Setup        As a SmartScreen ccs add a new ReprintEnvelop task from the general section      
Test Teardown     Close current Intent on C360 screen 
Suite Teardown    Logout from the SmartScreen portal

*** Test Cases ***
TC_01_Verify ReprintEnvelop intent functionality task from the general section
    [Tags]    Smoke    B-314957
    Verify reprint envelop Address and close the reprint envelop window

TC_02_Verify exit button functionality is working fine for ReprintEnvelop task  
    [Tags]   B-314957
    Click on the exit button on the ReprintEnvelop screen of the general section
     