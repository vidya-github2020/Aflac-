###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}AgentChannel${/}Settings.resource

* Variables
${btn_AgentChat_SearchResult_Continue}    xpath://button[contains(@data-test-id, '20210802145827045576')]
${btn_AgentChat_SearchResults_Continue}    xpath://button[contains(@data-test-id, '202109131854350394188')] 
##^Provider submit button

## Search Results Sections ##
## Agent Table ##
${tbl_AgentChat_AgentSearchResults_rowCollapseIcon}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Agent')]//tr[@pl_index='tableRowNumber']/td/span
${btn_AgentChat_SearchResult_AgentName}                xpath://div[contains(@data-ui-meta,'.AgentNameCheckBoxSelected')]//input[contains(@data-test-id, '202108021458270443477')]
${btn_AgentChat_SearchResult_WritingNumber}            xpath://div[contains(@data-ui-meta,'.AgentNumberCheckBoxSelected')]//input[contains(@data-test-id, '202108021458270443477')]
${btn_AgentChat_SearchResult_DOB}                      xpath://div[contains(@data-ui-meta,'.AgentDOBCheckBoxSelected')]//input[contains(@data-test-id, '202108021458270443477')]
${btn_AgentChat_SearchResult_SSN}                      xpath://div[contains(@data-ui-meta,'.AgentSSNCheckBoxSelected')]//input[contains(@data-test-id, '202108021458270443477')]
${btn_AgentChat_SearchResult_Address}                  xpath://div[contains(@data-ui-meta,'.AgentAddressCheckBox')]//input[contains(@data-test-id, '202108021458270443477')]
${btn_AgentChat_SearchResult_CompanyNumber}            xpath://div[contains(@data-ui-meta,'.AgentCompanyNoCheckBoxSelected')]//input[contains(@data-test-id, '20210802145827044876')]

@{tbl_AgentChat_AgentSearchResults_columnHeaderValues}    Agent Name    Writing #    Full Address    DOB    SSN    Tax ID    Status    Company #
@{tbl_AgentChat_AgentListResults_columnHeaderValues}    Agent Name    Writing #    DOB    Tax ID    Status    Company #
@{btn_AgentChat_AgentSearchResult_Checkbox}    AgentName    Writing Number    DOB    Address    CompanyNumber
${tbl_AgentChat_AgentSearchResults_rowHeaderFieldValues}   xpath://tr[contains(@data-test-id,'202107162256110885681') and (@pl_index='rowNumber')]//td[@data-attribute-name='rowName']//span

## Account Table ##
${tbl_AgentChat_AccountResult}                           xpath://div[contains(@data-test-id,'202107162343140057324')]//table[contains(@id,'EXPAND-OUTERFRAME')]
${tbl_AgentChat_AccountSearchResults_columnHeaders}      xpath://table[contains(@data-test-id,'202107162256110885681')]//th
${tbl_AgentChat_AccountSearchResults_rows}               xpath://table[contains(@data-test-id,'202107162256110885681')]//span[contains(@data-ctl,'expCollIcon')]
${tbl_AgentChat_AccountSearchResults_rowCollapseIcon}    xpath://table[contains(@data-test-id,'202107162256110885681')]//tr[@pl_index='tableRowNumber']//span
${btn_AgentChat_SearchResult_AccountName}                xpath://div[contains(@data-ui-meta,'.AccNameCheckBoxSelected')]//input[contains(@data-test-id, '202108021458270443477')]
${btn_AgentChat_SearchResult_AccountNumber}              xpath://div[contains(@data-ui-meta,'.AccNumberCheckBoxSelected')]//input[contains(@data-test-id, '20210802145827044876')]
${btn_AgentChat_SearchResult_TaxID}                      xpath://div[contains(@data-ui-meta,'.AccountTaxIDCheckboxSelected')]//input[contains(@data-test-id, '20210802145827044876')]

@{tbl_AgentChat_AccountSearchResults_columnHeaderValues}    Account Name    Account Number    Tax ID
@{btn_AgentChat_AccountSearchResult_Checkbox}    AccountName    AccountNumber    TaxID

