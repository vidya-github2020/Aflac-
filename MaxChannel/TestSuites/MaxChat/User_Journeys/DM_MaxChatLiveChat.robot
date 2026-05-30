* Settings
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}CcsChatKeywords.robot
Resource          ${EXECDIR}${/}ChatbotCommon${/}AgentCommon${/}Agent_CommonKeywords.robot
Suite Setup       Log into MaxChat Chat portal
Test Setup        Run Keywords    Click On The ChatUs Button On The Homepage
...               AND    Verify the MaxChat live chat message is displayed
...               AND    Select the Let's Chat button
...               AND    Select the MaxChat textarea field and enter Menu as text
Test Teardown     End the Max Chat live chat session
Suite Teardown    Run Keywords    Select the DM MaxChat MyAccount option
...               AND    Select the DM MaxChat Logout option
...               AND    Close browser

* Test Cases
   
TC_01_Verify the user select PolicyInformation option in Live chat 
    [Tags]    UserJourney    Smoke    E-84512    B-316800    
    Select the DM MaxChat PolicyInformation option
    Verify the MaxChat live chat Option is displayed btn_MaxChat_DirectDeposit

TC_02_Verify the user select PolicyChanges option in Live chat 
    [Tags]    UserJourney    Smoke    E-84512    B-316800    
    Select the DM MaxChat PolicyChanges option
    Verify the MaxChat live chat Option is displayed btn_MaxChat_RemovePerson 

TC_03_Verify the user select Claim Center option in Live chat 
    [Tags]    UserJourney    Smoke    E-84512    B-316800    
    Select the DM MaxChat ClaimCenter option
    Verify the MaxChat live chat Option is displayed btn_MaxChat_WasMyFaxReceived

TC_04_Verify the user select Learn About A letters option in Live chat 
    [Tags]    UserJourney    Smoke    E-84512    B-316800    
    Select the DM MaxChat LearnAbout option
    Verify the MaxChat live chat Option is displayed btn_MaxChat_LearnAbout_txt   

TC_05_Verify the user select Make Payments option in Live chat 
    [Tags]    UserJourney    Smoke    E-84512    B-316800    
    Select the DM MaxChat MakePayments option
    Verify the MaxChat live chat Option is displayed btn_MaxChat_LearnAbout_txt

TC_06_Verify the user select Chat with Specialist option in Live chat 
    [Tags]    Ignore    Smoke    E-84512    B-316800    
    # chat with specialist has been removed
    Select the DM MaxChat ChatWithSpecialist option
    Verify the MaxChat live chat Option is displayed btn_MaxChat_CareSpecialist