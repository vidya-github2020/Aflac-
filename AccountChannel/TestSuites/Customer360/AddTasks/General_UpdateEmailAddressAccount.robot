* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Login as an AgentChat AccountUserFive CCS user
...               AND    On the AgentChat open a new phone call interaction and search for Account AccountNumber AAY47
...               AND    Enter the contact data information on the ccs search interaction page
...               AND    Select all checkboxes and continue to the Accounts c360 tabs
Test Setup        As a AgentChat ccs add a new UpdateAccountEmailAddress task from the general section
Suite Teardown    Wrap up the AgentChat UpdateEmailAddress task for the general phone call interaction

* Variables

* Test Cases

TC_01_Verify Update Account EmailAddress functionality on the Account Update EmailAddress Screen
    [Tags]    C360-19    
    Verify Email on the UpdateEmailAddress screen in the general section
    Enter 'PhilipScof@Noodle.bar' into the EmailAddress field on UpdateAccountEmailAddress screen in the general section
    Click on the submit button on the updateAccountEmailAddress screen of the general section
    Verify that the updateAccountEmailCompleted dialog content is displayed on the UpdateAccountEmailAddress screen in the general section
    Click on the closeTask button on the updateAccountEmailAddress screen of the general section
    As a AgentChat ccs add a new UpdateAccountEmailAddress task from the general section
    Verify Email on the UpdateEmailAddress screen in the general section
    Enter 'HarryStyles@Sushi.bar' into the EmailAddress field on UpdateAccountEmailAddress screen in the general section
    Click on the submit button on the updateAccountEmailAddress screen of the general section
    Verify that the updateAccountEmailCompleted dialog content is displayed on the UpdateAccountEmailAddress screen in the general section
    Click on the closeTask button on the updateAccountEmailAddress screen of the general section