* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Login as an AgentChat Claims CCS user
Test Template     The CCS Joins A Queue And Skill Group
Suite Teardown    Run Keywords    Log out from the AgentChat ccs portal
...               AND    Close all browsers

* Variables

* Test Cases
TC_01_Verify you can add an agent to the claims queue    Claims    myWork
    [Tags]    AgentChat

TC_02_Verify you can add an agent to the general queue    General    myWork
    [Tags]    AgentChat

* Keywords
The CCS Joins A Queue And Skill Group
    [Arguments]    ${queueName}    ${pageName}
    Run Keyword    The AgentChat CCS joins the ${queueName} work queue
    Run Keyword    The AgentChat CCS opens the ${pageName} page

