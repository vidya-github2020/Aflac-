* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Login as an AgentChat AccountUserTwo CCS user
...               AND    Select the AgentChat New button
...               AND    Select the AgentChat research interaction button
...               AND    On the AgentChat ccs search interaction page select the Account option from the SearchAs field
...               AND    Verify that the Account search fields are displayed
...               AND    On the AgentChat ccs search interaction page search for the AccountNumber SH403
...               AND    Select the Continue button on the AgentChat ccs search interaction page
Test Setup        Run Keyword    As a AgentChat ccs add a new customerInquiry task from the general section
Suite Teardown    Run Keywords    Select the AgentChat CCS wrap up close button
...               AND    Log out from the AgentChat ccs portal
...               AND    Close browser

* Variables

* Test Cases

TC_01_Verify Account Holder can add Customer Inquiry to Research call interaction
    [Tags]    B-310540
    Select 'Claims' from the routingDestination field on the customerInquiry screen in the general section
    Select 'Privacy Incident' from the reason field on the customerInquiry screen in the general section
    Enter '12345' in the incidentId field on customerInquiry screen in the general section
    Enter 'Test Privacy Incident' in the situationSolution field on customerInquiry screen in the general section
    Click on the submit button on the customerInquiry screen of the general section
    Click on the closeTask button on the customerInquiry screen of the general section
    
TC_02_Verify exit button functionality is working fine when exit Account Holder Customer Inquiry in Research call interaction
    [Tags]    B-310540   
    Select 'Claims' from the routingDestination field on the customerInquiry screen in the general section
    Select 'Privacy Incident' from the reason field on the customerInquiry screen in the general section
    Enter '12345' in the incidentId field on customerInquiry screen in the general section
    Enter 'Test Privacy Incident' in the situationSolution field on customerInquiry screen in the general section
    Click on the exitTask button on the customerInquiry screen of the general section
    The ccs enters a comment to complete the cancel task process in the general section
    Click on the closeOnExitTask button on the customerInquiry screen of the general section
