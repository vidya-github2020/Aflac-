* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Suite Setup       Open the EverwellChat chatbot
Test Setup        Run Keywords    Begin an EverwellChat Group Assistance flow
...               AND    Select the EverwellChat Group Assistance TPI option
Test Teardown     The agent returns to the EverwellChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Everwell Group Assistance Flow: Access - YES; TPI; Case - NO; Helpful - No; Connect to CCS - NO; Further Help - NO
    [Tags]    E-xxx    B-xxx
    Contact the EverwellChat case builder    No
    Was your issue resolved in the EverwellChat    No
    Was the information that the Everwell chat provided helpful in the EverwellChat    No
    Do you require further assistance in the EverwellChat    No

TC_02_Verify Everwell Group Assistance Flow: Access - YES; TPI; Case - NO; Helpful - No; Connect to CCS - NO; Further Help - YES
    [Tags]    E-xxx    B-xxx
    Contact the EverwellChat case builder    No
    Was your issue resolved in the EverwellChat    No
    Was the information that the Everwell chat provided helpful in the EverwellChat    No
    Do you require further assistance in the EverwellChat    Yes

TC_03_Verify Everwell Group Assistance Flow: Access - YES; TPI; Case - NO; Helpful - Yes; Further Help - NO
    [Tags]    E-xxx    B-xxx
    Contact the EverwellChat case builder    No
    Was your issue resolved in the EverwellChat    Yes
    Do you require further assistance in the EverwellChat    No   

TC_04_Verify Everwell Group Assistance Flow: Access - YES; TPI; Case - NO; Helpful - Yes; Further Help - YES
    [Tags]    E-xxx    B-xxx
    Contact the EverwellChat case builder    No
    Was your issue resolved in the EverwellChat    Yes
    Do you require further assistance in the EverwellChat    Yes

TC_05_Verify Everwell Group Assistance Flow: Access - YES; TPI; Case - YES; Connect to CCS - NO; Further Help - NO
    [Tags]    E-xxx    B-xxx
    Contact the EverwellChat case builder    Yes
    Connect to an EverwellChat CCS    No
    Do you require further assistance in the EverwellChat    No

TC_06_Verify Everwell Group Assistance Flow: Access - YES; TPI; Case - YES; Connect to CCS - NO; Further Help - YES
    [Tags]    E-xxx    B-xxx
    Contact the EverwellChat case builder    Yes
    Connect to an EverwellChat CCS    No
    Do you require further assistance in the EverwellChat    Yes

TC_07_Verify Everwell Group Assistance Flow: Access - YES; TPI; Case - YES; Connect to CCS - YES; CCS Not Available
    [Tags]    E-xxx    B-xxx     Ignore
    Contact the EverwellChat case builder    Yes
    Connect to an EverwellChat CCS    Yes

