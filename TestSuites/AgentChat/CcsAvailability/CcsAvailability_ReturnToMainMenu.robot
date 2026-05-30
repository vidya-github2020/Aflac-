* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Open the CCS portal Pega_SignIn_URL
...               AND    The AgentChat CCS selects the Claims work queue
...               AND    The AgentChat CCS is made available
...               AND    Open the AgentChat chatbot
...               AND    Select the AgentChat Chat With Aflac Customer Care Specialist option
#Begin an AgentChat CCS chat    claimsQuery
#...               AND    Check if the agent live chat cookie has loaded
#...               AND    Select an AgentChat are you assisting option
#...               AND    The AgentChat agent provides a help comment     
Suite Teardown    Run Keywords    Log out from the AgentChat ccs portal
...               AND    Close all browsers

* Variables

* Test Cases
TC_01_Verify the user is return to the main menu and does not connect to a ccs
    [Tags]    AgentChat
    Select the AgentChat CCS Return To Main Menu option
    
