* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    skip
...               AND    Open the AgentChat chatbot
Test Setup        Select the AgentChat Chat With Aflac Customer Care Specialist option
Suite Teardown    Run Keywords    skip
...               AND    Close browser

* Variables

* Test Cases
TC_01_Verify return to main menu is executed after selecting chat to Customer Care Specialist
    [Tags]    AgentChat
    Select the AgentChat Return to Main Menu option
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_mainMenuMessage
