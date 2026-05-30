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
${tab_AgentChat_AgentAssistSearch}    xpath://div[@aria-label='Agent Assist']



## Search Results Sections ##
## PolicyHolder Table ##
${fld_SearchAs_FirstName}        xpath://input[@data-test-id='PH-SearchStringFirstName' and contains(@name,'FirstName')]
${fld_SearchAs_LastName}         xpath://input[@data-test-id='PH-SearchStringLastName' and contains(@name,'LastName')]
${fld_SearchAs_SSN}              xpath://input[@data-test-id='PH-SearchStringSSN' and contains(@name,'SSN')]
${fld_SearchAs_PolicyNumber}     xpath://input[@data-test-id='PH-SearchStringPolicyNumber' and contains(@name,'PolicyNumber')]
${fld_SearchAs_DOB}              xpath://input[@data-test-id='PH-SearchStringDOB' and contains(@name,'DOB')]
${tbl_SearchResults_rowCollapseIcon}    xpath://table[contains(@pl_prop_class,'AFL-Ins-Data')]//tr[@pl_index='tableRowNumber']/td/span

@{tbl_AgentChat_AgentSearchResults_columnHeaderValues}    Agent Name    Writing Number    City    State    YOB    SSN
@{btn_AgentChat_AgentSearchResult_Checkbox}    AgentName    Writing Number    DOB    Address    CompanyNumber

${fld_SearchAs_ProviderNPI}      xpath://input[@name='$PpyWorkPage$pEntities$pSearchStringNPINumber']

* Keywords
##  PolicyHolder Table ##
Verify that the PolicyHolderChat search fields are displayed
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Verify the FirstName field is displayed on the ccs search interaction page
        Verify the LastName field is displayed on the ccs search interaction page
    ELSE
        Do Nothing
    END

#Verify that the Agent search results table is displayed
    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Wait for pega masking icon to complete

        FOR    ${fieldValue}  IN  @{tbl_AgentChat_AgentSearchResults_columnHeaderValues}
            Run Keyword    Verify that the AgentChat AccountSearchResults table contains the column header ${fieldValue}
        END
    ELSE
        Do Nothing
    END

In the ${paveChat} Agent Assist Search, search for ${searchByField} ${searchValue}
    Run Keyword    On the ${paveChat} ccs search interaction page search for the ${searchByField} ${searchValue}
    Run Keyword    Select all checkboxes and continue to the AgentAssistSearch c360 tabs



# Select all checkboxes in ${searchType} search results table
#     Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
#     IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
#         FOR    ${fieldValue}  IN  @{btn_AgentChat_${searchType}SearchResult_Checkbox}
#             Run Keyword    Select the ${fieldValue} checkbox on the AgentChat ccs search interaction page
#         END
#     ELSE
#         Do Nothing
#     END

##  Account Table ##
#Verify that the Account Search fields are displayed
#    Run Keyword    Get the AgentChat CCS availability time range ${ccsStartTime} ${ccsEndTime}
#    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
#        Verify the AccountName field is displayed on the ccs search interaction page
#        Verify the AccountNumber field is displayed on the ccs search interaction page
#    ELSE
#        Do Nothing
#    END


# Select all checkboxes and continue to the AgentChat c360 tabs
#     Expand row number 1 in the AgentSearchResults table in the AgentChat
#     Select all checkboxes in Agent search results table
#     Select the Continue button on the AgentChat ccs search interaction page


