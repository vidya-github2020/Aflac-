* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Open the CCS portal Pega_SignIn_URL
...               AND    Log into the AgentChat CCS portal with Agent
...               AND    The AgentChat CCS joins the Agent work queue
...               AND    Open the AgentChat chatbot
Test Teardown     Run Keyword    The agent returns to the AgentChat live chat main menu
Suite Teardown    Run Keywords    The AgentChat agent ends the live chat session and rejects the post chat survey
...               AND    Log out from the AgentChat ccs portal
...               AND    Close all browsers

* Variables

* Test Cases
TC_01_Verify user is not added to the everwell queue - ccs unavailable
    [Tags]    E-41984    B-168113
    ...    E-45954    B-177271
    ...    E-51856    B-198669
    ...    E-65826    B-252177
    Verify that the AgentChat CCS is busy for the everwell queue

TC_02_Verify user is added to the everwell queue - ccs available
    [Tags]    E-41984    B-168113
    ...    E-45954    B-177271
    ...    E-51856    B-198669
    ...    E-65826    B-252177
    The AgentChat CCS is made available
    The AgentChat CCS declines the live chat modal alert for the everwell queue

