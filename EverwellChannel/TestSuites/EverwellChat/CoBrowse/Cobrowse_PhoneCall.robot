* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Force Tags        Ignore
Suite Setup       Open the CCS portal Pega_SignIn_URL
Test Setup        Run Keywords    Log into the EverwellChat CCS portal with Everwell
...               AND    Open the EverwellChat chatbot
Test Teardown     Run Keywords    Enter contact data information on the ccs search interaction page
...               AND    The EverwellChat CCS wraps up the session
Suite Teardown    Run Keywords    Log out from the EverwellChat ccs portal
...               AND    Close all browsers

* Variables

* Test Cases
TC_01_Everwell User Opens a CoBrowse Session via a Phone Call session
    [Tags]    E-58578    B-269465
    Extract the Cobrowse Session ID from the LiveChat Screen
    Verify you can start a CoBrowse session via PhoneCall in the EverwellChat channel

