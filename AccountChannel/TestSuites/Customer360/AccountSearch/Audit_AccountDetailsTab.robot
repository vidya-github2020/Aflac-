* Settings
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}AgentChatKeywords.robot
Resource          ${EXECDIR}${/}AgentChannel${/}TestSuites${/}AgentChat${/}CcsChatKeywords.robot
Resource          ${EXECDIR}${/}AccountChannel${/}PageObjects${/}AccountDetailsPage.robot
Suite Setup       Login as an AgentChat AccountUser CCS user
Test Setup        Run Keywords    On the AgentChat open a new phone call interaction and search for Account AccountNumber LFA98
...               AND    Enter the contact data information on the ccs search interaction page
...               AND    Select all checkboxes and continue to the Accounts c360 tabs
Test Template     Select the audit checkbox for the Account, Other and Coverage Info sections
Library           DataDriver    file=${EXECDIR}${/}AccountChannel/TestData/Audit/AccountDetailsTab_LFA98_${gEnvironment}.csv    dialect=excel
Test Teardown     Run Keywords    Select the Account CCS wrap up submit button
Suite Teardown    Run Keywords    Log out from the Account ccs portal
...               AND    Close browser
* Variables

* Test Cases
TC_01_Verify the audit details are correct for the Account number LFA98
    [Tags]    E-1959    C360-1965

* Keywords
Select the audit checkbox for the Account, Other and Coverage Info sections 
    [Arguments]    ${accountDetailsTabAuditData}
    Select the BillingName checkbox on the details screen in the AccountDetails section
    The Account CCS selects the C360 Details tab
    Select the AccountDetails checkbox on the details screen in the AccountDetails section
    Select the PolicyLevel checkbox on the details screen in the AccountDetails section
    Select the AccountLevel checkbox on the details screen in the AccountDetails section
    Select the LapseNotice checkbox on the details screen in the AccountDetails section
    Select the OtherInfo checkbox on the details screen in the AccountDetails section
    Select the CoverageInfo checkbox on the details screen in the AccountDetails section
    Select the Account CCS wrap up chat button
    Verify Account displays the "${accountDetailsTabAuditData}" Audit Data on the wrap up screen

    