## Provider Table ##
${tbl_AgentChat_ProviderResult}                           xpath://div[contains(@data-test-id,'202107162343140057324')]//table[contains(@id,'EXPAND-OUTERFRAME')]
${tbl_AgentChat_ProviderSearchResults_columnHeaders}      xpath://table[contains(@data-test-id,'202107162256110885681')]//th
${tbl_AgentChat_ProviderSearchResults_rows}               xpath://table[contains(@data-test-id,'202107162256110885681')]//span[contains(@data-ctl,'expCollIcon')]
${tbl_AgentChat_ProviderSearchResults_rowCollapseIcon}    xpath://table[contains(@data-test-id,'202107162256110885681')]//tr[@pl_index='tableRowNumber']//span
${btn_AgentChat_SearchResult_ProviderName}                xpath://div[contains(@data-ui-meta,'.ProviderNameCheckBoxSelected')]//input[contains(@data-test-id, '202109131708400406159')]
${btn_AgentChat_SearchResult_ProviderPhone}              xpath://div[contains(@data-ui-meta,'.ProviderPhoneCheckboxSelected')]//input[contains(@data-test-id, '202109131708400406159')]
${btn_AgentChat_SearchResult_ProviderTaxID}                      xpath://div[contains(@data-ui-meta,'.ProviderTaxIDCheckboxSelected')]//input[contains(@data-test-id, '202109131708400406159')]
${btn_AgentChat_SearchResult_ProviderNPINumber}                      xpath://div[contains(@data-ui-meta,'.ProviderNPINumberCheckboxSelected')]//input[contains(@data-test-id, '202109131708400406159')]
${btn_AgentChat_SearchResult_ProviderAddress}                      xpath://div[contains(@data-ui-meta,'.ProviderAddressCheckBoxSelected')]//input[contains(@data-test-id, '202109131708400406159')]

@{tbl_AgentChat_ProviderSearchResults_columnHeaderValues}    Name    City    State    Tax ID
@{btn_AgentChat_ProviderSearchResult_Checkbox}    ProviderName    ProviderPhone    ProviderTaxID    ProviderNPI #    ProviderAddress

## Contact Form ##
${opt_Relationship_Selector}                             xpath://select[@data-test-id='20200224090030080170232']
${dd_Relationship_Agent}                                 xpath://option[@value='Other'] 
${fld_AgentChat_searchInteraction_search_name}           xpath://input[@data-test-id='202002230238350155203448']
${fld_AgentChat_searchInteraction_search_phoneNumber}    xpath://input[@data-test-id='20200330101427093610276']

