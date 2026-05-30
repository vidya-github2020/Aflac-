* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Open the live chat page
...               AND    Enter AgentChat Login Details
...               AND    Select the AgentChat Chat With Us button
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify the ToggleAlerts displays in chat
    [Tags]    AgentChat
    Select the AgentChat other actions icon as a agent
    Select the AgentChat toggle alerts option as a agent
