* Settings
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}CcsChatKeywords.robot
Suite Setup       Open the MaxChat chatbot
Test Setup        Run Keywords    Begin a MaxChat Policy Changes flow
...               AND    Select the MaxChat policyChanges Chat With A Care Specialist option
Test Teardown     The agent returns to the MaxChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Policy Changes Flow: Chat With CCS option
    [Tags]    Ignore    E-xxx    B-xxx
    Would you like to chat with a MaxChat Policy Changes CCS
    Check if you need to end the MaxChat chat to ccs session

