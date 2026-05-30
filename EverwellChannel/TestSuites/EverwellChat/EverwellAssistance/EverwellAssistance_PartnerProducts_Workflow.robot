* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Suite Setup       Open the EverwellChat chatbot
Test Setup        Run Keywords    Begin an EverwellChat Everwell Assistance flow
...               AND    Select the EverwellChat Everwell Assistance Partner Products option
Test Teardown     The agent returns to the EverwellChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Everwell Assistance Flow: Partner Products option; Connect to CCS - NO; Further Help - NO
    [Tags]    E-xxx    B-xxx
    Connect to an EverwellChat CCS    No
    Do you require further assistance in the EverwellChat    No

TC_02_Verify Everwell Assistance Flow: Partner Products option; Connect to CCS - NO; Further Help - YES
    [Tags]    E-xxx    B-xxx
    Connect to an EverwellChat CCS    No
    Do you require further assistance in the EverwellChat    Yes
    
TC_03_Verify Everwell Assistance Flow: Partner Products option; Connect to CCS - YES; CCS Not Available
    [Tags]    E-xxx    B-xxx    Ignore
    Connect to an EverwellChat CCS    Yes

