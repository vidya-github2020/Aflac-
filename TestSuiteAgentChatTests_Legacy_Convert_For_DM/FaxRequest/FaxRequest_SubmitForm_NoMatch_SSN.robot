* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
#Force Tags        Ignore
Suite Setup       Open the AgentChat chatbot
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify fax form can be submitted, invalid data - SSN
    [Tags]    Ignore    E-40864    B-159483    B-160568    B-160704    B-161717    B-164764    B-169929
    ...    E-45953    B-167557
    The AgentChat agent opens the fax form
    The AgentChat agent enters the details in the fax form    ${fld_AgentChat_SSN}    First Name Entered    Last Name Entered    1234    0123456789
    The AgentChat agent submits the fax form and verifies the SSN field validation message is faxInvalidPolicyNumber

TC_02_Verify fax form can be submitted, no match - SSN
    [Tags]    Ignore    E-40864    B-159481    B-160568    B-160704    B-161717    B-164764    B-169929
    ...    E-45953    B-167557
    The AgentChat agent enters the details in the fax form    ${fld_AgentChat_SSN}    HARVEY    HAMMER    1747    1234567890
    The AgentChat agent submits the fax form    SSN    lbl_faxNoMatchFound

TC_03_Review fax form details after submission, no match - SSN
    [Tags]    Ignore    E-40864    B-159481    B-160568    B-160704    B-161717    B-164764    B-169929
    ...    E-45953    B-167557
    The AgentChat agent selects the review fax form button
    The AgentChat agent verifies that the fax review form contains HARVEY
    The AgentChat agent verifies that the fax review form contains HAMMER
    The AgentChat agent verifies that the fax review form contains ****
    The AgentChat agent verifies that the fax review form contains 1234567890
    The AgentChat agent closes the review fax form and verifies that the ccsAssistance label is displayed