## AgentAssistSearch ##
${btn_AgentAssistSearchName}    xpath:(//input[@data-test-id='20200225053537005969362'])[1]
${btn_AgentAssistSearchSSN}    xpath:(//input[@data-test-id='20200225053537005969362'])[2]
${btn_AgentAssistSearchDOB}    xpath:(//input[@data-test-id='20200225053537005969362'])[3]
${btn_AgentAssistSearchAddress}    xpath:(//input[@data-test-id='20200225053537005969362'])[4]
${btn_AgentAssistSearchPN}    xapth:(//input[@data-test-id='20200225053537005969362'])[5]



* Keywords
##  Agent Table ##
Verify that the Agent search fields are displayed
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify the EmailAddress field is displayed on the ccs search interaction page
        Verify the WritingNumber field is displayed on the ccs search interaction page
    ELSE
        Do Nothing
    END

Verify that the Agent search results table is displayed
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete

        FOR    ${fieldValue}  IN  @{tbl_AgentChat_AgentSearchResults_columnHeaderValues}
            Run Keyword    Verify that the AgentChat AccountSearchResults table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

Verify that row number ${rowNumber} contains the correct ${paveChat} c360 info for Agent EmailAddress ${emailAddress} in the AgentListResults table

    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get row number ${rowNumber} API Agent List details for EmailAddress ${emailAddress}
        
        FOR    ${fieldValue}  IN  @{tbl_AgentChat_AgentListResults_columnHeaderValues}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} in row ${rowNumber} contains the ${apiField} API value in the ${paveChat} AgentSearchResults table
        END
    ELSE
        Do Nothing
    END

Get row number ${rowNumber} API Agent List details for EmailAddress ${emailAddress}
    Get Bearer Access Token
    ${response}=    Send To EIB2 AgentList URL    ${emailaddress}    ${BearerTokenString}
    Save AgentList Details for row number    ${rowNumber}    ${response}

Select all checkboxes in ${searchType} search results table
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        FOR    ${fieldValue}  IN  @{btn_AgentChat_${searchType}SearchResult_Checkbox}
            Run Keyword    Select the ${fieldValue} checkbox on the AgentChat ccs search interaction page
        END
    ELSE
        Do Nothing
    END

Select the checkboxes in Agent Assist Results table
    Click the AgentChat button    btn_AgentAssistSearchName
    Click the AgentChat button    btn_AgentAssistSearchSSN
    Click the AgentChat button    btn_AgentAssistSearchDOB
    Click the AgentChat button    btn_AgentAssistSearchAddress

##  Account Table ##
Verify that the Account Search fields are displayed
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify the AccountName field is displayed on the ccs search interaction page
        Verify the AccountNumber field is displayed on the ccs search interaction page
    ELSE
        Do Nothing
    END

Search for account number ${accountNumber} and verify the AccountSearchResults table is displyed
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    On the AgentChat ccs search interaction page search for the AccountNumber ${accountNumber}
        Wait for pega masking icon to complete
        
        FOR    ${fieldValue}  IN  @{tbl_AgentChat_AccountSearchResults_columnHeaderValues}
            Run Keyword    Verify that the AgentChat AccountSearchResults table contains the column header ${fieldValue}
        END

        Verify that the table expand or collapse icon is displayed    ${tbl_AgentChat_AccountSearchResults_rows}    background-image    ${img_url_collapseRowIcon}
        Expand row number 1 in the AccountSearchResults table in the AgentChat
        Verify that the table expand or collapse icon is displayed    ${tbl_AgentChat_AccountSearchResults_rows}    background-image    ${img_url_expandRowIcon}
    ELSE
        Do Nothing
    END

Verify that the Provider Search fields are displayed
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify the ProviderCompanyName field is displayed on the ccs search interaction page
        Verify the ProviderLastName field is displayed on the ccs search interaction page
        Verify the ProviderFirstName field is displayed on the ccs search interaction page
        Verify the TaxID field is displayed on the ccs search interaction page
        Verify the NPINumber field is displayed on the ccs search interaction page
    ELSE
        Do Nothing
    END

Select all checkboxes and continue to the AgentChat c360 tabs
    Expand row number 1 in the AgentSearchResults table in the AgentChat
    Select all checkboxes in Agent search results table
    Select the Continue button on the AgentChat ccs search interaction page

Select all checkboxes and continue to the Accounts c360 tabs
    Select all checkboxes in Account search results table
    Select the Continue button on the AgentChat ccs search interaction page

Select all checkboxes and continue to the Provider c360 tabs
    Select all checkboxes in Provider search results table
    Select the Contine Button on the AgentChat Agent Assist Provider Search Page

Select all checkboxes and continue to the AgentAssistSearch c360 tabs
    Select the checkboxes in Agent Assist Results table
    Select the Contine Button on the AgentChat Agent Assist PolicyHolder Search Page

Select all checkboxes and continue to the Accounts AA c360 tabs
    Select all checkboxes in Account search results table
    Select the Contine Button on the AgentChat Agent Assist Account Search Page

Enter the contact data information on the ccs search interaction page
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Enter 'TestUser' in the name field on search screen in the searchInteraction section 
        On the AgentChat ccs search interaction page select the Agent option from the Relationship field
        Enter '7893612345' in the phoneNumber field on search screen in the searchInteraction section
    ELSE
        Do Nothing
    END



