* Settings
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}CcsChatKeywords.robot
Suite Setup       Open the MaxChat chatbot
Test Setup        Run Keywords    Begin a MaxChat Policy Information flow
...               AND    Select the MaxChat Policy Info Setup Direct Deposit option
Test Teardown     The agent returns to the MaxChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Policy Information Flow: Setup Direct Deposit; Helpful - No; CCS - No
    [Tags]    Ignore    E-xxx    B-xxx
    Was the information helpful in answering your question in the MaxChat    No
    Would you like to connect to a MaxChat ccs for further assistance    No

TC_02_Verify Policy Information Flow: Setup Direct Deposit; Helpful - No; CCS - Yes; Survey - No
    [Tags]    Ignore    E-xxx    B-xxx
    Was the information helpful in answering your question in the MaxChat    No
    Would you like to connect to a MaxChat ccs for further assistance    Yes
    Check if you are required to connect to the MaxChat ccs
    Would you like to complete the MaxChat survey    No

TC_03_Verify Policy Information Flow: Setup Direct Deposit: Helpful - No; CCS - Yes; Survey - Yes
    [Tags]    Ignore    E-xxx    B-xxx
    Was the information helpful in answering your question in the MaxChat    No
    Would you like to connect to a MaxChat ccs for further assistance    Yes
    Check if you are required to connect to the MaxChat ccs
    Would you like to complete the MaxChat survey    Yes
    
TC_04_Verify Policy Information Flow: Setup Direct Deposit; Helpful - Yes; Assitance - No
    [Tags]    Ignore    E-xxx    B-xxx
    Was the information helpful in answering your question in the MaxChat    Yes
    Is there something else you need assistance with in the MaxChat    No

TC_05_Verify Policy Information Flow: Setup Direct Deposit: Helpful - Yes; Assitance - Yes
    [Tags]    Ignore    E-xxx    B-xxx
    Was the information helpful in answering your question in the MaxChat    Yes
    Is there something else you need assistance with in the MaxChat    Yes
    
    