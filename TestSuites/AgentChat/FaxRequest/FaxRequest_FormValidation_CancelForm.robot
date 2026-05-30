* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    skip     #Currently this functionlity has been removed 
...               AND    Open the AgentChat chatbot
Suite Teardown    Run Keywords    skip
...               AND    Close browser

* Variables

* Test Cases
TC_01_Verify fax form can be cancelled
    [Tags]    AgentChat  
    The AgentChat agent opens the fax form
    The AgentChat agent selects the cancel fax form button

TC_02_Review fax form details after cancelation
    [Tags]    AgentChat   
    The AgentChat agent selects the review fax form button
    The AgentChat agent verifies that the fax review form contains ${EMPTY}
    The AgentChat agent verifies that the fax review form contains ****
    The AgentChat agent closes the review fax form and verifies that the ccsOtherAssistance label is displayed

