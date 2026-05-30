* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Login as an AgentChat Manager CCS user
Suite Teardown    Run Keywords    Log out from the AgentChat ccs portal
...               AND    Close browser

* Variables

* Test Cases
TC_01_Verify Csat Data report table is displayed
    [Tags]    AgentChat
    The AgentChat CCS opens the chatReports page
    Verify that the CSAT Data table is displayed

