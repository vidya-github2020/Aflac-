* Settings
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}CcsChatKeywords.robot
Suite Setup       Log into MaxChat Chat portal
Test Teardown     The user returns to the MaxChat Homepage
Suite Teardown    Run Keywords    Select the DM MaxChat MyAccount option
...               AND    Select the DM MaxChat Logout option
...               AND    Close browser

* Test Cases

TC_01_Verify the user successfully login and select New claim option
    [Tags]    Smoke    E-84512    B-316800    
    #Need valid test data getting error as "It appears this claim isn’t eligible to be filed right now".
    Select the MaxChat NewClaim option on Homepage
    Verify the claim text when select the option as NewClaim

TC_02_Verify the user successfully login and select My claims option
    [Tags]    UserJourney    Smoke    E-84512    B-316800    
    Select the MaxChat MyClaims option on Homepage
    Verify the NewClaim text when select the option as MyClaims   

TC_03_Verify the user successfully login and select My coverage option
    [Tags]    UserJourney    Smoke    E-84512    B-316800    
    Select the MaxChat MyCoverage option on Homepage
    Verify the coverage text when select the option as MyCoverage     

TC_04_Verify the user successfully login and select Support option
    [Tags]    UserJourney    Smoke    E-84512    B-316800    
    Select the MaxChat Support option on Homepage
    Verify the support text when select the option as Support

TC_05_Verify the user successfully login and launch chat bot
    [Tags]    UserJourney    Smoke    E-84512    B-316800    
    Click On The ChatUs Button On The Homepage
    Verify the MaxChat live chat message is displayed
    Select the Let's Chat button
    Select the MaxChat textarea field and enter Menu as text
    End the Max Chat live chat session