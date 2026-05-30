* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Suite Setup       Open the EverwellChat chatbot
Test Setup        Begin an EverwellChat Everwell Training Resources flow
Test Teardown     The agent returns to the EverwellChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Everwell Training Resources Flow: Helpful - NO; Connect to CCS - NO; Further Help - NO
    [Tags]    E-58580    B-215749
    Did the information resolve your issue in the EverwellChat    No
    Information not helpful do you want to connect with a EverwellChat CCS    No
    Do you require further assistance in the EverwellChat    No

TC_02_Verify Everwell Training Resources Flow: Helpful - NO; Connect to CCS - NO; Further Help - YES
    [Tags]    E-58580    B-215749
    Did the information resolve your issue in the EverwellChat    No
    Information not helpful do you want to connect with a EverwellChat CCS    No
    Do you require further assistance in the EverwellChat    Yes 

TC_03_Verify Everwell Training Resources Flow: Helpful - NO; Connect to CCS - YES
    [Tags]    E-58580    B-215749     Ignore
    Did the information resolve your issue in the EverwellChat    No
    Information not helpful do you want to connect with a EverwellChat CCS    Yes

TC_04_Verify Everwell Training Resources Flow: Helpful - YES; Further Help - NO
    [Tags]    E-58580    B-215749
    Did the information resolve your issue in the EverwellChat    Yes
    Do you require further assistance in the EverwellChat    No 

TC_05_Verify Everwell Training Resources Flow: Helpful - YES; Further Help - YES
    [Tags]    E-58580    B-215749
    Did the information resolve your issue in the EverwellChat    Yes
    Do you require further assistance in the EverwellChat    Yes

TC_06_Verify Everwell Training Resources Flow: Exit the flow
    [Tags]    E-58580    B-215749      Ignore
    The EverwellChat agent enters a live chat comment hello
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_unknownInputMenuMessage
    Begin an EverwellChat Everwell Training Resources flow

TC_07_Verify Everwell Training Resources Flow: Url Redirect
    [Tags]    E-58580    B-218684
    Verify that the URL opens in a new browser tab    ${link_clickHere}    ${url_everwellTrainingesource_${gEnvironment}}

