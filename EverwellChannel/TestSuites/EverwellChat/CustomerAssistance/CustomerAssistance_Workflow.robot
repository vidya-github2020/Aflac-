* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Suite Setup       Open the EverwellChat chatbot
Test Setup        Begin an EverwellChat Customer Assistance flow
Test Teardown     The agent returns to the EverwellChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Everwell Customer Assistance Flow: Escaltion Status - NO; Connect to CCS - NO; Further Help - NO
    [Tags]    E-xxx    B-xxx
    Select the EverwellChat inquiring about an escalation status option    No
    Connect to an EverwellChat CCS    No
    Do you require further assistance in the EverwellChat    No

TC_02_Verify Everwell Customer Assistance Flow: Escaltion Status - NO; Connect to CCS - NO; Further Help - YES
    [Tags]    E-xxx    B-xxx
    Select the EverwellChat inquiring about an escalation status option    No
    Connect to an EverwellChat CCS    No
    Do you require further assistance in the EverwellChat    Yes

TC_03_Verify Everwell Customer Assistance Flow: Escaltion Status - NO; Connect to CCS - YES; CCS Not Available
    [Tags]    E-xxx    B-xxx
    skip
    Select the EverwellChat inquiring about an escalation status option    No
    Connect to an EverwellChat CCS    Yes

TC_04_Verify Everwell Customer Assistance Flow: Escaltion Status - YES; Connect to CCS - NO; Further Help - NO
    [Tags]    E-xxx    B-xxx
    Select the EverwellChat inquiring about an escalation status option    Yes
    Connect to an EverwellChat CCS    No
    Do you require further assistance in the EverwellChat    No

TC_05_Verify Everwell Customer Assistance Flow: Escaltion Status - YES; Connect to CCS - NO; Further Help - YES
    [Tags]    E-xxx    B-xxx
    Select the EverwellChat inquiring about an escalation status option    Yes
    Connect to an EverwellChat CCS    No
    Do you require further assistance in the EverwellChat    Yes

TC_06_Verify Everwell Customer Assistance Flow: Escaltion Status - YES; Connect to CCS - YES; CCS Not Available
    [Tags]    E-xxx    B-xxx
    skip
    Select the EverwellChat inquiring about an escalation status option    Yes
    Connect to an EverwellChat CCS    Yes

