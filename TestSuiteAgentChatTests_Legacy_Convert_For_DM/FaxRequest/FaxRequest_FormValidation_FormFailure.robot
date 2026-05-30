* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Suite Setup       Run Keywords    Open the AgentChat chatbot
Test Setup        Run Keyword    The AgentChat agent opens the fax form
Test Teardown     Run Keyword    The agent returns to the AgentChat live chat main menu
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify invalid data for First Name field
    [Tags]    E-45953    D-30883          
    [Template]    Input Invalid First Name Character 
    \!#$
        
TC_02_Verify invalid data for Last Name field
    [Tags]    E-45953    D-30883         
    [Template]    Input Invalid Last Name Character
    \!
    
TC_03_Verify invalid data for SSN field
    [Tags]    E-40864    B-160568    B-160704    B-169929    B-171360      
    [Template]    Input Invalid SSN Data    
    \012
    
TC_04_Verify invalid data for Policy Number field
    [Tags]    E-40864    B-160704    B-169929    B-171360    
    [Template]    Input Invalid Policy Number Data
    \abc-12345
    
TC_05_Verify invalid data length for Fax Number field
    [Tags]    E-40864    B-160568    B-160704    B-169929    B-171360    
    [Template]    Input Invalid Max Length Data    
    \123456789

TC_06_Verify invalid data for Fax Number field
    [Tags]    E-40864    B-160704    B-169929   
    [Template]    Input Invalid Fax Number Data      
    \123456789!


* Keywords
Input Invalid First Name Character
    [Arguments]    ${invalidCharacter}
    The AgentChat agent enters the firstName in the fax form    Invalid Character ${invalidCharacter}    Last Name Entered    9999    0123456789     xxxx
    Verify that the AgentChat firstName field validation text is faxInvalidFirstName

Input Invalid Last Name Character
    [Arguments]    ${invalidCharacter}
    The AgentChat agent enters the lastName in the fax form     First-Name-Entered    Invalid Character ${invalidCharacter}    9999    0123456789    xxxx
    Verify that the AgentChat lastName field validation text is faxInvalidLastName
    
Input Invalid SSN Data
    [Arguments]    ${ssnData}
    The AgentChat agent enters the SSN in the fax form          First Name Entered    Last Name Entered     ${ssnData}    0123456789    xxxx
    Verify that the AgentChat SSN field validation text is faxInvalidSSN

Input Invalid Policy Number Data
    [Arguments]    ${policyNumberData}
    The AgentChat agent enters the policyNumber in the fax form      First Name Entered    Last Name Entered    ${policyNumberData}    0123456789     xxxx  
    Verify that the AgentChat policyNumber field validation text is policyNumberInvalid

Input Invalid Fax Number Data
    [Arguments]    ${faxNumberData}
    The AgentChat agent enters the faxnumber in the fax form       First Name Entered    Last Name Entered    1234     ${faxNumberData}    xxxx 
    Verify that the AgentChat faxNumber field validation text is faxInvalidFax

Input Invalid Max Length Data
    [Arguments]    ${faxNumberData}
    The AgentChat agent enters the faxnumber in the fax form       First Name Entered    Last Name Entered    1234    ${faxNumberData}    xxxx
    Verify that the AgentChat faxNumber field validation text is faxInvalidFax
