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
${tab_PolicyHolderChat_Policy_ConvVal}    xpath://div[@aria-label='Conv. Val']

## ConvVal ##
${tbl_PolicyHolderChat_Policy_ConvVal_sectionHeader}        xpath://h2[text()='General Info']
${tbl_PolicyHolderChat_Policy_ConvVal_sectionHeader_txt}    General Info
${btn_policyHolderChat_Policy_ConvVal_AssociateInfo}        xpath://div[text()='Associate Info']
${btn_policyHolderChat_Policy_ConvVal_PolicyInfo}        xpath://div[text()='Policy Info']
@{tbl_PolicyHolderChat_Policy_ConvValue_AssociateInfo_Values}       State code    Writing # 
@{tbl_PolicyHolderChat_Policy_ConvValue_PolicyInfo_Values}          Base Plan    Units    Occ CLS
@{tbl_PolicyHolderChat_Policy_ConvValue_PolicyInfoRider_Values}     Phase    Rider    Units 
${tbl_PolicyHolderChat_Policy_ConvValue_AssociateInfo_expandedRowFieldValues}   xpath:(//span[(text()='rowName')]//following-sibling::div)
${tbl_PolicyHolderChat_Policy_ConvValue_PolicyInfo_expandedRowFieldValues}   xpath:(//span[(text()='rowName')]//following-sibling::div)
${tbl_PolicyHolderChat_Policy_ConvValue_PolicyInfoRider_expandedRowFieldValues}    xpath://td[@data-attribute-name='rowName']/div/span

* Keywords
Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_ConvVal tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='ConvVal'
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_ConvVal_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_ConvVal_sectionHeader
        
        # check label headers
    END

Verify the correct ${paveChat} c360 info is displayed for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the AssociateInfo table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API AssociateInfo details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_ConvValue_AssociateInfo_Values}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Policy_ConvValue_AssociateInfo table
        END
    ELSE
        Do Nothing
    END

Verify the correct ${paveChat} c360 info is displayed for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the PolicyInfo table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API PolicyInfo details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_ConvValue_PolicyInfo_Values}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Policy_ConvValue_PolicyInfo table
        END
    ELSE
        Do Nothing
    END  

Verify the correct ${paveChat} c360 info is displayed for policyNumber ${policyNumber} and companyNumber ${companyNumber} in the PolicyInfoRider table
    Run Keyword    Get the ${paveChat} CCS availability time range ${ccsStartTime} ${ccsEndTime}
    IF    '${current_StartTime}'<'${current_DateTime}'<'${current_EndTime}'
        Run Keyword    Get API PolicyInfo details for policyNumber ${policyNumber} and companyNumber ${companyNumber}
        
        FOR    ${fieldValue}  IN  @{tbl_PolicyHolderChat_Policy_ConvValue_PolicyInfoRider_Values}
            ${apiField}    Replace String    ${fieldValue}    ${SPACE}    ${EMPTY}
            Run Keyword    Verify the UI ${fieldValue} field contains the ${apiField} API value in the ${paveChat} Policy_ConvValue_PolicyInfoRider table
        END
    ELSE
        Do Nothing
    END    

    