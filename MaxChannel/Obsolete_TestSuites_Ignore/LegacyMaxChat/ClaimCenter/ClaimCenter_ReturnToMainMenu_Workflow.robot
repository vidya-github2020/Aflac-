* Settings
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}CcsChatKeywords.robot
Suite Setup       Open the MaxChat chatbot
Test Setup        Begin a MaxChat Claim Center flow
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Claim Center Flow: Return To Main Menu
    [Tags]    Ignore    E-xxx    B-xxx
    Select the MaxChat Claim Center Return To Main Menu option

