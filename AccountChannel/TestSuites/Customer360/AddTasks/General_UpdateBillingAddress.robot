* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Login as an AgentChat AccountUserFour CCS user
...               AND    On the AgentChat open a new phone call interaction and search for Account AccountNumber NL826
...               AND    Enter the contact data information on the ccs search interaction page
...               AND    Select all checkboxes and continue to the Accounts c360 tabs
Test Setup        As a AgentChat ccs add a new UpdateAccountBillingAddress task from the general section
Suite Teardown    Wrap up the AgentChat UpdateBillingAddress task for the general phone call interaction

* Variables

* Test Cases

TC_01_Verify Update Account BillingAddress functionality on the Account Update BillingAddress Screen
    [Tags]    C360-19    
    Verify BillingLocation on the UpdateAccountBillingAddress screen in the general section
    Click the AgentChat button    btn_agentChat_ManualVROD      
    Enter '5824 Central Florida Pkwy' into the BillingAddress1 field on UpdateAccountBillingAddress screen in the general section
    Enter 'Orlando' into the BillingCity field on UpdateAccountBillingAddress screen in the general section
    Enter '32821' into the BillingZip field on UpdateAccountBillingAddress screen in the general section
    Select 'FL' from the BillingState field on the UpdateAccountBillingAddress screen in the general section
    Click on the submit button on the updateAccountBillingAddress screen of the general section
    Verify that the updateAccountBillingAddressCompleted dialog content is displayed on the UpdateAccountBillingAddress screen in the general section
    Click on the closeTask button on the updateAccountBillingAddress screen of the general section