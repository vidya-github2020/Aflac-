* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Open the AgentChat chatbot
Test Setup        Run Keywords    The AgentChat agent opens the fax form
...               AND    The AgentChat agent selects the cancel fax form button
Test Teardown     The agent returns to the AgentChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Ask for further assisstance
    [Tags]    E-40864    B-171828
    Is there something else I can assist you with in the AgentChat    Yes

TC_02_Reject post fax interaction survey
    [Tags]    E-40864    B-171828
    Is there something else I can assist you with in the AgentChat    No
    The AgentChat agent rejects the post chat survey

TC_03_Complete post fax interaction survey
    [Tags]    E-40864    B-171828
    Is there something else I can assist you with in the AgentChat    No
    The AgentChat agent accepts the post chat survey
    The AgentChat agent completes the interaction survey

