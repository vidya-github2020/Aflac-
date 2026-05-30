* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Force Tags        Ignore    # unable to open url links in lower environments
Suite Setup       Open the AgentChat chatbot
Suite Teardown    Run Keywords    The agent returns to the AgentChat live chat main menu
...               AND    Close browser

* Variables

* Test Cases
TC_01_Verify action is initiated when the wellness report link is selected
    [Tags]    E-41984    B-168007    B-173063
    ...    E-45656    B-174345    B-177320
    The AgentChat agent opens the Wellness Report
    Verify that the URL opens in a new browser tab    ${mdl_AgentChat_wellRpt_hereLink}    ${url_wellnessReporting}

