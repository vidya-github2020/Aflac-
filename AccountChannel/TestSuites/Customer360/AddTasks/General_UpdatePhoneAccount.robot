* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Login as an AgentChat AccountUserSix CCS user
...               AND    On the AgentChat open a new phone call interaction and search for Account AccountNumber AJQ15
...               AND    Enter the contact data information on the ccs search interaction page
...               AND    Select all checkboxes and continue to the Accounts c360 tabs
Test Setup        As a AgentChat ccs add a new UpdateAccountPhoneNumber task from the general section
Suite Teardown    Wrap up the AgentChat UpdatePhoneNumber task for the general phone call interaction

* Variables

* Test Cases

TC_01_Verify Update Account Phone functionality on the Account Update PhoneNumber Screen
    [Tags]    C360-19  
    Verify Phone# on the UpdatePhoneNumber screen in the general section
    Enter '(789) 007-8989' into the PhoneNumber field on UpdateAccountPhoneNumber screen in the general section
    Enter '(123) 321-1234' into the FaxNumber field on UpdateAccountPhoneNumber screen in the general section
    Click on the submit button on the updatePhoneNumber screen of the general section
    Verify that the updateAccountPhoneCompleted dialog content is displayed on the UpdateAccountPhoneNumber screen in the general section
    Click on the closeTask button on the updatePhoneNumber screen of the general section
    As a AgentChat ccs add a new UpdateAccountPhoneNumber task from the general section
    Verify Phone# on the UpdatePhoneNumber screen in the general section
    Enter '(789) 007-0000' into the PhoneNumber field on UpdateAccountPhoneNumber screen in the general section
    Enter '(123) 321-4321' into the FaxNumber field on UpdateAccountPhoneNumber screen in the general section
    Click on the submit button on the updatePhoneNumber screen of the general section
    Verify that the updateAccountPhoneCompleted dialog content is displayed on the UpdateAccountPhoneNumber screen in the general section
    Click on the closeTask button on the updatePhoneNumber screen of the general section