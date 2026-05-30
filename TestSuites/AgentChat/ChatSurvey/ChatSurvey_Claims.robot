* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Test Setup        Run Keywords    Open the CCS portal Pega_SignIn_URL
...               AND    Log into the AgentChat CCS portal with Agent
...               AND    The AgentChat CCS joins the claims work queue
...               AND    The AgentChat CCS is made available
...               AND    Open the AgentChat chatbot
Test Teardown     Run Keywords    Log out from the AgentChat ccs portal
...               AND    Close all browsers

* Variables

* Test Cases
TC_01_User rejects the post chat survey - claims queue
    [Tags]    AgentChat
    Click the AgentChat button    opt_AgentChat_ChatWithCCS
    Select the AgentChat Claims option
    The AgentChat agent provides the user name and ssn number
    The AgentChat CCS Declines the live chat alert
    The AgentChat agent ends the live chat session and rejects the post chat survey

TC_02_User completes the post chat survey - claims queue
    [Tags]    AgentChat
    Click the AgentChat button    opt_AgentChat_ChatWithCCS
    Select the AgentChat Claims option
    The AgentChat agent provides the user name and ssn number
    The AgentChat CCS Accepts the live chat alert
    The AgentChat CCS ends the chat and wraps up the session
    The AgentChat agent accepts the post chat survey
    The AgentChat agent completes the post chat survey

