* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    skip     #Currently this functionlity has been removed    
...               AND    Open the AgentChat chatbot
Suite Teardown    Run Keywords    skip     
...               AND    Close browser

* Variables

* Test Cases
TC_01_Verify fax number tooltip is displayed
    [Tags]    AgentChat  
    The AgentChat agent verifies that the fax number tootip is displayed
    The AgentChat agent opens the fax form
    The AgentChat agent selects the close fax form button

