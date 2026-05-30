* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Suite Setup       Open the EverwellChat chatbot
Test Setup        Run Keywords    Begin an EverwellChat Everwell Assistance flow
...               AND    Select the EverwellChat Everwell Assistance Login and Registration option
Test Teardown     The agent returns to the EverwellChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Everwell Assistance Flow: Login And Registration option; Redirect - NO; Agent; Connect to CCS - NO; Further Help - NO
    [Tags]    E-xxx    B-xxx
    Redirect to the EverwellChat Login and Registration resources    No
    Select the EverwellChat Everwell Assistance Login And Registration Agent option
    Was the information that the Everwell chat provided helpful in the EverwellChat    No
    Do you require further assistance in the EverwellChat    No

TC_02_Verify Everwell Assistance Flow: Login And Registration option; Redirect - NO; Agent; Connect to CCS - NO; Further Help - YES
    [Tags]    E-xxx    B-xxx
    Redirect to the EverwellChat Login and Registration resources    No
    Select the EverwellChat Everwell Assistance Login And Registration Agent option
    Was the information that the Everwell chat provided helpful in the EverwellChat    No
    Do you require further assistance in the EverwellChat    Yes

TC_03_Verify Everwell Assistance Flow: Login And Registration option; Redirect - NO; Agent; Connect to CCS - YES
    [Tags]    E-xxx    B-xxx
    skip
    Redirect to the EverwellChat Login and Registration resources    No
    Select the EverwellChat Everwell Assistance Login And Registration Agent option
    Information not helpful do you want to connect with a EverwellChat CCS    Yes
    Check if you need to end the EverwellChat chat to ccs session

TC_04_Verify Everwell Assistance Flow: Login And Registration option; Redirect - NO; Admin; Connect to CCS - NO; Further Help - NO
    [Tags]    E-xxx    B-xxx
    Redirect to the EverwellChat Login and Registration resources    No
    Select the EverwellChat Everwell Assistance Login And Registration Admin option
    Was the information that the Everwell chat provided helpful in the EverwellChat    No
    Do you require further assistance in the EverwellChat    No

TC_05_Verify Everwell Assistance Flow: Login And Registration option; Redirect - NO; Admin; Connect to CCS - NO; Further Help - YES
    [Tags]    E-xxx    B-xxx
    Redirect to the EverwellChat Login and Registration resources    No
    Select the EverwellChat Everwell Assistance Login And Registration Admin option
    Was the information that the Everwell chat provided helpful in the EverwellChat    No
    Do you require further assistance in the EverwellChat    Yes

TC_06_Verify Everwell Assistance Flow: Login And Registration option; Redirect - NO; Admin; Connect to CCS - YES
    [Tags]    E-xxx    B-xxx
    skip
    Redirect to the EverwellChat Login and Registration resources    No
    Select the EverwellChat Everwell Assistance Login And Registration Admin option
    Information not helpful do you want to connect with a EverwellChat CCS    Yes
    Check if you need to end the EverwellChat chat to ccs session

TC_07_Verify Everwell Assistance Flow: Login And Registration option; Redirect - NO; Employee; Connect to CCS - NO; Further Help - NO
    [Tags]    E-xxx    B-xxx
    Redirect to the EverwellChat Login and Registration resources    No
    Select the EverwellChat Everwell Assistance Login And Registration Employee option
    Was the information that the Everwell chat provided helpful in the EverwellChat    No
    Do you require further assistance in the EverwellChat    No

TC_08_Verify Everwell Assistance Flow: Login And Registration option; Redirect - NO; Employee; Connect to CCS - NO; Further Help - YES
    [Tags]    E-xxx    B-xxx
    Redirect to the EverwellChat Login and Registration resources    No
    Select the EverwellChat Everwell Assistance Login And Registration Employee option
    Was the information that the Everwell chat provided helpful in the EverwellChat    No
    Do you require further assistance in the EverwellChat    Yes

TC_09_Verify Everwell Assistance Flow: Login And Registration option; Redirect - NO; Employee; Connect to CCS - YES
    [Tags]    E-xxx    B-xxx
    skip
    Redirect to the EverwellChat Login and Registration resources    No
    Select the EverwellChat Everwell Assistance Login And Registration Employee option
    Information not helpful do you want to connect with a EverwellChat CCS    Yes
    Check if you need to end the EverwellChat chat to ccs session

TC_10_Verify Everwell Assistance Flow: Login And Registration option; Redirect - YES; Resolved - NO
    [Tags]    E-xxx    B-xxx
    Redirect to the EverwellChat Login and Registration resources    Yes
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_everwellAssistance_LandR_assistance
    Was your issue resolved in the EverwellChat    No
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_everwellAssistance_LandR_typeOfAssistance

TC_11_Verify Everwell Assistance Flow: Login And Registration option; Redirect - YES; Resolved - YES; Further Help - NO
    [Tags]    E-xxx    B-xxx
    Redirect to the EverwellChat Login and Registration resources    Yes
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_everwellAssistance_LandR_assistance
    Was your issue resolved in the EverwellChat    Yes
    Do you require further assistance in the EverwellChat    No

TC_12_Verify Everwell Assistance Flow: Login And Registration option; Redirect - YES; Resolved - YES; Further Help - YES
    [Tags]    E-xxx    B-xxx
    Redirect to the EverwellChat Login and Registration resources    Yes
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_everwellAssistance_LandR_assistance
    Was your issue resolved in the EverwellChat    Yes
    Do you require further assistance in the EverwellChat    Yes

