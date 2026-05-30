* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
#Force Tags        Ignore
Suite Setup       Open the AgentChat chatbot
Suite Teardown    Close browser

* Variables

* Test Cases
TC_01_Verify fax form can be submitted, invalid data - policyNumber
    [Tags]    Ignore    E-40864    B-160704    B-169929    B-171360
    ...    E-45953    B-167557
    The AgentChat agent opens the fax form
    The AgentChat agent selects the policyNumber radio button in the fax form
    The AgentChat agent enters the details in the fax form    ${fld_AgentChat_policyNumber}    First Name Entered    Last Name Entered    U4050    0123456789
    The AgentChat agent submits the fax form and verifies the policyNumber field validation message is faxInvalidPolicyNumber
    The AgentChat agent selects the close fax form button

TC_02_Verify fax form can be submitted, no match - policyNumber
    [Tags]    Ignore    E-40864    B-160704    B-169929    B-171360
    ...    E-45953    B-167557
    The AgentChat agent selects the complete fax form button
    The AgentChat agent selects the policyNumber radio button in the fax form
    The AgentChat agent enters the details in the fax form    ${fld_AgentChat_policyNumber}    DARVIN    BRUMMER    U4050    1234567890
    The AgentChat agent submits the fax form    policyNumber    lbl_faxNoMatchFound

TC_03_Review fax form details after submission, no match - policyNumber
    [Tags]    Ignore    E-40864    B-160704    B-171360
    ...    E-45953    B-167557
    The AgentChat agent selects the review fax form button
    The AgentChat agent verifies that the fax review form contains DARVIN
    The AgentChat agent verifies that the fax review form contains BRUMMER
    The AgentChat agent verifies that the fax review form contains U4050
    The AgentChat agent verifies that the fax review form contains 1234567890
    The AgentChat agent closes the review fax form and verifies that the ccsAssistance label is displayed

