* Settings
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}CcsChatKeywords.robot
Suite Setup       Open the MaxChat chatbot
Test Teardown     The agent returns to the MaxChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify the user is return to the main menu and does not connect to a ccs - landing page flow
    [Tags]    Ignore    E-65827    B-249344
    Select the MaxChat LandingPage Chat With A Care Specialist option
    Select the MaxChat CCS Return To Main Menu option

TC_02_Verify the user is return to the main menu and does not connect to a ccs - policy info flow
    [Tags]    Ignore    E-65827    B-249344
    Begin a MaxChat Policy Information flow
    Select the MaxChat Policy Info Chat With A Care Specialist option
    Select the MaxChat CCS Return To Main Menu option

TC_03_Verify the user is return to the main menu and does not connect to a ccs - policy changes flow
    [Tags]    Ignore    E-65827    B-249344
    Begin a MaxChat Policy Changes flow
    Select the MaxChat Policy Changes Chat With A Care Specialist option
    Select the MaxChat CCS Return To Main Menu option

TC_04_Verify the user is return to the main menu and does not connect to a ccs - claim center flow
    [Tags]    Ignore    E-65827    B-249344
    Begin a MaxChat Claim Center flow
    Select the MaxChat Claim Center Chat With A Care Specialist option
    Select the MaxChat CCS Return To Main Menu option

