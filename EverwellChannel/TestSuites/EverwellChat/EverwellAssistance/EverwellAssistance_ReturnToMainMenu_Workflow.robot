* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Suite Setup       Open the EverwellChat chatbot
Test Setup        Run Keywords    Begin an EverwellChat Everwell Assistance flow
...               AND    Select the EverwellChat Everwell Assistance Return To Main Menu option
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Everwell Assistance Flow: Return To Main Menu optin
    [Tags]    E-xxx    B-xxx
    Verify that the EverwellChat live chat message is displayed lbl_EverwellChat_mainMenuMessage

