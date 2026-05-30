* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Open the AgentChat chatbot
Test Teardown     The agent returns to the AgentChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify the busy message is displayed
    [Tags]    AgentChat
    Select the AgentChat Chat With Aflac Customer Care Specialist option
    Verify that the AgentChat live chat message is displayed lbl_AgentChat_everwellRepsBusy
