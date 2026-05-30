* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Open the CCS portal Pega_SignIn_URL
Suite Teardown    Run Keywords    Log out from the AgentChat ccs portal
...               AND    Close all browsers

* Variables

* Test Cases
TC_01_User completes the post chat survey - General queue
    [Tags]    AgentChat
    Log into the AgentChat CCS portal with general
    The AgentChat CCS joins the general work queue
    The AgentChat CCS is made available
    Open the AgentChat chatbot
    Click the AgentChat button    opt_AgentChat_ChatWithCCS
    Select the AgentChat New Business option
    The AgentChat agent provides the writing number
    The AgentChat agent provides the users name
    Select an AgentChat are you assisting option
    The AgentChat agent enters a reason comment
    Select the AgentChat Connect Me With An Aflac Representative option
    The AgentChat CCS Accepts the live chat alert
    The AgentChat CCS ends the chat and wraps up the session
    The AgentChat agent accepts the post chat survey
    The AgentChat agent completes the post chat survey

