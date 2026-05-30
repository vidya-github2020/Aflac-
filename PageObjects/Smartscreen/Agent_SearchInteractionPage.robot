*** Variables ***
${results_TaxID_field}                       xpath://span[contains(text(),'Tax ID')]
${agentResults_c360view}                     xpath:(//h3[contains(text(),'Summary')])[2]
${agentResults_FirstName}                    xpath:(//span[@data-test-id="2016072109335505834280"])[1]
${fld_tooltiptext_AgentSSN}                  xpath://i[contains(@title,'9 digit SSN')]
${results_CompanyName_field}                 xpath://span[contains(text(),'Company Name')]
${fld_tooltiptext_AgentTaxID}                xpath://i[contains(@title,'Tax ID')]
${fld_tooltiptext_AgentLastName}             xpath://i[@title='Please enter Full Last Name']
${fld_tooltiptext_AgentFirstName}            xpath://i[@title='Please enter Full First Name']
${fld_tooltiptext_AgentCompanyName}          xpath://i[@title='Please enter Full Company Name']
${fld_tooltiptext_AgentEmailAddress}         xpath://i[contains(@title,'Email Address')]
${fld_tooltiptext_AgentWritingNumber}        xpath://i[contains(@title,'Writing Number')]
${fld_informational_msg_AgentLastName}       xpath://span[contains(text(),'First Name')]
${fld_informational_msg_AgentFirstName}      xpath://span[contains(text(),'Last Name')]
${fld_tooltiptext_AgentLastNameCheckbox}     xpath://i[contains(@title,'Last Name is searched partially')]
${fld_tooltiptext_AgentFirstNameCheckbox}    xpath://i[contains(@title,'First Name is searched partially')]

${fld_tooltiptext_AgentCompanyNameCheckbox}                             xpath://i[contains(@title,'Company Name is searched partially')]
${fld_SSUser_SearchInteraction_Search_TaxID}                            xpath://input[@data-test-id='Agent-SearchStringTaxID' and contains(@name,'TaxID')]
${fld_SSUser_SearchInteraction_Search_AgentSSN}                         xpath://input[@data-test-id='Agent-SearchStringSSN' and contains(@name,'SSN')]
${fld_SSUser_SearchInteraction_Search_CompanyName}                      xpath://input[@data-test-id='Agent-SearchStringCompanyName']
${fld_SSUser_SearchInteraction_Search_AgentLastName}                    xpath://input[@data-test-id='Agent-SearchStringLastName']
${fld_SSUser_SearchInteraction_Search_AgentFirstName}                   xpath://input[@data-test-id='Agent-SearchStringFirstName']
${btn_policyHolderChat_Search_SearchInteraction_Reset}                  xpath://div[contains(text(),'Reset')]
${fld_SSUser_SearchInteraction_Search_AgentCompanyName}                 xpath://input[@data-test-id='Agent-SearchStringCompanyName']
${chkBox_policyHolderChat_SearchInteraction_Search_AgentLastName}       xpath://input[@data-test-id='202209291258520215983' and contains(@name,'LastName')]
${chkBox_policyHolderChat_SearchInteraction_Search_AgentFirstName}      xpath://input[@data-test-id='202209291258520215983' and contains(@name,'FirstName')]
${chkBox_policyHolderChat_SearchInteraction_Search_AgentCompanyName}    xpath://input[@data-test-id='202209291258520215983' and contains(@name,'CompanyName')]


*** Keywords ***

Verify the Agent search results data in search interaction page as 
    [Arguments]    ${text}
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${agentResults_FirstName}    timeout=${lTimeout}
    ${actualText}    Get Text    ${agentResults_FirstName}
    ${expectedText}    Convert To String    ${text}
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s

Verify that the ${field} informational message in policyholder search interaction page
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_informational_msg_${field}}    timeout=${mTimeout}
    ${actualText}    Get Text    ${fld_informational_msg_${field}}
    IF    '${field}'=='AgentFirstName'
        ${expectedText}    Convert To String    Please enter Last Name to enable Search button.
    ELSE IF    '${field}'=='AgentLastName'
        ${expectedText}    Convert To String    Please enter First Name to enable Search button.
    ELSE IF    '${field}'=='Zipcode'
        ${expectedText}    Convert To String    Please enter 1 more field from City, State and Zip Code.    
    END
    Should Contain    ${actualText}    ${expectedText}
    Sleep    2s    

Verify that the tooltip text for ${field} field in search interaction page
    Wait for pega masking icon to complete
    Wait Until Element Is Visible    ${fld_tooltiptext_${field}}    timeout=${mTimeout}
    Mouse Over    ${fld_tooltiptext_${field}}
    ${actualText}    Get Element Attribute    ${fld_tooltiptext_${field}}    title
    IF    '${field}'=='AgentFirstName'
        ${expectedText}    Convert To String    Please enter Full First Name 
    ELSE IF    '${field}'=='AgentFirstNameCheckbox'
        ${expectedText}    Convert To String    Select the check box only if First Name is searched partially. Enter at least first 3 character.
    ELSE IF    '${field}'=='AgentLastName'
        ${expectedText}    Convert To String    Please enter Full Last Name 
    ELSE IF    '${field}'=='AgentLastNameCheckbox'
        ${expectedText}    Convert To String    Select the check box only if Last Name is searched partially. Enter at least first 3 character.
    ELSE IF    '${field}'=='AgentSSN'
        ${expectedText}    Convert To String    Please enter the last 4 digits or full 9 digit SSN (xxxx or xxx-xx-xxxx or xxxxxxxxx)
    ELSE IF    '${field}'=='AgentWritingNumber'
        ${expectedText}    Convert To String     Please enter a valid Writing Number 
    ELSE IF    '${field}'=='AgentCompanyName'
        ${expectedText}    Convert To String    Please enter Full Company Name
    ELSE IF    '${field}'=='AgentCompanyNameCheckbox'
        ${expectedText}    Convert To String    Select the check box only if Company Name is searched partially. Enter at least first 2 characters.
    ELSE IF    '${field}'=='AgentEmailAddress'
        ${expectedText}    Convert To String     Please enter a valid Email Address
    ELSE IF    '${field}'=='AgentTaxID'
        ${expectedText}    Convert To String    Please enter 9 digit Tax ID
    END
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s 

Verify the Agent c360 screen details
    Wait for pega masking icon to complete
    Select the PegaGadget1Ifr iFrame     
    Wait Until Element Is Visible    ${agentResults_FirstName}    timeout=${sTimeout}
    Double Click Element    ${agentResults_FirstName}
    Sleep    5s    
    ${actualText}    Get Text    ${agentResults_c360view} 
    ${expectedText}    Convert To String        Summary  
    Should Be Equal    ${actualText}    ${expectedText}
    Sleep    2s

Verify the Agent search results data not displaying in search interaction page
    Wait for pega masking icon to complete
    Wait Until Element Is Not Visible    ${agentResults_FirstName}    timeout=${lTimeout}