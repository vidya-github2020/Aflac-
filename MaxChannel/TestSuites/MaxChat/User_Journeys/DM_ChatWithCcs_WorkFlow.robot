* Settings
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}CcsChatKeywords.robot
Resource          ${EXECDIR}${/}ChatbotCommon${/}AgentCommon${/}Agent_CommonKeywords.robot
Force Tags        Ignore    # Chat with Specialist has been removed
Suite Setup       Login as a DM MaxChat CCS select the PHQueue work queue and start a live chat session
Test Setup        Begin a DM MaxChat Policy Information flow 
Test Teardown     End the Max Chat live chat session
Suite Teardown    Run Keywords    Select the DM MaxChat MyAccount option
...               AND    Select the DM MaxChat Logout option
...               AND    Log out from the MaxChat CCS portal
...               AND    Close all browsers

* Variables

* Test Cases

TC_01_Verify Chat With A Care Specialist Flow: CCS - Declines; 
    [Tags]    UserJourney    Smoke
    The DM MaxChat CCS declines the live chat modal alert
   
TC_02_Verify Chat With A Care Specialist Flow: CCS - Accepts
    [Tags]    UserJourney    Smoke      
    The DM MaxChat CCS accepts the live chat modal alert
    The DM MaxChat CCS ends chat and wraps up the session


    

