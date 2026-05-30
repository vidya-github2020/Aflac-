* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Suite Setup       Open the EverwellChat chatbot
Test Setup        Begin an EverwellChat Chat With A Care Specialist flow
Test Teardown     The agent returns to the EverwellChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Everwell Chat With A Care Specialist Flow: Connect to CCS - NO; Further Help - NO
    [Tags]    E-xxx    B-xxx
    Connect to an EverwellChat CCS    No
    Do you require further assistance in the EverwellChat    No

TC_02_Verify Everwell Chat With A Care Specialist Flow: Connect to CCS - NO; Further Help - YES
    [Tags]    E-xxx    B-xxx
    Connect to an EverwellChat CCS    No
    Do you require further assistance in the EverwellChat    Yes    