* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Login as an AgentChat AccountUserOne CCS user
...               AND    On the AgentChat open a new phone call interaction and search for Account AccountNumber LJR11
...               AND    Enter the contact data information on the ccs search interaction page
...               AND    Select all checkboxes and continue to the Accounts c360 tabs
...               AND    The Account CCS selects the C360 Members tab
Suite Teardown    Run Keywords    Select the Account CCS wrap up chat button
...               AND    Select the Account CCS wrap up reason Other from the reason dropdown
...               AND    Select the Account CCS wrap up submit button
...               AND    Log out from the Account ccs portal
...               AND    Close browser


* Variables

* Test Cases
TC_01_Verify the Accounts Members table PolicyHolderName filters are functioning
    [Tags]    E-62491    B-287634
    Apply Policyholder name filter to the Account Members table    BODA
    Clear Filters on Members Table 
    
TC_02_Verify the Accounts Members table EmployeeNumber filters are functioning
    [Tags]    E-62491    B-287634
    Apply Employee Number filter to the Account Members table    0583288554
    Clear Filters on Members Table 

TC_03_Verify the Accounts Members table SSN filters are functioning
    [Tags]    E-62491    B-287634
    Apply SSN filter to the Account Members table    791-90-5682
    Clear Filters on Members Table 

