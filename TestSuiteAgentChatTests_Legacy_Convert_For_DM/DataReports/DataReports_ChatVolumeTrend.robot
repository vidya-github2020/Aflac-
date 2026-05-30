* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    skip
...               AND    Login as an AgentChat Manager CCS user
Suite Teardown    Run Keywords    skip
...               AND    Log out from the AgentChat ccs portal
...               AND    Close browser

* Variables

* Test Cases
TC_01_Verify Chat Volume Trend By Queue report table is displayed
    [Tags]    E-38710    B-152479    B-171099    B-236194
    The AgentChat CCS opens the chatReports page
    Update the date fields for the AgentChat chat volume trend report
    Verify that the Chat Volume Trend table is displayed

