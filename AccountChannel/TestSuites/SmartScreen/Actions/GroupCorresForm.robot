*** Settings ***
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}AccountSearchInteractionPage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}GroupCorresFormPage.robot
Suite Setup       Run Keywords    Login as a SmartScreenUser SSAccountOneUser CCS user
...               AND             Verify header text as Smart Screens 
Test Setup        Run Keywords    On the SmartScreen open a new indexing interaction
...               AND    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field  
...               AND    Enter the value as 'SOUTH TEXAS AMATEUR FOOT BALL' in the AccountName field on Search screen in the SearchInteraction section
...               AND    Click on the AccountSearch button on the SearchInteraction screen of the Search section
...               AND    Verify header text in search results data when search as account                           
#Test Teardown     Close current interaction 
Suite Teardown    Logout from the SmartScreen portal


*** Test Cases ***
TC_01_Verify Group Corres Form functionality task from the general section
  [Tags]    Smoke    B-317412
  Click on the Action button on the SearchResult screen of the Search section 
  Verify that on click of Group Corres Form option should display in PDF format 

TC_02_Verify Status field on Account search results screen  
  [Tags]    B-317412
  Verify that the Status header displayed in account search results screen
   


     