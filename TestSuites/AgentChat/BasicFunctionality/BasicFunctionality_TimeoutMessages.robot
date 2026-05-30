* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChats${/}CcsChatKeywords.robot
Force Tags        Ignore    #TimeoutMsgTests
Suite Setup       An agent connects to a Claims CCS in the AgentChat channel
Suite Teardown    Run Keywords    The AgentChat agent rejects the post chat survey
...               AND    The AgentChat ccs wraps up the session
...               AND    Log out from the AgentChat ccs portal
...               AND    Close all browsers

* Variables

* Test Cases
TC_01_Verify the live chat idol timout message - agent initial warning
    [Tags]    E-62500    B-227986
    skip
    Sleep    305s
    Verify that the AgentChat live chat displays the timout message lbl_idolMsg_agentInitialWarning

TC_02_Verify the live chat idol timout message - ccs initial warning
    [Tags]    E-62500    B-230409
    skip
    Verify that the AgentChat ccs portal displays the timout message lbl_idolMsg_ccsInitialWarning

TC_03_Verify the live chat idol timout message - agent final warning
    [Tags]    E-62500    B-227986
    skip
    Sleep    125s
    Verify that the AgentChat live chat displays the timout message lbl_idolMsg_agentFinalWarning

TC_04_Verify the live chat idol timout message - ccs final warning
    [Tags]    E-62500    B-230409
    skip
    Verify that the AgentChat ccs portal displays the timout message lbl_idolMsg_ccsFinalWarning


