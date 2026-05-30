* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Suite Setup       Open the EverwellChat chatbot
Test Setup        Begin an EverwellChat Group Assistance flow
Test Teardown     The agent returns to the EverwellChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Everwell Group Assistance Flow: Access - YES; Escalation; Connect to CCS - NO; Further Help - NO
    [Tags]    E-xxx    B-xxx
    Select the EverwellChat Group Assistance Escalation option and connect to CCS    No
    Do you require further assistance in the EverwellChat    No

TC_02_Verify Everwell Group Assistance Flow: Access - YES; Escalation; Connect to CCS - NO; Further Help - YES
    [Tags]    E-xxx    B-xxx
    Select the EverwellChat Group Assistance Escalation option and connect to CCS    No
    Do you require further assistance in the EverwellChat    Yes

TC_03_Verify Everwell Group Assistance Flow: Access - YES; Escalation; Connect to CCS - YES; CCS Not Available
    [Tags]    E-xxx    B-xxx    Ignore
    Select the EverwellChat Group Assistance Escalation option and connect to CCS    Yes

