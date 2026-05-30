* Settings
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}CcsChatKeywords.robot
Suite Setup       Open the MaxChat chatbot
Test Setup        Begin a MaxChat Policy Information flow
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Policy Information Flow: Return To Main Menu
    [Tags]    Ignore    E-xxx    B-xxx
    Select the MaxChat Policy Info Return To Main Menu option

