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
${lbl_Agent_ccs_uName}          xpath://span[contains(@class,'workarea_header_titles') and contains(text(),'ModelChatSpecialist_AgentNI')]
${lbl_Agent_ccs_uName_txt}      ModelChatSpecialist_AgentNI

${lbl_Manager_ccs_uName}        xpath://span[contains(@class,'workarea_header_titles') and contains(text(),'Model Chat Supervisor')]
${lbl_Manager_ccs_uName_txt}    Model Chat Supervisor

${lbl_Claims_ccs_uName}         xpath://span[contains(@class,'workarea_header_titles') and contains(text(),'ClaimsSpecialist_AgentNI')]
${lbl_Claims_ccs_uName_txt}     ClaimsSpecialist_AgentNI

${lbl_General_ccs_uName}        xpath://span[contains(@class,'workarea_header_titles') and contains(text(),'GeneralSpecialist_AgentNI')]
${lbl_General_ccs_uName_txt}    GeneralSpecialist_AgentNI

${lbl_email_ccs_uName}          xpath://span[contains(@class,'workarea_header_titles') and contains(text(),'TestEf0031')]
${lbl_email_ccs_uName_txt}      TestEf0031 testEF0031

* Keywords

