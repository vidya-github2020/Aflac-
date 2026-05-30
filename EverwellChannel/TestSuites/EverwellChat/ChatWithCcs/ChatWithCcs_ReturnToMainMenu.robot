* Settings
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}EverwellChannel${/}TestSuites${/}EverwellChat${/}CcsChatKeywords.robot
Suite Setup       Open the EverwellChat chatbot
Test Teardown     The agent returns to the EverwellChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Everwell the user is return to the main menu and does not connect to a ccs - landing page flow
    [Tags]    E-65827    B-249344
    Select the EverwellChat Chat With A Care Specialist option
    Select the EverwellChat Yes option
    Select the EverwellChat CCS Return To Main Menu option

TC_02_Verify Everwell the user is return to the main menu and does not connect to a ccs - customer assistance flow
    [Tags]    E-65827    B-249344
    Begin an EverwellChat Customer Assistance flow
    Select the EverwellChat inquiring about an escalation status option    No
    Select the EverwellChat Yes option
    Select the EverwellChat CCS Return To Main Menu option

TC_03_Verify Everwell the user is return to the main menu and does not connect to a ccs - everwell assisstance flow
    [Tags]    E-65827    B-249344
    Begin an EverwellChat Everwell Assistance flow
    Select the EverwellChat Everwell Assistance Chat With Ccs option
    Select the EverwellChat Yes option
    Select the EverwellChat CCS Return To Main Menu option

TC_04_Verify Everwell the user is return to the main menu and does not connect to a ccs - everwell training resources flow
    [Tags]    E-65827    B-249344
    Begin an EverwellChat Everwell Training Resources flow
    Did the information resolve your issue in the EverwellChat    No
    Select the EverwellChat Yes option
    Select the EverwellChat CCS Return To Main Menu option

TC_05_Verify Everwell the user is return to the main menu and does not connect to a ccs - group assistance flow
    [Tags]    E-65827    B-249344
    Begin an EverwellChat Group Assistance flow
    Select the EverwellChat Group Assistance option and confirm no access to the account and connect to CCS    No
    Select the EverwellChat Yes option
    #Select the EverwellChat CCS Return To Main Menu option

