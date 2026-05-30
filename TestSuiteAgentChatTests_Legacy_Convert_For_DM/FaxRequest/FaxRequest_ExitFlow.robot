* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Open the AgentChat chatbot
Test Setup        The AgentChat agent begins a fax inquiry
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify the user can exit the fax inquiry
    [Tags]    E-40864    B-156910    B-159284    B-170192    
    Exit the AgentChat workflow
    Select the require further assistance option in the AgentChat    Yes

TC_02_Verify the user can exit the fax inquiry, after selecting yes
    [Tags]    E-40864    B-156910    B-159284    B-170192
    Do you have the fax number that was used to submit the documentation in the AgentChat    Yes
    Exit the AgentChat workflow
    Select the require further assistance option in the AgentChat    Yes

TC_03_Verify the user can exit the fax inquiry, after selecting no
    [Tags]    E-40864    B-156910    B-159284    B-170192
    Do you have the fax number that was used to submit the documentation in the AgentChat    No
    Exit the AgentChat workflow
    Select the require further assistance option in the AgentChat    Yes

TC_04_Verify the user can exit the fax inquiry, after selecting no, then yes
    [Tags]    E-40864    B-156910    B-159284    B-170192   
    Do you have the fax number that was used to submit the documentation in the AgentChat    No
    Would you like a CCS to provide further assistance in the AgentChat    Yes
    Exit the AgentChat workflow
    Select the require further assistance option in the AgentChat    Yes

TC_05_Verify the user can exit the fax inquiry, after selecting no, then no
    [Tags]    E-40864    B-156910    B-159284    B-170192  
    Do you have the fax number that was used to submit the documentation in the AgentChat    No
    Would you like a CCS to provide further assistance in the AgentChat    No
    Exit the AgentChat workflow
    Select the require further assistance option in the AgentChat    No

