* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}Customer360_HeaderPage.robot
Suite Setup       Login as an AgentChat AccountUser CCS user
Test Teardown     The AgentChat CCS wraps up the session with interaction reason Other
Suite Teardown    Run Keywords    Log out from the AgentChat ccs portal
...               AND    Close browser

* Variables

* Test Cases
TC_01_Verify phone call interaction and search for an Account
    [Tags]    E-65753    B-230337
    Select the AgentChat New button
    Select the AgentChat Phone call button
    On the AgentChat ccs search interaction page select the Account option from the SearchAs field
    Verify that the Account Search fields are displayed
    Enter the contact data information on the ccs search interaction page
    Search for account number AA443 and verify the AccountSearchResults table is displyed

TC_02_Verify the header details for the Account number AAA20
    [Tags]    E-1959    C360-1965
    On the AgentChat open a new phone call interaction and search for Account AccountNumber AAA20
    Enter the contact data information on the ccs search interaction page
    Select all checkboxes and continue to the Accounts c360 tabs
    Verify the Account details are displayed in the C360 summary header    

    