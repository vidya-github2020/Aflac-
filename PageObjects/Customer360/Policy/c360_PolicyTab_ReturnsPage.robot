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
${tab_PolicyHolderChat_Policy_Returns}    xpath://div[@aria-label='Returns']

## Returns ##
${tbl_PolicyHolderChat_Policy_Returns_sectionHeader}        xpath://h2[text()='Returns']
${tbl_PolicyHolderChat_Policy_Returns_sectionHeader_txt}    Returns
${btn_PolicyHolderChat_Returns_rowAuditCheckbox}    xpath:(//span[contains(@data-ui-meta,'AuditHistory')]//input[contains(@onchange,'Summary Info')])[last()]


* Keywords
Verify that the PolicyHolderChat ${tableName} table is displayed on the Policy_Returns tab
    Wait for pega masking icon to complete
    IF    '${tableName}'=='Returns'
        Wait Until Element Is Visible    ${tbl_PolicyHolderChat_Policy_Returns_sectionHeader}     timeout=${mTimeout}
        Verify that the label text is displayed    tbl_PolicyHolderChat_Policy_Returns_sectionHeader
        
        # Check for labels
    END
