* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Login as an AgentChat AccountUserOne CCS user
Test Setup        Run Keywords    On the AgentChat open a new phone call interaction and search for Account AccountNumber AAR49
...               AND    Enter the contact data information on the ccs search interaction page
...               AND    Select all checkboxes and continue to the Accounts c360 tabs
Test Teardown     Run Keywords    Select the Account CCS wrap up chat button
...               AND Select the Account CCS wrap up reason Other from the reason dropdown
...               AND Select the Account CCS wrap up submit button
Suite Teardown    Run Keywords    Log out from the Account ccs portal
...               AND    Close browser

* Variables

* Test Cases

TC_01 Verify the Agent Hyperlink on the Persons table is working
    [Tags]    E-62491    B-300832
    Expand the 'Persons' section on the Summary tab in the AgentChat
    Check for Email Address on Persons Table    LAPSE_TEST@AFQUACK.COM
    Select the 'GE281' Persons Agent Writing Number then close the tab
