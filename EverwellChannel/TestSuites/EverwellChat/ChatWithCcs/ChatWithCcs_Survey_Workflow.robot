* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Test Setup        Run Keywords    skip
...               AND    Open the CCS portal Pega_SignIn_URL
...               AND    The EverwellChat CCS selects the Everwell work queue
...               AND    The EverwellChat CCS is made available
...               AND    Open the EverwellChat chatbot
...               AND    Begin an EverwellChat Chat With A Care Specialist flow
Test Teardown     Run Keywords    The agent returns to the EverwellChat live chat main menu
...               AND    Log out from the EverwellChat ccs portal
...               AND    Close all browsers

* Variables

* Test Cases
TC_01_Everwell User rejects the post chat survey
    [Tags]    E-58578    B-222741
    The EverwellChat CCS declines the live chat modal alert
    Check if you need to end the EverwellChat chat to ccs session and reject the post chat survey

TC_02_Everwell User completes the post chat survey
    [Tags]    E-58578    B-222741
    The EverwellChat CCS accepts the live chat modal alert
    Check if you need to end the EverwellChat chat to ccs session and accept the post chat survey

