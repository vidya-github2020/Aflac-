* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Open the CCS portal Pega_SignIn_URL
...               AND    Log into the AgentChat CCS portal with Agent
Test Teardown     Run Keywords    The agent returns to the AgentChat live chat main menu
...               AND    Verify that the AgentChat live chat modal is not displayed
Suite Teardown    Run Keywords    Log out from the AgentChat ccs portal
...               AND    Close all browsers

* Variables

* Test Cases
TC_01_Verify general agent does not receive claims queries
    [Tags]    AgentChat
    The AgentChat CCS joins the General work queue
    The AgentChat CCS is made available
    The agent opens a AgentChat live chat session
    Verify that the AgentChat CCS is busy for the claims queue

TC_02_Verify claims agent does not receive general queries
    [Tags]    AgentChat
    The AgentChat CCS joins the Claims work queue
    The AgentChat CCS joins the General work queue
    Verify that the AgentChat CCS is busy for the general queue

