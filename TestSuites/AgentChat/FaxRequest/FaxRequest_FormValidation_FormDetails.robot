* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Open the AgentChat chatbot
Test Setup        Run Keyword    The AgentChat agent opens the fax form
Test Teardown     Run Keyword    The agent returns to the AgentChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify correct fields are displayed on the policyholder fax form - SSN default
    [Tags]    AgentChat     
    The AgentChat agent enters the details in the fax form when the SSN is selected    LEITZ    RUEBEN     9999      3123768809
    Verify the correct AgentChat fax form fields are displayed when the SSN radio button is selected
    Exit the AgentChat workflow
    
TC_02_Verify correct fields are displayed on the policyholder fax form - select policy number
    [Tags]    AgentChat    
    The AgentChat agent enters the details in the fax form when the policyNumber is selected     LEITZ    RUEBEN     A0189211      3123768809
    Verify the correct AgentChat fax form fields are displayed when the policyNumber radio button is selected
    Exit the AgentChat workflow

