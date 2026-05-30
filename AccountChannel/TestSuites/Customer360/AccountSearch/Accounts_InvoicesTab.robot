* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Login as an AgentChat AccountUser CCS user
Test Setup        Run Keywords    On the AgentChat open a new phone call interaction and search for Account AccountNumber AA129
...               AND    Enter the contact data information on the ccs search interaction page
...               AND    Select all checkboxes and continue to the Accounts c360 tabs
...               AND    The Account CCS selects the C360 Invoices tab
Test Teardown     Run Keywords    Select the Account CCS wrap up chat button
...               AND Select the Account CCS wrap up reason Other from the reason dropdown
...               AND Select the Account CCS wrap up submit button
Suite Teardown    Run Keywords    Log out from the Account ccs portal
...               AND    Close browser

* Variables

* Test Cases
TC_01_Verify the Accounts Invoices table is functioning
    [Tags]    E-62491    B-342540
    Check for Invoice Number in Invoice Table    885536
    