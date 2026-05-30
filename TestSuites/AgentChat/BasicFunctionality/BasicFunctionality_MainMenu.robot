* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Open the AgentChat chatbot
Test Teardown     The agent returns to the AgentChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_02_Verify action is initiated when Check the status of Faxed Documentation menu option is selected
    [Tags]    AgentChat
    The AgentChat agent begins a fax inquiry

TC_03_Verify action is initiated when Claim Status menu option is selected
    [Tags]    AgentChat
    Select the AgentChat Claim Status option
    #Verify that the URL opens in a new browser tab    ${opt_CheckStatusOfClaim}    ${url_claimStatus}

TC_04_Verify action is initiated when Compensation menu option is selected
    [Tags]    AgentChat
    Select the AgentChat Compensation RPM option
    #Verify that the URL opens in a new browser tab    ${opt_AgentChat_Compensation}    ${url_compensation}
    
TC_05_Verify action is initiated when Pended Business menu option is selected
    [Tags]    AgentChat
    Select the AgentChat Pended Business option
    #Verify that the URL opens in a new browser tab    ${opt_AgentChat_GetMyPendingBusiness}    ${url_pendedBusiness}

TC_06_Verify action is initiated when Statements menu option is selected
    [Tags]    AgentChat
    Select the AgentChat Statements option
    #Verify that the URL opens in a new browser tab    ${opt_AgentChat_Statements}    ${url_statements}

TC_07_Verify action is initiated when Wellness Reporting menu option is selected
    [Tags]    AgentChat
    The AgentChat agent opens the Wellness Report

TC_08_Verify action is initiated when Chat with CCS menu option is selected
    [Tags]    AgentChat
    skip
    Begin an AgentChat CCS chat    generalQuery