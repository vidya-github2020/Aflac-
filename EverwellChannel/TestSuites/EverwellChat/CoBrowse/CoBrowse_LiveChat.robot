* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Force Tags        Ignore
Suite Setup       Open the CCS portal Pega_SignIn_URL
Test Setup        Run Keywords    The EverwellChat CCS selects the Everwell work queue    
...               AND    The EverwellChat CCS is made available
...               AND    Open the EverwellChat chatbot
...               AND    Begin an EverwellChat Chat With A Care Specialist flow
...               AND    The EverwellChat CCS accepts the live chat modal alert
Test Teardown     Run Keywords    The EverwellChat agent ends the page share
...               AND    The EverwellChat agent ends the live chat session and rejects the post chat survey
...               AND    The EverwellChat CCS wraps up the session
Suite Teardown    Run Keywords    Log out from the EverwellChat ccs portal
...               AND    Close all browsers

* Variables

* Test Cases
TC_01_Everwell User Opens a CoBrowse Session via a Live Chat session
    [Tags]    E-58578    B-269465
    Verify you can start a CoBrowse session via LiveChat in the EverwellChat channel
    
