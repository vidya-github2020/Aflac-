* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Suite Setup       Open the EverwellChat chatbot
Test Setup        Run Keywords    Begin an EverwellChat Everwell Assistance flow
...               AND    Select the EverwellChat Everwell Assistance Advantage Support option
Test Teardown     The agent returns to the EverwellChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Everwell Assistance Flow: Advantage Support option; Resloved - NO; Connect to CCS - NO; Further Help - NO
    [Tags]    Ignore    E-xxx    B-xxx
    Did the Everwell Advantage Support information resolve your issue in the EverwellChat    No
    Was the information that the Everwell chat provided helpful in the EverwellChat    No
    Do you require further assistance in the EverwellChat    No

TC_02_Verify Everwell Assistance Flow: Advantage Support option; Resloved - NO; Connect to CCS - NO; Further Help - YES
    [Tags]    Ignore    E-xxx    B-xxx
    Did the Everwell Advantage Support information resolve your issue in the EverwellChat    No
    Was the information that the Everwell chat provided helpful in the EverwellChat    No
    Do you require further assistance in the EverwellChat    Yes

TC_03_Verify Everwell Assistance Flow: Advantage Support option; Resloved - NO; Connect to CCS - YES; CCS Not Available
    [Tags]    Ignore    E-xxx    B-xxx
    Did the Everwell Advantage Support information resolve your issue in the EverwellChat    No
    Information not helpful do you want to connect with a EverwellChat CCS    Yes
    Check if you need to end the EverwellChat chat to ccs session

TC_04_Verify Everwell Assistance Flow: Advantage Support option; Resloved - YES; Further Help - NO
    [Tags]    Ignore    E-xxx    B-xxx
    Did the Everwell Advantage Support information resolve your issue in the EverwellChat    Yes
    Do you require further assistance in the EverwellChat    No

TC_05_Verify Everwell Assistance Flow: Advantage Support option; Resloved - YES; Further Help - YES
    [Tags]    Ignore    E-xxx    B-xxx
    Did the Everwell Advantage Support information resolve your issue in the EverwellChat    Yes
    Do you require further assistance in the EverwellChat    Yes

