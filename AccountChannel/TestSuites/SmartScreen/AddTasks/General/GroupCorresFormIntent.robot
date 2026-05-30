*** Settings ***
Resource          ${EXECDIR}${/}PolicyHolderChannel${/}PageObjects${/}Customer360${/}c360_CommonTasksPage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}GroupCorresFormPage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}ReprintEnvelopePage.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}AccountSearchInteractionPage.robot
Suite Setup       Run Keywords    Login as a SmartScreenUser SSAccountTwoUser CCS user
...               AND    Verify header text as Smart Screens 
...               AND    On the SmartScreen open a new indexing interaction
...               AND    On the SmartScreen ccs search interaction page select the Account option from the SearchAsField field  
...               AND    Enter the value as '351833877' in the Tax Id field on Search screen in the SearchInteraction section
...               AND    Click on the AccountSearch button on the SearchInteraction screen of the Search section
...               AND    Verify header text in search results data when search as account
...               AND    Verify the c360 screen details                                  
Test Setup        As a SmartScreen ccs add a new GroupCorresForm task from the general section
Test Teardown     Close current Intent on C360 screen      
Suite Teardown    Logout from the SmartScreen portal   

* Test Cases**
TC_01_Verify Group Corres Form intent functionality task from the general section
  [Tags]    Smoke    B-318615
  Verify that the informational message displayed on the Group Corres Form screen
  Click on the submit button on the GroupCorresForm screen of the general section
  Verify that GroupCorresForm confirmationmessage is displayed on the GroupCorresForm screen of the general section
  Click on the close button on the GroupCorresForm screen of the general section

TC_02_Verify exit button functionality is working fine for Group Corres Form intent
  [Tags]    B-318615
  Verify that the informational message displayed on the Group Corres Form screen
  Click on the exit button on the GroupCorresForm screen of the general section

TC_03_Verify submit button functionality is working fine for Group Corres Form intent
  [Tags]    B-318615
  Verify that the informational message displayed on the Group Corres Form screen
  Click on the submit button on the GroupCorresForm screen of the general section   