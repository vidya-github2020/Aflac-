###########################################################################
# Page objects are used as a central location to list all locators on a
# specific page and to code the basic steps to interact with them

# The page object should reference the Settings.resource file and each page
# object file should be listed in the Settings.resource file. This is a circular
# reference, but not one that will cause any problems
###########################################################################

* Settings
Resource    ${EXECDIR}${/}MaxChannel${/}Settings.resource

* Variables
${lbl_MaxChat_ccs_uName}        xpath://span[contains(@class,'workarea_header_titles') and contains(text(),'MaxChatSpecialist_ccs')]
${lbl_MaxChat_ccs_uName_txt}    MaxChatSpecialist_ccs

* Keywords

