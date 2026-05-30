* Settings
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}MaxChannel${/}TestSuites${/}MaxChat${/}CcsChatKeywords.robot
Suite Setup       Open the MaxChat chatbot
Test Setup        Begin a MaxChat Make Payment flow
Test Teardown     The agent returns to the MaxChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify Make Payments Flow: Helpful - No; CCS - No
    [Tags]    Ignore    E-xxx    B-xxx
    Was the information helpful in answering your question in the MaxChat    No
    Would you like to connect to a MaxChat ccs for further assistance    No

TC_02_Verify Make Payments Flow: Helpful - No; CCS - Yes; Survey - No
    [Tags]    Ignore    E-xxx    B-xxx
    Was the information helpful in answering your question in the MaxChat    No
    Would you like to connect to a MaxChat ccs for further assistance    Yes
    Check if you are required to connect to the MaxChat ccs
    Would you like to complete the MaxChat survey    No

TC_03_Verify Make Payments Flow: Helpful - No; CCS - Yes; Survey - Yes
    [Tags]    Ignore    E-xxx    B-xxx
    Was the information helpful in answering your question in the MaxChat    No
    Would you like to connect to a MaxChat ccs for further assistance    Yes
    Check if you are required to connect to the MaxChat ccs
    Would you like to complete the MaxChat survey    Yes
    
TC_04_Verify Make Payments Flow: Helpful - Yes; Assitance - No
    [Tags]    Ignore    E-xxx    B-xxx
    Was the information helpful in answering your question in the MaxChat    Yes
    Is there something else you need assistance with in the MaxChat    No

TC_05_Verify Make Payments Flow: Helpful - Yes; Assitance - Yes
    [Tags]    Ignore    E-xxx    B-xxx
    Was the information helpful in answering your question in the MaxChat    Yes
    Is there something else you need assistance with in the MaxChat    Yes

# TC_06_Verify Make Payments Flow: Url Redirect
#     [Tags]    E-xxx    B-xxx
#     Verify that the URL opens in a new browser tab    ${link_clickHere}    ${url_makeAPayment}

