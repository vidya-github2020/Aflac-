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

##Persons Table

${tab_AgentChat_Summary_Persons}                         xpath://div[@aria-label='Persons']
${tbl_AgentChat_Summary_Persons_sectionHeader}           xpath://h2[contains(@class,'header-title') and (text()='Persons')]
${tbl_AgentChat_Summary_Persons_sectionHeaderIcon}       xpath://div[@title='tableSection']//i[contains(@class,'icon-openclose')]
${tbl_AgentChat_Summary_Persons_columnHeaders}           xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Account-Persons-PersonList')]//th[@role='columnheader']
${btn_AgentChat_Summary_Persons_rowAuditCheckbox}        xpath://table[contains(@pl_prop_class,'AFL-Ins-Data-Account-Persons-PersonList')]//tr[@pl_index='tableRowNumber']//td//input
${tbl_AgentChat_Summary_Persons_rowHeaderFieldValues}    xpath://tr[@pl_index='rowNumber']//td[@data-attribute-name='rowName']//span
@{tbl_AgentChat_Summary_Persons_columnHeaderValues}      Role    Name    Writing#    Phone    Email
${btn_AgentChat_Summary_Persons_Writing#Lnk}             xpath://a[contains(@data-test-id,'2021060514053306656') and contains(text(),'agntWritingNo')]
${btn_AgentChat_Summary_Persons_CloseModal}              xpath://button[contains(@type,'button') and contains(text(),'Close')]


*** Keywords

