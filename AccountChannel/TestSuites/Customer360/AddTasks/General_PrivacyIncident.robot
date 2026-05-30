* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Login as an AgentChat AccountUserThree CCS user
...               AND    On the AgentChat open a new phone call interaction and search for Account AccountNumber SH403
...               AND    Enter the contact data information on the ccs search interaction page
...               AND    Select all checkboxes and continue to the Accounts c360 tabs
Test Setup        As a AgentChat ccs add a new customerInquiry task from the general section
Suite Teardown    Wrap up the AgentChat customerInquiry task for the general phone call interaction

* Variables

* Test Cases

TC_01_Verify exit button functionality is working fine for Account Privacy Incident
    [Tags]    B-297813    
    Select 'Claims' from the routingDestination field on the customerInquiry screen in the general section
    Select 'Privacy Incident' from the reason field on the customerInquiry screen in the general section
    Enter 'Test Privacy Incident' in the situationSolution field on customerInquiry screen in the general section
    Click on the exitTask button on the customerInquiry screen of the general section
    The ccs enters a comment to complete the cancel task process in the general section
    Click on the closeOnExitTask button on the customerInquiry screen of the general section