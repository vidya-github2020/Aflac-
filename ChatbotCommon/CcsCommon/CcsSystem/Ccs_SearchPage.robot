###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}ChatbotCommon${/}ChatbotCommon.resource

* Variables
${btn_closeIcon_InteractionTab}            xpath://span[contains(@class, 'iconCloseSmall')]
${btn_discard_researchInteractionModal}    xpath://div[@id='dirty-confirm-div']//button[contains(@data-test-id, '20150902110844006614837')]

##  Search Fields Section ##
${opt_SearchAs_Selector}            xpath://select[contains(@data-test-id, '202011120156530350557')]  

${dd_SearchAs_Policyholder}         xpath://select[contains(@data-test-id, '202011120156530350557')]//option[contains(@value, 'Policyholder')]
${dd_SearchAs_CertificateHolder}    xpath://select[contains(@data-test-id, '202011120156530350557')]//option[contains(@value, 'Certificate Holder')]
${dd_SearchAs_Agent}                xpath://select[contains(@data-test-id, '202011120156530350557')]//option[contains(@value, 'Agent')]
${dd_SearchAs_Account}              xpath://select[contains(@data-test-id, '202011120156530350557')]//option[contains(@value, 'Account')]
${dd_SearchAs_Provider}             xpath://select[contains(@data-test-id, '202011120156530350557')]//option[contains(@value, 'Provider')]
${btn_AgentAssistSearch_SearchResults_Continue_PH}    xpath://button[text()='Continue']
${btn_AgentAssistSearch_SearchResults_Continue}    xpath:(//button[text()='Continue'])[2]

${fld_SearchAs_EmailAddress}                    xpath://div[@data-test-id="202011121621570351714"]//input[contains(@id,'1811608a')]
${lbl_SearchAs_EmailAddress_invalidMsg}         xpath://div[contains(@id,'EmailIDError')]//span
${lbl_SearchAs_EmailAddress_invalidMsg_txt}     Invalid value specified for Email ID.
${fld_SearchAs_WritingNumber}                   xpath://div[@data-test-id="202011121621570351714"]//input[contains(@id,'1af4f329')]
${lbl_SearchAs_WritingNumber_invalidMsg}        xpath:(//div[contains(@id,'WritingNoError')])[last()]//span
${lbl_SearchAs_WritingNumber_invalidMsg_txt}    Invalid value specified for Writing Number.
${fld_SearchAs_AccountName}      xpath://input[contains(@data-test-id,'Account-SearchStringAccountName') and contains(@id,'7bd0c124')]
${fld_SearchAs_AccountNumber}    xpath://input[contains(@data-test-id,'Account-SearchStringAccountNumber') and contains(@id,'60ee210d')]
${fld_SearchAs_FirstName}        xpath://input[@data-test-id='PH-SearchStringFirstName' and contains(@name,'FirstName')]
${fld_SearchAs_LastName}         xpath://input[@data-test-id='PH-SearchStringLastName' and contains(@name,'LastName')]
${fld_SearchAs_FullName}         xpath://div[contains(@data-ui-meta,'.Entities.SearchStringFullName')]//div//span//input[contains(@data-test-id,'202108301150440365369')]
${fld_SearchAs_TaxID}            xpath://div[contains(@data-ui-meta,'.Entities.SearchStringTaxID')]//div//span//input[contains(@data-test-id,'202108301150440366439')]
${fld_SearchAs_NPINumber}        xpath://div[contains(@data-ui-meta,'.Entities.SearchStringNPINumber')]//div//span//input[contains(@data-test-id,'202108311433540596749')]
${fld_SearchAs_DOB}              xpath://input[@data-test-id='PH-SearchStringDOB' and contains(@name,'DOB')]
${fld_SearchAs_ZipCode}          xpath://div[contains(@data-ui-meta,'.Entities.SearchStringZipCode')]//input[contains(@data-test-id,'202002230251020539434737')]
${fld_SearchAs_PolicyNumber}     xpath://input[@data-test-id='PH-SearchStringPolicyNumber' and contains(@name,'PolicyNumber')]
${fld_SearchAs_PolicynumberPopulated}                //input[contains(@data-test-id,'PH-SearchStringPolicyNumber')][contains(@value, '{}')]
${fld_SearchAs_SSN}              xpath://input[@data-test-id='PH-SearchStringSSN' and contains(@name,'SSN')]
${fld_SearchAs_ClaimNumber}     xpath://input[@data-test-id='PH-SearchStringClaimNumber' and contains(@name,'ClaimNumber')]
${fld_SearchAs_ClaimnumberPopulated}                 //input[contains(@data-test-id,'SearchStringClaimNumber')][contains(@value, '{}')]
${lbl_SearchAs_ClaimNumber}           xpath://label[contains(@data-test-id,'PH-SearchStringClaimNumber-Label') and contains(@class,'field-caption dataLabelForWrite icon-required')]
${lbl_SearchAs_CertificateNumber}           xpath://label[contains(@data-test-id,'202407220603080660361-Label') and contains(@class,'field-caption dataLabelForWrite icon-required')]
${fld_SearchAs_CertificateNumber}           xpath://input[contains(@data-test-id,'202407220603080660361')and contains(@type,'text')]
${lbl_SearchAs_GroupNumber}           xpath://label[contains(@data-test-id,'20240722060308066449-Label') and contains(@class,'field-caption dataLabelForWrite icon-required')]
${fld_SearchAs_GroupNumber}           xpath://input[contains(@data-test-id,'20240722060308066449')and contains(@type,'text')]


${btn_SearchAs_AdvanceSearch_ShowOptions}    xpath://div[@data-test-id="202002230251020536143"]//i
${fld_SearchAs_Account_TaxId}                xpath://input[@data-test-id='Account-SearchStringTaxID' and contains(@name,'TaxID')]
${fld_SearchAs_AdvanceSearch_TaxId}          xpath://div[contains(@data-ui-meta,'.Entities.SearchStringTaxID')]//input[contains(@data-test-id,'202002230251020539434737')]
${fld_SearchAs_AdvanceSearch_ZipCode}        xpath://div[contains(@data-ui-meta,'.Entities.SearchStringZipCode')]//input[contains(@data-test-id,'202108031900410332277')]
${fld_SearchAs_AdvanceSearch_State}          xpath://div[contains(@data-ui-meta,'.Entities.SearchStringState')]//input[contains(@data-test-id,'202002230251020539434737')]

${fld_SearchAs__ProviderCompanyName}                 xpath://input[@data-test-id='Agent-SearchStringCompanyName']
${fld__SearchAs_ProviderLastName}                    xpath://input[@data-test-id='Agent-SearchStringLastName']
${fld__SearchAs_ProviderFirstName}                   xpath://input[@data-test-id='Agent-SearchStringFirstName']

${btn_searchInteraction_Search}    xpath://button[@data-test-id='SearchCustomer-Search']
${btn_searchInteraction_Reset}     xpath://div[text()='Reset']

${tbl_SearchResults_rowCollapseIcon}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data')]//tr[@pl_index='tableRowNumber']/td/span
${tbl_PolicyHolderChat_SearchResults_rowCollapseIcon}    ${tbl_SearchResults_rowCollapseIcon}

${lbl_SearchScreen_APIOutage}    

* Keywords
On the ${paveChat} open a new phone call interaction and search for ${searchAs} ${searchByField} ${searchValue}
    Switch to the CcsPortal browser
    Run Keyword    Select the ${paveChat} New button
    Run Keyword    Select the ${paveChat} Phone call button
    Run Keyword    On the ${paveChat} ccs search interaction page select the ${searchAs} option from the SearchAs field
    Run Keyword    Verify that the ${searchAs} search fields are displayed
    Run Keyword    On the ${paveChat} ccs search interaction page search for the ${searchByField} ${searchValue}

On the ${paveChat} ccs search interaction page select the ${dropdownOption} option from the ${dropdownField} field
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Select the Pega iFrame
        sleep    2s
        Run keyword    Click the ${paveChat} button    opt_${dropdownField}_Selector
        Sleep     2s
        Verify the drop down option is displayed   dd_${dropdownField}_${dropdownOption}
        Run keyword    Click the ${paveChat} button    dd_${dropdownField}_${dropdownOption}
    ELSE
        Do Nothing
    END

Verify the ${searchField} field is displayed on the ccs search interaction page
    Run Keyword    Get the ${gPaveChatbot} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait Until Element Is Visible    ${fld_SearchAs_${searchField}}     timeout=${mTimeout}
    ELSE
        Do Nothing
    END

On the ${paveChat} start a new phone call interaction
    Run Keyword    Select the ${paveChat} New button
    Run Keyword    Select the ${paveChat} Phone call button

On the ${paveChat} start a new phone call interaction and selects the NonClient Button
    Switch to the CcsPortal browser
    Run Keyword    Select the ${paveChat} New button
    Run Keyword    Select the ${paveChat} Phone call button
    Run Keyword    Select the ${paveChat} CCS NonClient button 

On the ${paveChat} phone call interaction search for ${searchAs} ${searchByField} ${searchValue}
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    On the ${paveChat} ccs search interaction page select the ${searchAs} option from the SearchAs field
        Wait Until Element Is Visible    ${fld_SearchAs_${searchByField}}    timeout=${sTimeout}
        Input Text    ${fld_SearchAs_${searchByField}}    ${searchValue}    clear=True
        Sleep    1s
        Press Keys    None    TAB
    ELSE
        Do Nothing
    END
    
On the ${paveChat} phone call interaction verify that the ${searchByField} field validation error is displayed
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Wait Until Element Is Visible    ${lbl_SearchAs_${searchByField}_invalidMsg}     timeout=${mTimeout}
        ${actualText}    Get Text    ${lbl_SearchAs_${searchByField}_invalidMsg}
        ${expectedText}    Set variable    ${lbl_SearchAs_${searchByField}_invalidMsg_txt}
        Should Be Equal    ${actualText}    ${expectedText}
        Wait Until Element Is Visible    ${btn_searchInteraction_Reset}     timeout=${mTimeout}
        Click Element    ${btn_searchInteraction_Reset}
    ELSE
        Do Nothing
    END

Select the ${checkboxName} checkbox on the ${paveChat} ccs search interaction page
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Register Keyword To Run On Failure    Do Nothing
        ${present}=    Run Keyword And Return Status    Wait Until Element Is Enabled    ${btn_${paveChat}_SearchResult_${checkboxName}}    timeout=${sTimeout}
        IF    '${present}'=='True'
            Run keyword    Click the ${paveChat} button    btn_${paveChat}_SearchResult_${checkboxName}
        ELSE
            Do Nothing
        END
    ELSE
        Do Nothing
    END
    Register Keyword To Run On Failure    Capture Page Screenshot

Select the Continue button on the ${paveChat} ccs search interaction page
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        #Scroll button or label into view    ${btn_${paveChat}_SearchResult_Continue}
        Wait for pega masking icon to complete
        Run keyword    Click the ${paveChat} button    btn_${paveChat}_SearchResult_Continue
        Wait for pega masking icon to complete
    ELSE
        Do Nothing
    END

Select the Continue button on the ${paveChat} ccs searches interaction page
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Scroll button or label into view    ${btn_${paveChat}_SearchResults_Continue}
        Wait for pega masking icon to complete
        Run keyword    Click the ${paveChat} button    btn_${paveChat}_SearchResults_Continue
        Wait for pega masking icon to complete
    ELSE
        Do Nothing
    END

Select the Contine Button on the ${paveChat} Agent Assist PolicyHolder Search Page
    Wait for pega masking icon to complete
    Scroll button or label into view    ${btn_AgentAssistSearch_SearchResults_Continue_PH}
    Run keyword    Click the ${paveChat} button    btn_AgentAssistSearch_SearchResults_Continue_PH
    Wait for pega masking icon to complete

Select the Contine Button on the ${paveChat} Agent Assist Account Search Page
    Wait for pega masking icon to complete
    Scroll button or label into view    ${btn_AgentAssistSearch_SearchResults_Continue}
    Run keyword    Click the ${paveChat} button    btn_AgentAssistSearch_SearchResults_Continue
    Wait for pega masking icon to complete

Select the Contine Button on the ${paveChat} Agent Assist Provider Search Page
    Wait for pega masking icon to complete
    Scroll button or label into view    ${btn_AgentAssistSearch_SearchResults_Continue}
    Run keyword    Click the ${paveChat} button    btn_AgentAssistSearch_SearchResults_Continue
    Wait for pega masking icon to complete

On the ${paveChat} ccs search interaction page search for the ${searchField} ${searchValue}
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PegaGadget1Ifr iFrame
        Wait Until Element Is Visible    ${fld_SearchAs_${searchField}}    timeout=${sTimeout}
        Input Text    ${fld_SearchAs_${searchField}}    ${searchValue}    clear=True
        Sleep    1s
        Press Keys    None    TAB
        Scroll button or label into view    ${btn_searchInteraction_Search}
        Wait for pega masking icon to complete
        Run Keyword    Click the ${paveChat} button    btn_searchInteraction_Search
        Wait for pega masking icon to complete
    ELSE
        Do Nothing
    END

Close the ${paveChat} research interaction tab and select the ${modal_btn} option
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Unselect Frame
        Run keyword    Click the ${paveChat} button    btn_closeIcon_InteractionTab
        Select the PegaGadget1Ifr iFrame
        Run keyword    Click the ${paveChat} button    btn_${modal_btn}_researchInteractionModal
    ELSE
        Do Nothing
    END

Select the ${paveChatbot} CCS ${modalOption} interaction modal button
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_wrapUpChat}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_${modalOption}_researchInteractionModal

Expand the ${paveChatbot} Advanced Search options
    Wait for page loading icon to complete
    Wait Until Element Is Visible    ${btn_SearchAs_AdvanceSearch_ShowOptions}    timeout=${mTimeout}
    Run Keyword    Click the ${paveChatbot} button    btn_SearchAs_AdvanceSearch_ShowOptions

Verify the ${fieldPopulated} is ${fieldValue} on the SearchInteraction Page
    Wait for page loading icon to complete
    ${formatedfieldPopulated}    format string    ${fld_SearchAs_${fieldPopulated}}    ${fieldValue}
    Wait Until Element Is Visible    ${formatedfieldPopulated}    timeout=${mTimeout}
    ${actualText}    Get Value    ${formatedfieldPopulated}
    Should Be Equal As Strings    ${actualText}    ${fieldValue}
