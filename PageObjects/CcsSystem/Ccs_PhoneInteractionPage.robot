###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}PolicyHolderChannel${/}Settings.resource

* Variables
${btn_PolicyHolderChat_SearchResult_Continue}     xpath://button[contains(@data-test-id,'202002260428090880429503')]

## Search Results Sections ##
## PolicyHolder Table ##
${PH_results_FirstName}                           xpath://span[@data-test-id='2016072109335505834280']
${PH_results_ErrorMessage}                        xpath://div[@data-test-id='20150219141356093776230']
${PH_results_Tier1Message}                        xpath://div[@data-test-id='202010280710320385350']
${opt_Relationship_Selector}                      xpath://select[@data-test-id='20200224090030080170232']
${dd_Relationship_Policyholder}                   xpath://option[@value='Policyholder'] 
${lbl_PolicyHolderChat_ReasonField}               xpath://i[@class='caret-down-img']
${btn_PolicyHolderChat_SearchResult_SSN}          xpath://div[contains(@data-ui-meta,'.SSNCheckboxSelected')]//input[contains(@data-test-id,'20200225053537005969362')]
${btn_PolicyHolderChat_SearchResult_DOB}          xpath://div[contains(@data-ui-meta,'.DOBCheckboxSelected')]//input[contains(@data-test-id,'20200225053537005969362')]
${btn_PolicyHolderChat_SearchResult_Name}         xpath://div[contains(@data-ui-meta,'.NameCheckboxSelected')]//input[contains(@data-test-id,'20200225053537005969362')]
${lbl_PolicyHolderChat_ReasonField_Option}        xpath://span[contains(text(),'Other')]
${btn_PolicyHolderChat_SearchResult_Address}      xpath://div[contains(@data-ui-meta,'.AddressCheckboxSelected')]//input[contains(@data-test-id,'20200225053537005969362')]
${btn_PolicyHolderChat_SearchResult_SpouseDOB}    xpath://div[contains(@data-ui-meta,'.SpouseDOBCheckboxSelected')]//input[contains(@data-test-id,'20200225053537005969362')]
${radioBtn_policyHolderChat_Search_secondRadioButton}                  xpath:(//label[@class='rb_ rb_standard radioLabel'])[2]
${fld_policyHolderChat_searchInteraction_search_name}                  xpath://input[@data-test-id='202002230238350155203448']
${fld_PolicyHolderChat_contactData_validationErrorMsg}                 xpath://span[contains(text(),'Please correct')]
${tbl_PolicyHolderChat_PolicyHolderSearchResults_rows}                 xpath://table[contains(@data-test-id,'202002240217500944313')]//span[contains(@data-ctl,'expCollIcon')]
${fld_PolicyHolderChat_relationship_validationErrorMsg}                xpath://span[@class='iconError dynamic-icon-error']
${lbl_PolicyHolderChat_contactData_validationErrorMsg_txt}             Please correct the following errors in Contact Data:
${lbl_PolicyHolderChat_relationship_validationErrorMsg_txt}            Please fill out all required fields
${fld_policyHolderChat_searchInteraction_search_phoneNumber}           xpath://input[@data-test-id='20200330101427093610276']
${tbl_PolicyHolderChat_PolicyHolderSearchResults_columnHeaders}        xpath://table[contains(@data-test-id,'202002240217500944313')]//th
${tbl_PolicyHolderChat_PolicyHolderSearchResults_rowCollapseIcon}      xpath://table[contains(@data-test-id,'202002240217500944313')]//tr[@pl_index='tableRowNumber']//span
${fld_PolicyHolderChat_PolicyHolderSearchResults_ContactValidation}    xpath://div//span[contains(@data-test-id,'202010280710320385350') and contains(text(),'Please provide a valid contact phone number to continue')]

${Tier_Message_Text}    We are not servicing Tier 1 policies. Please transfer the caller to 833-235-2237 ${SPACE}(NOT TO BE PROVIDED TO THE CALLER, INTERNAL TRANSFER NUMBER ONLY) You can provide the caller with the following number if they wish to call at a later time: ${SPACE}866-990-2668


* Keywords
Verify that the PolicyHolder Search fields are displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the PegaGadget1Ifr iFrame
        Verify the FirstName field is displayed on the ccs search interaction page   
        Verify the LastName field is displayed on the ccs search interaction page   
        Verify the DOB field is displayed on the ccs search interaction page   
        Verify the SSN field is displayed on the ccs search interaction page   
        Verify the PolicyNumber field is displayed on the ccs search interaction page
    ELSE
        Do Nothing
    END

Verify that the PolicyHolder search results table is displayed
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete
        Verify that the PolicyHolderChat PolicyHolderSearchResults table contains the column header Name
        Verify that the PolicyHolderChat PolicyHolderSearchResults table contains the column header Full Address
        Verify that the PolicyHolderChat PolicyHolderSearchResults table contains the column header DOB
        Verify that the PolicyHolderChat PolicyHolderSearchResults table contains the column header SSN
        Verify that the PolicyHolderChat PolicyHolderSearchResults table contains the column header Spouse DOB
        Verify that the PolicyHolderChat PolicyHolderSearchResults table contains the column header Account Number
    ELSE
        Do Nothing
    END

Select all checkboxes in PolicyHolder SearchResult table
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Select the Name checkbox on the PolicyHolderChat ccs search interaction page
        Select the SSN checkbox on the PolicyHolderChat ccs search interaction page
        Select the DOB checkbox on the PolicyHolderChat ccs search interaction page
        Select the Address checkbox on the PolicyHolderChat ccs search interaction page
        Select the SpouseDOB checkbox on the PolicyHolderChat ccs search interaction page
    ELSE
        Do Nothing
    END

Enter contact data information on the ccs search interaction page
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Enter 'Guss Feintuch' in the name field on search screen in the searchInteraction section 
        On the PolicyHolderChat ccs search interaction page select the Policyholder option from the Relationship field
        Enter '7893612345' in the phoneNumber field on search screen in the searchInteraction section
    ELSE
        Do Nothing
    END

Verify contact data checks on the ccs search interaction page
    Run Keyword    Get the PolicyHolderChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Enter 'Guss Feintuch' in the name field on search screen in the searchInteraction section 
        On the PolicyHolderChat ccs search interaction page select the Policyholder option from the Relationship field
        #Wait Until Element is Visible    ${fld_PolicyHolderChat_PolicyHolderSearchResults_ContactValidation}
        Enter '7893612345' in the phoneNumber field on search screen in the searchInteraction section
    ELSE
        Do Nothing
    END

Verify the search results data in phone search interaction page as
    [Arguments]    ${text}
    Wait for pega masking icon to complete
    IF    '${text}'=='No results found for this search criteria.'
    Wait Until Element Is Visible    ${PH_results_ErrorMessage}    timeout=${lTimeout}
    ${actualText}    Get Text    ${PH_results_ErrorMessage}  
    ${expectedText}    Convert To String        ${text}
    ELSE
    Wait Until Element Is Visible    ${PH_results_FirstName}    timeout=${lTimeout}
    ${actualText}    Get Text    ${PH_results_FirstName}  
    ${expectedText}    Convert To String        ${text}
    END
    Should Be Equal    ${actualText}    ${expectedText}
    
Enter the Reason and Submit wrapup button
    Wait for page loading icon to complete
    Select the PegaGadget1Ifr iFrame
    Wait Until Element Is Visible    ${lbl_PolicyHolderChat_ReasonField}    timeout=${lTimeout}
    Click Element    ${lbl_PolicyHolderChat_ReasonField}
    Wait Until Element Is Visible    ${lbl_PolicyHolderChat_ReasonField_Option}    timeout=${lTimeout}
    Click Element    ${lbl_PolicyHolderChat_ReasonField_Option}
    Select the PolicyHolderChat CCS wrap up submit button

Verify default ${message} displayed for policy in search interaction page 
    ${actualText}=    Get Text    ${PH_results_${message}}
    Should Be Equal    ${actualText}    ${Tier_Message_Text}		

Get Todays Date
    ${todays_date}=    Get Current Date    result_format=%m/%d/%Y
    Set Global Variable    ${todays_date}

Verify contact data ${fieldName} validation error message on the ccs search screen page
    Wait Until Element is Visible    ${fld_PolicyHolderChat_${fieldName}_validationErrorMsg}    ${lTimeout}
    Scroll button or label into view    ${fld_PolicyHolderChat_${fieldName}_validationErrorMsg}
    ${actualText}    Get Text    ${fld_PolicyHolderChat_${fieldName}_validationErrorMsg}
    ${expectedText}    Convert To String    ${lbl_PolicyHolderChat_${fieldName}_validationErrorMsg_txt}
    Should Contain    ${actualText}    ${expectedText}

    