* Settings
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}CcsChatKeywords.robot
Suite Setup       Login as a MaxChat CCS select the PHQueue work queue and start a live chat session
Test Setup        Would you like to chat with a MaxChat CCS
Test Teardown     The agent returns to the MaxChat live chat main menu
Suite Teardown    Run Keywords    Log out from the MaxChat ccs portal
...               AND    Close all browsers

* Variables

* Test Cases
TC_01_Verify Chat With A Care Specialist Flow: CCS - Declines; Survey - No
    [Tags]    Ignore    E-xxx    B-xxx
    The MaxChat CCS declines the live chat modal alert
    Check if you need to end the MaxChat chat to ccs session
        Would you like to complete the MaxChat survey    No

TC_02_Verify Chat With A Care Specialist Flow: CCS - Accepts; Survey - Yes
    [Tags]    Ignore    E-xxx    B-xxx
    The MaxChat CCS accepts the live chat modal alert
    The MaxChat CCS ends the chat and wraps up the session
    Would you like to complete the MaxChat survey    Yes    
    
    