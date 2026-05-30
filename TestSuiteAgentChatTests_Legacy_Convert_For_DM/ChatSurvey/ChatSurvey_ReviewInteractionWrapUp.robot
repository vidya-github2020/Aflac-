* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Open the CCS portal Pega_SignIn_URL
Suite Teardown    Run Keywords    Log out from the AgentChat ccs portal
...               AND    Close all browsers

* Variables

* Test Cases
TC_01_Verify end chat interaction wrap up messages
    [Tags]    E-41984    B-152476
    ...    E-45656    B-174342    B-177332
    ...    E-51856    B-198669
    Log into the AgentChat CCS portal with Agent
    The AgentChat CCS joins the Claims work queue
    The AgentChat CCS is made available
    Open the AgentChat chatbot
    Click the AgentChat button    opt_AgentChat_ChatWithCCS
    Select the AgentChat Claims option
    The AgentChat agent provides the user name and ssn number
    The AgentChat CCS Accepts the live chat alert
    The AgentChat CCS ends the claims chat and selects the claims wrap up reason from the Agent list to end the session
    The AgentChat agent rejects the post chat survey

